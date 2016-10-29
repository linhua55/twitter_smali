package com.twitter.util.collection;

import android.support.v4.util.LruCache;
import bbn;

/* compiled from: Twttr */
class f extends LruCache<K, V> {
    final /* synthetic */ e a;

    f(e eVar, int i) {
        this.a = eVar;
        super(i);
    }

    public void trimToSize(int i) {
        try {
            super.trimToSize(i);
        } catch (IllegalStateException e) {
            bbn.a(new g(this.a.a).a(new IllegalStateException("COMPOSE-2135")));
        }
        this.a.b.e();
    }

    protected int sizeOf(K k, V v) {
        return this.a.c(v);
    }

    protected void entryRemoved(boolean z, K k, V v, V v2) {
        if (z) {
            this.a.b.a(k, v);
        } else {
            this.a.b.b(k);
        }
    }
}
