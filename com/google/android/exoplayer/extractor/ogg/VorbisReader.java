package com.google.android.exoplayer.extractor.ogg;

import com.google.android.exoplayer.C;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.extractor.ExtractorInput;
import com.google.android.exoplayer.extractor.PositionHolder;
import com.google.android.exoplayer.extractor.SeekMap;
import com.google.android.exoplayer.extractor.ogg.VorbisUtil.CommentHeader;
import com.google.android.exoplayer.extractor.ogg.VorbisUtil.Mode;
import com.google.android.exoplayer.extractor.ogg.VorbisUtil.VorbisIdHeader;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.ParsableByteArray;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
final class VorbisReader extends StreamReader implements SeekMap {
    private static final long LARGEST_EXPECTED_PAGE_SIZE = 8000;
    private long audioStartPosition;
    private CommentHeader commentHeader;
    private long duration;
    private long elapsedSamples;
    private long inputLength;
    private final OggSeeker oggSeeker;
    private int previousPacketBlockSize;
    private boolean seenFirstAudioPacket;
    private long targetGranule;
    private long totalSamples;
    private VorbisIdHeader vorbisIdHeader;
    private VorbisSetup vorbisSetup;

    /* compiled from: Twttr */
    final class VorbisSetup {
        public final CommentHeader commentHeader;
        public final int iLogModes;
        public final VorbisIdHeader idHeader;
        public final Mode[] modes;
        public final byte[] setupHeaderData;

        public VorbisSetup(VorbisIdHeader vorbisIdHeader, CommentHeader commentHeader, byte[] bArr, Mode[] modeArr, int i) {
            this.idHeader = vorbisIdHeader;
            this.commentHeader = commentHeader;
            this.setupHeaderData = bArr;
            this.modes = modeArr;
            this.iLogModes = i;
        }
    }

    VorbisReader() {
        this.oggSeeker = new OggSeeker();
        this.targetGranule = -1;
    }

    static boolean verifyBitstreamType(ParsableByteArray parsableByteArray) {
        try {
            return VorbisUtil.verifyVorbisHeaderCapturePattern(1, parsableByteArray, true);
        } catch (ParserException e) {
            return false;
        }
    }

    public void seek() {
        super.seek();
        this.previousPacketBlockSize = 0;
        this.elapsedSamples = 0;
        this.seenFirstAudioPacket = false;
    }

    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException, InterruptedException {
        long j;
        if (this.totalSamples == 0) {
            if (this.vorbisSetup == null) {
                this.inputLength = extractorInput.getLength();
                this.vorbisSetup = readSetupHeaders(extractorInput, this.scratch);
                this.audioStartPosition = extractorInput.getPosition();
                this.extractorOutput.seekMap(this);
                if (this.inputLength != -1) {
                    positionHolder.position = Math.max(0, extractorInput.getLength() - LARGEST_EXPECTED_PAGE_SIZE);
                    return 1;
                }
            }
            this.totalSamples = this.inputLength == -1 ? -1 : this.oggParser.readGranuleOfLastPage(extractorInput);
            List arrayList = new ArrayList();
            arrayList.add(this.vorbisSetup.idHeader.data);
            arrayList.add(this.vorbisSetup.setupHeaderData);
            if (this.inputLength == -1) {
                j = -1;
            } else {
                j = (this.totalSamples * C.MICROS_PER_SECOND) / this.vorbisSetup.idHeader.sampleRate;
            }
            this.duration = j;
            this.trackOutput.format(MediaFormat.createAudioFormat(null, MimeTypes.AUDIO_VORBIS, this.vorbisSetup.idHeader.bitrateNominal, 65025, this.duration, this.vorbisSetup.idHeader.channels, (int) this.vorbisSetup.idHeader.sampleRate, arrayList, null));
            if (this.inputLength != -1) {
                this.oggSeeker.setup(this.inputLength - this.audioStartPosition, this.totalSamples);
                positionHolder.position = this.audioStartPosition;
                return 1;
            }
        }
        if (!this.seenFirstAudioPacket && this.targetGranule > -1) {
            OggUtil.skipToNextPage(extractorInput);
            j = this.oggSeeker.getNextSeekPosition(this.targetGranule, extractorInput);
            if (j != -1) {
                positionHolder.position = j;
                return 1;
            }
            this.elapsedSamples = this.oggParser.skipToPageOfGranule(extractorInput, this.targetGranule);
            this.previousPacketBlockSize = this.vorbisIdHeader.blockSize0;
            this.seenFirstAudioPacket = true;
        }
        if (!this.oggParser.readPacket(extractorInput, this.scratch)) {
            return -1;
        }
        if ((this.scratch.data[0] & 1) != 1) {
            int decodeBlockSize = decodeBlockSize(this.scratch.data[0], this.vorbisSetup);
            int i = this.seenFirstAudioPacket ? (this.previousPacketBlockSize + decodeBlockSize) / 4 : 0;
            if (this.elapsedSamples + ((long) i) >= this.targetGranule) {
                appendNumberOfSamples(this.scratch, (long) i);
                long j2 = (this.elapsedSamples * C.MICROS_PER_SECOND) / this.vorbisSetup.idHeader.sampleRate;
                this.trackOutput.sampleData(this.scratch, this.scratch.limit());
                this.trackOutput.sampleMetadata(j2, 1, this.scratch.limit(), 0, null);
                this.targetGranule = -1;
            }
            this.seenFirstAudioPacket = true;
            this.elapsedSamples = ((long) i) + this.elapsedSamples;
            this.previousPacketBlockSize = decodeBlockSize;
        }
        this.scratch.reset();
        return 0;
    }

    VorbisSetup readSetupHeaders(ExtractorInput extractorInput, ParsableByteArray parsableByteArray) throws IOException, InterruptedException {
        if (this.vorbisIdHeader == null) {
            this.oggParser.readPacket(extractorInput, parsableByteArray);
            this.vorbisIdHeader = VorbisUtil.readVorbisIdentificationHeader(parsableByteArray);
            parsableByteArray.reset();
        }
        if (this.commentHeader == null) {
            this.oggParser.readPacket(extractorInput, parsableByteArray);
            this.commentHeader = VorbisUtil.readVorbisCommentHeader(parsableByteArray);
            parsableByteArray.reset();
        }
        this.oggParser.readPacket(extractorInput, parsableByteArray);
        Object obj = new byte[parsableByteArray.limit()];
        System.arraycopy(parsableByteArray.data, 0, obj, 0, parsableByteArray.limit());
        Mode[] readVorbisModes = VorbisUtil.readVorbisModes(parsableByteArray, this.vorbisIdHeader.channels);
        int iLog = VorbisUtil.iLog(readVorbisModes.length - 1);
        parsableByteArray.reset();
        return new VorbisSetup(this.vorbisIdHeader, this.commentHeader, obj, readVorbisModes, iLog);
    }

    static void appendNumberOfSamples(ParsableByteArray parsableByteArray, long j) {
        parsableByteArray.setLimit(parsableByteArray.limit() + 4);
        parsableByteArray.data[parsableByteArray.limit() - 4] = (byte) ((int) (j & 255));
        parsableByteArray.data[parsableByteArray.limit() - 3] = (byte) ((int) ((j >>> 8) & 255));
        parsableByteArray.data[parsableByteArray.limit() - 2] = (byte) ((int) ((j >>> 16) & 255));
        parsableByteArray.data[parsableByteArray.limit() - 1] = (byte) ((int) ((j >>> 24) & 255));
    }

    private static int decodeBlockSize(byte b, VorbisSetup vorbisSetup) {
        if (vorbisSetup.modes[OggUtil.readBits(b, vorbisSetup.iLogModes, 1)].blockFlag) {
            return vorbisSetup.idHeader.blockSize1;
        }
        return vorbisSetup.idHeader.blockSize0;
    }

    public boolean isSeekable() {
        return (this.vorbisSetup == null || this.inputLength == -1) ? false : true;
    }

    public long getPosition(long j) {
        if (j == 0) {
            this.targetGranule = -1;
            return this.audioStartPosition;
        }
        this.targetGranule = (this.vorbisSetup.idHeader.sampleRate * j) / C.MICROS_PER_SECOND;
        return Math.max(this.audioStartPosition, (((this.inputLength - this.audioStartPosition) * j) / this.duration) - 4000);
    }
}
