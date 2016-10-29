package com.twitter.android.revenue;

import java.util.LinkedHashMap;
import java.util.Map.Entry;

/* compiled from: Twttr */
final class ViewDwellTimeMonitor$1 extends LinkedHashMap<String, String> {
    private final int mCacheSize;

    ViewDwellTimeMonitor$1() {
        this.mCacheSize = 31;
    }

    protected boolean removeEldestEntry(Entry<String, String> entry) {
        return size() >= 31;
    }
}
