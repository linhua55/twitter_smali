package com.twitter.database.lru;

import com.twitter.util.object.ObjectUtils;
import cys;

/* compiled from: Twttr */
class e implements cys<V> {
    final /* synthetic */ Object a;
    final /* synthetic */ String b;
    final /* synthetic */ a c;

    e(a aVar, Object obj, String str) {
        this.c = aVar;
        this.a = obj;
        this.b = str;
    }

    public void call(V v) {
        if (!ObjectUtils.a(this.a, v)) {
            this.c.b(this.b, this.a);
        }
    }
}
