package com.twitter.util.collection;

import android.support.v4.util.LruCache;
import bbl;

/* compiled from: Twttr */
class g extends bbl {
    g(LruCache lruCache) {
        a("InconsistentCacheSize.size", Integer.valueOf(lruCache.size()));
        a("InconsistentCacheSize.create_count", Integer.valueOf(lruCache.createCount()));
        a("InconsistentCacheSize.put_count", Integer.valueOf(lruCache.putCount()));
        a("InconsistentCacheSize.stats", lruCache.toString());
    }
}
