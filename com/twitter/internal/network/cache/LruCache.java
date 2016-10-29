package com.twitter.internal.network.cache;

import com.google.android.exoplayer.chunk.FormatEvaluator.AdaptiveEvaluator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;

/* compiled from: Twttr */
public class LruCache<K, V> extends LinkedHashMap<K, V> {
    private int mHitCount;
    private final int mMaxSize;
    private int mMissCount;

    public LruCache(int i) {
        super(0, AdaptiveEvaluator.DEFAULT_BANDWIDTH_FRACTION, true);
        if (i <= 0) {
            throw new IllegalArgumentException("mMaxSize <= 0");
        }
        this.mMaxSize = i;
    }

    public V get(Object obj) {
        V v = super.get(obj);
        if (v != null) {
            this.mHitCount++;
        } else {
            this.mMissCount++;
        }
        return v;
    }

    protected boolean removeEldestEntry(Entry<K, V> entry) {
        return size() > this.mMaxSize;
    }

    public final String toString() {
        int i = this.mHitCount + this.mMissCount;
        if (i != 0) {
            i = (this.mHitCount * 100) / i;
        } else {
            i = 0;
        }
        return String.format("LruCache[mMaxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", new Object[]{Integer.valueOf(this.mMaxSize), Integer.valueOf(this.mHitCount), Integer.valueOf(this.mMissCount), Integer.valueOf(i)});
    }
}
