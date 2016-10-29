package com.twitter.android.interestpicker;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.f;
import java.util.List;

/* compiled from: Twttr */
public abstract class i<T extends h, B extends i<T, B>> extends f<T> {
    String a;
    long b;
    long c;
    List<h> d;

    protected i() {
        this.b = -1;
        this.c = -1;
    }

    public B a(String str) {
        this.a = str;
        return (i) ObjectUtils.a(this);
    }

    public B a(long j) {
        this.b = j;
        return (i) ObjectUtils.a(this);
    }

    public B b(long j) {
        this.c = j;
        return (i) ObjectUtils.a(this);
    }

    public B a(List<h> list) {
        this.d = list;
        return (i) ObjectUtils.a(this);
    }
}
