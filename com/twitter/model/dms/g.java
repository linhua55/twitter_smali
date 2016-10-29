package com.twitter.model.dms;

import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
abstract class g<E extends f, B extends g<E, B>> extends b<E, B> {
    private long a;

    g() {
    }

    public B a(long j) {
        this.a = j;
        return (g) ObjectUtils.a(this);
    }
}
