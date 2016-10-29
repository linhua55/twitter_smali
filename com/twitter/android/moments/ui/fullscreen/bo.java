package com.twitter.android.moments.ui.fullscreen;

import com.twitter.util.z;

/* compiled from: Twttr */
class bo implements z<com.twitter.util.collection.z<K, T>> {
    final /* synthetic */ Object a;
    final /* synthetic */ z b;
    final /* synthetic */ bn c;

    bo(bn bnVar, Object obj, z zVar) {
        this.c = bnVar;
        this.a = obj;
        this.b = zVar;
    }

    public void a(com.twitter.util.collection.z<K, T> zVar) {
        if (this.a.equals(zVar.a())) {
            this.b.a(zVar.b());
        }
    }
}
