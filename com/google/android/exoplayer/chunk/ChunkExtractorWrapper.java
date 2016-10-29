package com.google.android.exoplayer.chunk;

import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.drm.DrmInitData;
import com.google.android.exoplayer.extractor.Extractor;
import com.google.android.exoplayer.extractor.ExtractorInput;
import com.google.android.exoplayer.extractor.ExtractorOutput;
import com.google.android.exoplayer.extractor.SeekMap;
import com.google.android.exoplayer.extractor.TrackOutput;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.ParsableByteArray;
import java.io.IOException;

/* compiled from: Twttr */
public class ChunkExtractorWrapper implements ExtractorOutput, TrackOutput {
    private final Extractor extractor;
    private boolean extractorInitialized;
    private SingleTrackOutput output;
    private boolean seenTrack;

    /* compiled from: Twttr */
    public interface SingleTrackOutput extends TrackOutput {
        void drmInitData(DrmInitData drmInitData);

        void seekMap(SeekMap seekMap);
    }

    public ChunkExtractorWrapper(Extractor extractor) {
        this.extractor = extractor;
    }

    public void init(SingleTrackOutput singleTrackOutput) {
        this.output = singleTrackOutput;
        if (this.extractorInitialized) {
            this.extractor.seek();
            return;
        }
        this.extractor.init(this);
        this.extractorInitialized = true;
    }

    public int read(ExtractorInput extractorInput) throws IOException, InterruptedException {
        boolean z = true;
        int read = this.extractor.read(extractorInput, null);
        if (read == 1) {
            z = false;
        }
        Assertions.checkState(z);
        return read;
    }

    public TrackOutput track(int i) {
        Assertions.checkState(!this.seenTrack);
        this.seenTrack = true;
        return this;
    }

    public void endTracks() {
        Assertions.checkState(this.seenTrack);
    }

    public void seekMap(SeekMap seekMap) {
        this.output.seekMap(seekMap);
    }

    public void drmInitData(DrmInitData drmInitData) {
        this.output.drmInitData(drmInitData);
    }

    public void format(MediaFormat mediaFormat) {
        this.output.format(mediaFormat);
    }

    public int sampleData(ExtractorInput extractorInput, int i, boolean z) throws IOException, InterruptedException {
        return this.output.sampleData(extractorInput, i, z);
    }

    public void sampleData(ParsableByteArray parsableByteArray, int i) {
        this.output.sampleData(parsableByteArray, i);
    }

    public void sampleMetadata(long j, int i, int i2, int i3, byte[] bArr) {
        this.output.sampleMetadata(j, i, i2, i3, bArr);
    }
}
