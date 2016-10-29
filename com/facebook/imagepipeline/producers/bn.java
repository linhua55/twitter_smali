package com.facebook.imagepipeline.producers;

import com.android.internal.util.Predicate;
import com.facebook.cache.common.a;
import dy;

/* compiled from: Twttr */
class bn implements Predicate<a> {
    final /* synthetic */ bm a;

    bn(bm bmVar) {
        this.a = bmVar;
    }

    public /* synthetic */ boolean apply(Object obj) {
        return a((a) obj);
    }

    public boolean a(a aVar) {
        if (aVar instanceof dy) {
            return this.a.c.equals(((dy) aVar).a());
        }
        return false;
    }
}
