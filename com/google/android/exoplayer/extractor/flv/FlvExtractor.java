package com.google.android.exoplayer.extractor.flv;

import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import com.google.android.exoplayer.extractor.Extractor;
import com.google.android.exoplayer.extractor.ExtractorInput;
import com.google.android.exoplayer.extractor.ExtractorOutput;
import com.google.android.exoplayer.extractor.PositionHolder;
import com.google.android.exoplayer.extractor.SeekMap;
import com.google.android.exoplayer.util.ParsableByteArray;
import com.google.android.exoplayer.util.Util;
import java.io.IOException;

/* compiled from: Twttr */
public final class FlvExtractor implements Extractor, SeekMap {
    private static final int FLV_HEADER_SIZE = 9;
    private static final int FLV_TAG;
    private static final int FLV_TAG_HEADER_SIZE = 11;
    private static final int STATE_READING_FLV_HEADER = 1;
    private static final int STATE_READING_TAG_DATA = 4;
    private static final int STATE_READING_TAG_HEADER = 3;
    private static final int STATE_SKIPPING_TO_TAG_HEADER = 2;
    private static final int TAG_TYPE_AUDIO = 8;
    private static final int TAG_TYPE_SCRIPT_DATA = 18;
    private static final int TAG_TYPE_VIDEO = 9;
    private AudioTagPayloadReader audioReader;
    private int bytesToNextTagHeader;
    private ExtractorOutput extractorOutput;
    private final ParsableByteArray headerBuffer;
    private ScriptTagPayloadReader metadataReader;
    private int parserState;
    private final ParsableByteArray scratch;
    private final ParsableByteArray tagData;
    public int tagDataSize;
    private final ParsableByteArray tagHeaderBuffer;
    public long tagTimestampUs;
    public int tagType;
    private VideoTagPayloadReader videoReader;

    static {
        FLV_TAG = Util.getIntegerCodeForString("FLV");
    }

    public FlvExtractor() {
        this.scratch = new ParsableByteArray((int) STATE_READING_TAG_DATA);
        this.headerBuffer = new ParsableByteArray((int) TAG_TYPE_VIDEO);
        this.tagHeaderBuffer = new ParsableByteArray((int) FLV_TAG_HEADER_SIZE);
        this.tagData = new ParsableByteArray();
        this.parserState = STATE_READING_FLV_HEADER;
    }

    public boolean sniff(ExtractorInput extractorInput) throws IOException, InterruptedException {
        extractorInput.peekFully(this.scratch.data, FLV_TAG, STATE_READING_TAG_HEADER);
        this.scratch.setPosition(FLV_TAG);
        if (this.scratch.readUnsignedInt24() != FLV_TAG) {
            return false;
        }
        extractorInput.peekFully(this.scratch.data, FLV_TAG, STATE_SKIPPING_TO_TAG_HEADER);
        this.scratch.setPosition(FLV_TAG);
        if ((this.scratch.readUnsignedShort() & Callback.DEFAULT_SWIPE_ANIMATION_DURATION) != 0) {
            return false;
        }
        extractorInput.peekFully(this.scratch.data, FLV_TAG, STATE_READING_TAG_DATA);
        this.scratch.setPosition(FLV_TAG);
        int readInt = this.scratch.readInt();
        extractorInput.resetPeekPosition();
        extractorInput.advancePeekPosition(readInt);
        extractorInput.peekFully(this.scratch.data, FLV_TAG, STATE_READING_TAG_DATA);
        this.scratch.setPosition(FLV_TAG);
        if (this.scratch.readInt() == 0) {
            return true;
        }
        return false;
    }

    public void init(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
    }

    public void seek() {
        this.parserState = STATE_READING_FLV_HEADER;
        this.bytesToNextTagHeader = FLV_TAG;
    }

    public void release() {
    }

    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException, InterruptedException {
        while (true) {
            switch (this.parserState) {
                case STATE_READING_FLV_HEADER /*1*/:
                    if (readFlvHeader(extractorInput)) {
                        break;
                    }
                    return -1;
                case STATE_SKIPPING_TO_TAG_HEADER /*2*/:
                    skipToTagHeader(extractorInput);
                    break;
                case STATE_READING_TAG_HEADER /*3*/:
                    if (readTagHeader(extractorInput)) {
                        break;
                    }
                    return -1;
                case STATE_READING_TAG_DATA /*4*/:
                    if (!readTagData(extractorInput)) {
                        break;
                    }
                    return FLV_TAG;
                default:
                    break;
            }
        }
    }

    private boolean readFlvHeader(ExtractorInput extractorInput) throws IOException, InterruptedException {
        boolean z = false;
        if (!extractorInput.readFully(this.headerBuffer.data, FLV_TAG, TAG_TYPE_VIDEO, true)) {
            return false;
        }
        this.headerBuffer.setPosition(FLV_TAG);
        this.headerBuffer.skipBytes(STATE_READING_TAG_DATA);
        int readUnsignedByte = this.headerBuffer.readUnsignedByte();
        boolean z2 = (readUnsignedByte & STATE_READING_TAG_DATA) != 0;
        if ((readUnsignedByte & STATE_READING_FLV_HEADER) != 0) {
            z = true;
        }
        if (z2 && this.audioReader == null) {
            this.audioReader = new AudioTagPayloadReader(this.extractorOutput.track(TAG_TYPE_AUDIO));
        }
        if (z && this.videoReader == null) {
            this.videoReader = new VideoTagPayloadReader(this.extractorOutput.track(TAG_TYPE_VIDEO));
        }
        if (this.metadataReader == null) {
            this.metadataReader = new ScriptTagPayloadReader(null);
        }
        this.extractorOutput.endTracks();
        this.extractorOutput.seekMap(this);
        this.bytesToNextTagHeader = (this.headerBuffer.readInt() - 9) + STATE_READING_TAG_DATA;
        this.parserState = STATE_SKIPPING_TO_TAG_HEADER;
        return true;
    }

    private void skipToTagHeader(ExtractorInput extractorInput) throws IOException, InterruptedException {
        extractorInput.skipFully(this.bytesToNextTagHeader);
        this.bytesToNextTagHeader = FLV_TAG;
        this.parserState = STATE_READING_TAG_HEADER;
    }

    private boolean readTagHeader(ExtractorInput extractorInput) throws IOException, InterruptedException {
        if (!extractorInput.readFully(this.tagHeaderBuffer.data, FLV_TAG, FLV_TAG_HEADER_SIZE, true)) {
            return false;
        }
        this.tagHeaderBuffer.setPosition(FLV_TAG);
        this.tagType = this.tagHeaderBuffer.readUnsignedByte();
        this.tagDataSize = this.tagHeaderBuffer.readUnsignedInt24();
        this.tagTimestampUs = (long) this.tagHeaderBuffer.readUnsignedInt24();
        this.tagTimestampUs = (((long) (this.tagHeaderBuffer.readUnsignedByte() << 24)) | this.tagTimestampUs) * 1000;
        this.tagHeaderBuffer.skipBytes(STATE_READING_TAG_HEADER);
        this.parserState = STATE_READING_TAG_DATA;
        return true;
    }

    private boolean readTagData(ExtractorInput extractorInput) throws IOException, InterruptedException {
        boolean z = true;
        if (this.tagType == TAG_TYPE_AUDIO && this.audioReader != null) {
            this.audioReader.consume(prepareTagData(extractorInput), this.tagTimestampUs);
        } else if (this.tagType == TAG_TYPE_VIDEO && this.videoReader != null) {
            this.videoReader.consume(prepareTagData(extractorInput), this.tagTimestampUs);
        } else if (this.tagType != TAG_TYPE_SCRIPT_DATA || this.metadataReader == null) {
            extractorInput.skipFully(this.tagDataSize);
            z = false;
        } else {
            this.metadataReader.consume(prepareTagData(extractorInput), this.tagTimestampUs);
            if (this.metadataReader.getDurationUs() != -1) {
                if (this.audioReader != null) {
                    this.audioReader.setDurationUs(this.metadataReader.getDurationUs());
                }
                if (this.videoReader != null) {
                    this.videoReader.setDurationUs(this.metadataReader.getDurationUs());
                }
            }
        }
        this.bytesToNextTagHeader = STATE_READING_TAG_DATA;
        this.parserState = STATE_SKIPPING_TO_TAG_HEADER;
        return z;
    }

    private ParsableByteArray prepareTagData(ExtractorInput extractorInput) throws IOException, InterruptedException {
        if (this.tagDataSize > this.tagData.capacity()) {
            this.tagData.reset(new byte[Math.max(this.tagData.capacity() * STATE_SKIPPING_TO_TAG_HEADER, this.tagDataSize)], FLV_TAG);
        } else {
            this.tagData.setPosition(FLV_TAG);
        }
        this.tagData.setLimit(this.tagDataSize);
        extractorInput.readFully(this.tagData.data, FLV_TAG, this.tagDataSize);
        return this.tagData;
    }

    public boolean isSeekable() {
        return false;
    }

    public long getPosition(long j) {
        return 0;
    }
}
