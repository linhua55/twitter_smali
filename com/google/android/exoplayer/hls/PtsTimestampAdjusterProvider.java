package com.google.android.exoplayer.hls;

import android.util.SparseArray;
import com.google.android.exoplayer.extractor.ts.PtsTimestampAdjuster;

/* compiled from: Twttr */
public final class PtsTimestampAdjusterProvider {
    private final SparseArray<PtsTimestampAdjuster> ptsTimestampAdjusters;

    public PtsTimestampAdjusterProvider() {
        this.ptsTimestampAdjusters = new SparseArray();
    }

    public PtsTimestampAdjuster getAdjuster(boolean z, int i, long j) {
        PtsTimestampAdjuster ptsTimestampAdjuster = (PtsTimestampAdjuster) this.ptsTimestampAdjusters.get(i);
        if (z && ptsTimestampAdjuster == null) {
            ptsTimestampAdjuster = new PtsTimestampAdjuster(j);
            this.ptsTimestampAdjusters.put(i, ptsTimestampAdjuster);
        }
        if (z) {
            return ptsTimestampAdjuster;
        }
        return (ptsTimestampAdjuster == null || !ptsTimestampAdjuster.isInitialized()) ? null : ptsTimestampAdjuster;
    }

    public void reset() {
        this.ptsTimestampAdjusters.clear();
    }
}
