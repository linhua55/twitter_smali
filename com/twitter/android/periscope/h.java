package com.twitter.android.periscope;

import android.support.annotation.VisibleForTesting;
import android.util.LruCache;
import dbx;
import tv.periscope.model.p;

/* compiled from: Twttr */
class h implements dbx {
    private final LruCache<String, p> a;

    h() {
        this(new LruCache(100));
    }

    @VisibleForTesting
    h(LruCache<String, p> lruCache) {
        this.a = lruCache;
    }

    public void a(String str, p pVar) {
        this.a.put(str, pVar);
    }

    public p a(String str) {
        return (p) this.a.get(str);
    }
}
