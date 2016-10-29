package com.google.android.exoplayer.chunk;

import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.drm.DrmInitData;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DataSpec;
import com.google.android.exoplayer.util.Util;
import java.io.IOException;

/* compiled from: Twttr */
public final class SingleSampleMediaChunk extends BaseMediaChunk {
    private volatile int bytesLoaded;
    private volatile boolean loadCanceled;
    private final DrmInitData sampleDrmInitData;
    private final MediaFormat sampleFormat;

    public SingleSampleMediaChunk(DataSource dataSource, DataSpec dataSpec, int i, Format format, long j, long j2, int i2, MediaFormat mediaFormat, DrmInitData drmInitData, int i3) {
        super(dataSource, dataSpec, i, format, j, j2, i2, true, i3);
        this.sampleFormat = mediaFormat;
        this.sampleDrmInitData = drmInitData;
    }

    public long bytesLoaded() {
        return (long) this.bytesLoaded;
    }

    public MediaFormat getMediaFormat() {
        return this.sampleFormat;
    }

    public DrmInitData getDrmInitData() {
        return this.sampleDrmInitData;
    }

    public void cancelLoad() {
        this.loadCanceled = true;
    }

    public boolean isLoadCanceled() {
        return this.loadCanceled;
    }

    public void load() throws IOException, InterruptedException {
        int i = 0;
        try {
            this.dataSource.open(Util.getRemainderDataSpec(this.dataSpec, this.bytesLoaded));
            while (i != -1) {
                this.bytesLoaded = i + this.bytesLoaded;
                i = getOutput().sampleData(this.dataSource, Integer.MAX_VALUE, true);
            }
            getOutput().sampleMetadata(this.startTimeUs, 1, this.bytesLoaded, 0, null);
        } finally {
            this.dataSource.close();
        }
    }
}
