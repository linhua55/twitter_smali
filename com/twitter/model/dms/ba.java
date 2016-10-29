package com.twitter.model.dms;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.f;

/* compiled from: Twttr */
abstract class ba<T extends Participant, B extends ba<T, B>> extends f<T> {
    private long a;
    private long b;
    private long c;

    ba() {
    }

    public B a(long j) {
        this.a = j;
        return (ba) ObjectUtils.a(this);
    }

    public B b(long j) {
        this.b = j;
        return (ba) ObjectUtils.a(this);
    }

    public B c(long j) {
        this.c = j;
        return (ba) ObjectUtils.a(this);
    }

    public boolean bo_() {
        return this.a > 0;
    }
}
