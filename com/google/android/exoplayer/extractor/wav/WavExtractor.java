package com.google.android.exoplayer.extractor.wav;

import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.extractor.Extractor;
import com.google.android.exoplayer.extractor.ExtractorInput;
import com.google.android.exoplayer.extractor.ExtractorOutput;
import com.google.android.exoplayer.extractor.PositionHolder;
import com.google.android.exoplayer.extractor.SeekMap;
import com.google.android.exoplayer.extractor.TrackOutput;
import com.google.android.exoplayer.util.MimeTypes;
import java.io.IOException;

/* compiled from: Twttr */
public final class WavExtractor implements Extractor, SeekMap {
    private static final int MAX_INPUT_SIZE = 32768;
    private int bytesPerFrame;
    private ExtractorOutput extractorOutput;
    private int pendingBytes;
    private TrackOutput trackOutput;
    private WavHeader wavHeader;

    public boolean sniff(ExtractorInput extractorInput) throws IOException, InterruptedException {
        return WavHeaderReader.peek(extractorInput) != null;
    }

    public void init(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
        this.trackOutput = extractorOutput.track(0);
        this.wavHeader = null;
        extractorOutput.endTracks();
    }

    public void seek() {
        this.pendingBytes = 0;
    }

    public void release() {
    }

    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException, InterruptedException {
        if (this.wavHeader == null) {
            this.wavHeader = WavHeaderReader.peek(extractorInput);
            if (this.wavHeader == null) {
                throw new ParserException("Error initializing WavHeader. Did you sniff first?");
            }
            this.bytesPerFrame = this.wavHeader.getBytesPerFrame();
        }
        if (!this.wavHeader.hasDataBounds()) {
            WavHeaderReader.skipToData(extractorInput, this.wavHeader);
            this.trackOutput.format(MediaFormat.createAudioFormat(null, MimeTypes.AUDIO_RAW, this.wavHeader.getBitrate(), MAX_INPUT_SIZE, this.wavHeader.getDurationUs(), this.wavHeader.getNumChannels(), this.wavHeader.getSampleRateHz(), null, null, this.wavHeader.getEncoding()));
            this.extractorOutput.seekMap(this);
        }
        int sampleData = this.trackOutput.sampleData(extractorInput, MAX_INPUT_SIZE - this.pendingBytes, true);
        if (sampleData != -1) {
            this.pendingBytes += sampleData;
        }
        int i = (this.pendingBytes / this.bytesPerFrame) * this.bytesPerFrame;
        if (i > 0) {
            long position = extractorInput.getPosition() - ((long) this.pendingBytes);
            this.pendingBytes -= i;
            this.trackOutput.sampleMetadata(this.wavHeader.getTimeUs(position), 1, i, this.pendingBytes, null);
        }
        if (sampleData == -1) {
            return -1;
        }
        return 0;
    }

    public boolean isSeekable() {
        return true;
    }

    public long getPosition(long j) {
        return this.wavHeader.getPosition(j);
    }
}
