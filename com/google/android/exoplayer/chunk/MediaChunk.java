package com.google.android.exoplayer.chunk;

import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DataSpec;
import com.google.android.exoplayer.util.Assertions;

/* compiled from: Twttr */
public abstract class MediaChunk extends Chunk {
    public final int chunkIndex;
    public final long endTimeUs;
    public final long startTimeUs;

    public MediaChunk(DataSource dataSource, DataSpec dataSpec, int i, Format format, long j, long j2, int i2) {
        this(dataSource, dataSpec, i, format, j, j2, i2, -1);
    }

    public int getNextChunkIndex() {
        return this.chunkIndex + 1;
    }

    public MediaChunk(DataSource dataSource, DataSpec dataSpec, int i, Format format, long j, long j2, int i2, int i3) {
        super(dataSource, dataSpec, 1, i, format, i3);
        Assertions.checkNotNull(format);
        this.startTimeUs = j;
        this.endTimeUs = j2;
        this.chunkIndex = i2;
    }
}
