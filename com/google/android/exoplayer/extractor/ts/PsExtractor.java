package com.google.android.exoplayer.extractor.ts;

import android.util.SparseArray;
import com.google.android.exoplayer.extractor.Extractor;
import com.google.android.exoplayer.extractor.ExtractorInput;
import com.google.android.exoplayer.extractor.ExtractorOutput;
import com.google.android.exoplayer.extractor.PositionHolder;
import com.google.android.exoplayer.extractor.SeekMap;
import com.google.android.exoplayer.util.MpegAudioHeader;
import com.google.android.exoplayer.util.NalUnitUtil;
import com.google.android.exoplayer.util.ParsableBitArray;
import com.google.android.exoplayer.util.ParsableByteArray;
import java.io.IOException;

/* compiled from: Twttr */
public final class PsExtractor implements Extractor {
    public static final int AUDIO_STREAM = 192;
    public static final int AUDIO_STREAM_MASK = 224;
    private static final long MAX_SEARCH_LENGTH = 1048576;
    private static final int MPEG_PROGRAM_END_CODE = 441;
    private static final int PACKET_START_CODE_PREFIX = 1;
    private static final int PACK_START_CODE = 442;
    public static final int PRIVATE_STREAM_1 = 189;
    private static final int SYSTEM_HEADER_START_CODE = 443;
    public static final int VIDEO_STREAM = 224;
    public static final int VIDEO_STREAM_MASK = 240;
    private boolean foundAllTracks;
    private boolean foundAudioTrack;
    private boolean foundVideoTrack;
    private ExtractorOutput output;
    private final ParsableByteArray psPacketBuffer;
    private final SparseArray<PesReader> psPayloadReaders;
    private final PtsTimestampAdjuster ptsTimestampAdjuster;

    /* compiled from: Twttr */
    final class PesReader {
        private static final int PES_SCRATCH_SIZE = 64;
        private boolean dtsFlag;
        private int extendedHeaderLength;
        private final ElementaryStreamReader pesPayloadReader;
        private final ParsableBitArray pesScratch;
        private boolean ptsFlag;
        private final PtsTimestampAdjuster ptsTimestampAdjuster;
        private boolean seenFirstDts;
        private long timeUs;

        public PesReader(ElementaryStreamReader elementaryStreamReader, PtsTimestampAdjuster ptsTimestampAdjuster) {
            this.pesPayloadReader = elementaryStreamReader;
            this.ptsTimestampAdjuster = ptsTimestampAdjuster;
            this.pesScratch = new ParsableBitArray(new byte[PES_SCRATCH_SIZE]);
        }

        public void seek() {
            this.seenFirstDts = false;
            this.pesPayloadReader.seek();
        }

        public void consume(ParsableByteArray parsableByteArray, ExtractorOutput extractorOutput) {
            parsableByteArray.readBytes(this.pesScratch.data, 0, 3);
            this.pesScratch.setPosition(0);
            parseHeader();
            parsableByteArray.readBytes(this.pesScratch.data, 0, this.extendedHeaderLength);
            this.pesScratch.setPosition(0);
            parseHeaderExtension();
            this.pesPayloadReader.packetStarted(this.timeUs, true);
            this.pesPayloadReader.consume(parsableByteArray);
            this.pesPayloadReader.packetFinished();
        }

        private void parseHeader() {
            this.pesScratch.skipBits(8);
            this.ptsFlag = this.pesScratch.readBit();
            this.dtsFlag = this.pesScratch.readBit();
            this.pesScratch.skipBits(6);
            this.extendedHeaderLength = this.pesScratch.readBits(8);
        }

        private void parseHeaderExtension() {
            this.timeUs = 0;
            if (this.ptsFlag) {
                this.pesScratch.skipBits(4);
                long readBits = ((long) this.pesScratch.readBits(3)) << 30;
                this.pesScratch.skipBits(PsExtractor.PACKET_START_CODE_PREFIX);
                readBits |= (long) (this.pesScratch.readBits(15) << 15);
                this.pesScratch.skipBits(PsExtractor.PACKET_START_CODE_PREFIX);
                readBits |= (long) this.pesScratch.readBits(15);
                this.pesScratch.skipBits(PsExtractor.PACKET_START_CODE_PREFIX);
                if (!this.seenFirstDts && this.dtsFlag) {
                    this.pesScratch.skipBits(4);
                    long readBits2 = ((long) this.pesScratch.readBits(3)) << 30;
                    this.pesScratch.skipBits(PsExtractor.PACKET_START_CODE_PREFIX);
                    readBits2 |= (long) (this.pesScratch.readBits(15) << 15);
                    this.pesScratch.skipBits(PsExtractor.PACKET_START_CODE_PREFIX);
                    readBits2 |= (long) this.pesScratch.readBits(15);
                    this.pesScratch.skipBits(PsExtractor.PACKET_START_CODE_PREFIX);
                    this.ptsTimestampAdjuster.adjustTimestamp(readBits2);
                    this.seenFirstDts = true;
                }
                this.timeUs = this.ptsTimestampAdjuster.adjustTimestamp(readBits);
            }
        }
    }

    public PsExtractor() {
        this(new PtsTimestampAdjuster(0));
    }

    public PsExtractor(PtsTimestampAdjuster ptsTimestampAdjuster) {
        this.ptsTimestampAdjuster = ptsTimestampAdjuster;
        this.psPacketBuffer = new ParsableByteArray((int) MpegAudioHeader.MAX_FRAME_SIZE_BYTES);
        this.psPayloadReaders = new SparseArray();
    }

    public boolean sniff(ExtractorInput extractorInput) throws IOException, InterruptedException {
        boolean z = true;
        byte[] bArr = new byte[14];
        extractorInput.peekFully(bArr, 0, 14);
        if (PACK_START_CODE != (((((bArr[0] & NalUnitUtil.EXTENDED_SAR) << 24) | ((bArr[PACKET_START_CODE_PREFIX] & NalUnitUtil.EXTENDED_SAR) << 16)) | ((bArr[2] & NalUnitUtil.EXTENDED_SAR) << 8)) | (bArr[3] & NalUnitUtil.EXTENDED_SAR)) || (bArr[4] & 196) != 68 || (bArr[6] & 4) != 4 || (bArr[8] & 4) != 4 || (bArr[9] & PACKET_START_CODE_PREFIX) != PACKET_START_CODE_PREFIX || (bArr[12] & 3) != 3) {
            return false;
        }
        extractorInput.advancePeekPosition(bArr[13] & 7);
        extractorInput.peekFully(bArr, 0, 3);
        if (PACKET_START_CODE_PREFIX != ((bArr[2] & NalUnitUtil.EXTENDED_SAR) | (((bArr[0] & NalUnitUtil.EXTENDED_SAR) << 16) | ((bArr[PACKET_START_CODE_PREFIX] & NalUnitUtil.EXTENDED_SAR) << 8)))) {
            z = false;
        }
        return z;
    }

    public void init(ExtractorOutput extractorOutput) {
        this.output = extractorOutput;
        extractorOutput.seekMap(SeekMap.UNSEEKABLE);
    }

    public void seek() {
        this.ptsTimestampAdjuster.reset();
        for (int i = 0; i < this.psPayloadReaders.size(); i += PACKET_START_CODE_PREFIX) {
            ((PesReader) this.psPayloadReaders.valueAt(i)).seek();
        }
    }

    public void release() {
    }

    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException, InterruptedException {
        if (!extractorInput.peekFully(this.psPacketBuffer.data, 0, 4, true)) {
            return -1;
        }
        this.psPacketBuffer.setPosition(0);
        int readInt = this.psPacketBuffer.readInt();
        if (readInt == MPEG_PROGRAM_END_CODE) {
            return -1;
        }
        if (readInt == PACK_START_CODE) {
            extractorInput.peekFully(this.psPacketBuffer.data, 0, 10);
            this.psPacketBuffer.setPosition(0);
            this.psPacketBuffer.skipBytes(9);
            extractorInput.skipFully((this.psPacketBuffer.readUnsignedByte() & 7) + 14);
            return 0;
        } else if (readInt == SYSTEM_HEADER_START_CODE) {
            extractorInput.peekFully(this.psPacketBuffer.data, 0, 2);
            this.psPacketBuffer.setPosition(0);
            extractorInput.skipFully(this.psPacketBuffer.readUnsignedShort() + 6);
            return 0;
        } else if (((readInt & -256) >> 8) != PACKET_START_CODE_PREFIX) {
            extractorInput.skipFully(PACKET_START_CODE_PREFIX);
            return 0;
        } else {
            int i = readInt & NalUnitUtil.EXTENDED_SAR;
            PesReader pesReader = (PesReader) this.psPayloadReaders.get(i);
            if (!this.foundAllTracks) {
                if (pesReader == null) {
                    ElementaryStreamReader elementaryStreamReader = null;
                    if (!this.foundAudioTrack && i == PRIVATE_STREAM_1) {
                        elementaryStreamReader = new Ac3Reader(this.output.track(i), false);
                        this.foundAudioTrack = true;
                    } else if (!this.foundAudioTrack && (i & VIDEO_STREAM) == AUDIO_STREAM) {
                        elementaryStreamReader = new MpegAudioReader(this.output.track(i));
                        this.foundAudioTrack = true;
                    } else if (!this.foundVideoTrack && (i & VIDEO_STREAM_MASK) == VIDEO_STREAM) {
                        elementaryStreamReader = new H262Reader(this.output.track(i));
                        this.foundVideoTrack = true;
                    }
                    if (elementaryStreamReader != null) {
                        pesReader = new PesReader(elementaryStreamReader, this.ptsTimestampAdjuster);
                        this.psPayloadReaders.put(i, pesReader);
                    }
                }
                if ((this.foundAudioTrack && this.foundVideoTrack) || extractorInput.getPosition() > MAX_SEARCH_LENGTH) {
                    this.foundAllTracks = true;
                    this.output.endTracks();
                }
            }
            extractorInput.peekFully(this.psPacketBuffer.data, 0, 2);
            this.psPacketBuffer.setPosition(0);
            readInt = this.psPacketBuffer.readUnsignedShort() + 6;
            if (pesReader == null) {
                extractorInput.skipFully(readInt);
            } else {
                if (this.psPacketBuffer.capacity() < readInt) {
                    this.psPacketBuffer.reset(new byte[readInt], readInt);
                }
                extractorInput.readFully(this.psPacketBuffer.data, 0, readInt);
                this.psPacketBuffer.setPosition(6);
                this.psPacketBuffer.setLimit(readInt);
                pesReader.consume(this.psPacketBuffer, this.output);
                this.psPacketBuffer.setLimit(this.psPacketBuffer.capacity());
            }
            return 0;
        }
    }
}
