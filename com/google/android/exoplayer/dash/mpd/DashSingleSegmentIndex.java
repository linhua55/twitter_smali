package com.google.android.exoplayer.dash.mpd;

import com.google.android.exoplayer.dash.DashSegmentIndex;

/* compiled from: Twttr */
final class DashSingleSegmentIndex implements DashSegmentIndex {
    private final RangedUri uri;

    public DashSingleSegmentIndex(RangedUri rangedUri) {
        this.uri = rangedUri;
    }

    public int getSegmentNum(long j, long j2) {
        return 0;
    }

    public long getTimeUs(int i) {
        return 0;
    }

    public long getDurationUs(int i, long j) {
        return j;
    }

    public RangedUri getSegmentUrl(int i) {
        return this.uri;
    }

    public int getFirstSegmentNum() {
        return 0;
    }

    public int getLastSegmentNum(long j) {
        return 0;
    }

    public boolean isExplicit() {
        return true;
    }
}
