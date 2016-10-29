package com.google.android.exoplayer.hls;

import android.util.SparseArray;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.SampleHolder;
import com.google.android.exoplayer.chunk.Format;
import com.google.android.exoplayer.drm.DrmInitData;
import com.google.android.exoplayer.extractor.DefaultTrackOutput;
import com.google.android.exoplayer.extractor.Extractor;
import com.google.android.exoplayer.extractor.ExtractorInput;
import com.google.android.exoplayer.extractor.ExtractorOutput;
import com.google.android.exoplayer.extractor.SeekMap;
import com.google.android.exoplayer.extractor.TrackOutput;
import com.google.android.exoplayer.upstream.Allocator;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.MimeTypes;
import java.io.IOException;

/* compiled from: Twttr */
public final class HlsExtractorWrapper implements ExtractorOutput {
    private final int adaptiveMaxHeight;
    private final int adaptiveMaxWidth;
    private Allocator allocator;
    private final Extractor extractor;
    public final Format format;
    private boolean prepared;
    private MediaFormat[] sampleQueueFormats;
    private final SparseArray<DefaultTrackOutput> sampleQueues;
    private final boolean shouldSpliceIn;
    private boolean spliceConfigured;
    public final long startTimeUs;
    private volatile boolean tracksBuilt;
    public final int trigger;

    public HlsExtractorWrapper(int i, Format format, long j, Extractor extractor, boolean z, int i2, int i3) {
        this.trigger = i;
        this.format = format;
        this.startTimeUs = j;
        this.extractor = extractor;
        this.shouldSpliceIn = z;
        this.adaptiveMaxWidth = i2;
        this.adaptiveMaxHeight = i3;
        this.sampleQueues = new SparseArray();
    }

    public void init(Allocator allocator) {
        this.allocator = allocator;
        this.extractor.init(this);
    }

    public boolean isPrepared() {
        int i = 0;
        if (!this.prepared && this.tracksBuilt) {
            for (int i2 = 0; i2 < this.sampleQueues.size(); i2++) {
                if (!((DefaultTrackOutput) this.sampleQueues.valueAt(i2)).hasFormat()) {
                    return false;
                }
            }
            this.prepared = true;
            this.sampleQueueFormats = new MediaFormat[this.sampleQueues.size()];
            while (i < this.sampleQueueFormats.length) {
                MediaFormat format = ((DefaultTrackOutput) this.sampleQueues.valueAt(i)).getFormat();
                if (MimeTypes.isVideo(format.mimeType) && !(this.adaptiveMaxWidth == -1 && this.adaptiveMaxHeight == -1)) {
                    format = format.copyWithMaxVideoDimensions(this.adaptiveMaxWidth, this.adaptiveMaxHeight);
                }
                this.sampleQueueFormats[i] = format;
                i++;
            }
        }
        return this.prepared;
    }

    public void clear() {
        for (int i = 0; i < this.sampleQueues.size(); i++) {
            ((DefaultTrackOutput) this.sampleQueues.valueAt(i)).clear();
        }
    }

    public long getLargestParsedTimestampUs() {
        long j = Long.MIN_VALUE;
        for (int i = 0; i < this.sampleQueues.size(); i++) {
            j = Math.max(j, ((DefaultTrackOutput) this.sampleQueues.valueAt(i)).getLargestParsedTimestampUs());
        }
        return j;
    }

    public final void configureSpliceTo(HlsExtractorWrapper hlsExtractorWrapper) {
        Assertions.checkState(isPrepared());
        if (!this.spliceConfigured && hlsExtractorWrapper.shouldSpliceIn && hlsExtractorWrapper.isPrepared()) {
            int i = 0;
            boolean z = true;
            while (i < getTrackCount()) {
                boolean configureSpliceTo = z & ((DefaultTrackOutput) this.sampleQueues.valueAt(i)).configureSpliceTo((DefaultTrackOutput) hlsExtractorWrapper.sampleQueues.valueAt(i));
                i++;
                z = configureSpliceTo;
            }
            this.spliceConfigured = z;
        }
    }

    public int getTrackCount() {
        Assertions.checkState(isPrepared());
        return this.sampleQueues.size();
    }

    public MediaFormat getMediaFormat(int i) {
        Assertions.checkState(isPrepared());
        return this.sampleQueueFormats[i];
    }

    public boolean getSample(int i, SampleHolder sampleHolder) {
        Assertions.checkState(isPrepared());
        return ((DefaultTrackOutput) this.sampleQueues.valueAt(i)).getSample(sampleHolder);
    }

    public void discardUntil(int i, long j) {
        Assertions.checkState(isPrepared());
        ((DefaultTrackOutput) this.sampleQueues.valueAt(i)).discardUntil(j);
    }

    public boolean hasSamples(int i) {
        Assertions.checkState(isPrepared());
        return !((DefaultTrackOutput) this.sampleQueues.valueAt(i)).isEmpty();
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
        TrackOutput defaultTrackOutput = new DefaultTrackOutput(this.allocator);
        this.sampleQueues.put(i, defaultTrackOutput);
        return defaultTrackOutput;
    }

    public void endTracks() {
        this.tracksBuilt = true;
    }

    public void seekMap(SeekMap seekMap) {
    }

    public void drmInitData(DrmInitData drmInitData) {
    }
}
