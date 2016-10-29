package com.google.android.exoplayer.dash;

import com.google.android.exoplayer.dash.mpd.RangedUri;
import com.google.android.exoplayer.extractor.ChunkIndex;

/* compiled from: Twttr */
final class DashWrappingSegmentIndex implements DashSegmentIndex {
    private final ChunkIndex chunkIndex;
    private final String uri;

    public DashWrappingSegmentIndex(ChunkIndex chunkIndex, String str) {
        this.chunkIndex = chunkIndex;
        this.uri = str;
    }

    public int getFirstSegmentNum() {
        return 0;
    }

    public int getLastSegmentNum(long j) {
        return this.chunkIndex.length - 1;
    }

    public long getTimeUs(int i) {
        return this.chunkIndex.timesUs[i];
    }

    public long getDurationUs(int i, long j) {
        return this.chunkIndex.durationsUs[i];
    }

    public RangedUri getSegmentUrl(int i) {
        return new RangedUri(this.uri, null, this.chunkIndex.offsets[i], (long) this.chunkIndex.sizes[i]);
    }

    public int getSegmentNum(long j, long j2) {
        return this.chunkIndex.getChunkIndex(j);
    }

    public boolean isExplicit() {
        return true;
    }
}
