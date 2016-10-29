package com.twitter.model.dms;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.f;

/* compiled from: Twttr */
public abstract class d<E extends c, B extends d<E, B>> extends f<E> {
    String a;
    private String b;
    private String c;
    private int d;
    private int e;

    protected d() {
        this.d = -1;
        this.e = -1;
    }

    public B a(String str) {
        this.a = str;
        return (d) ObjectUtils.a(this);
    }

    public B b(String str) {
        this.b = str;
        return (d) ObjectUtils.a(this);
    }

    public B c(String str) {
        this.c = str;
        return (d) ObjectUtils.a(this);
    }

    public B a(int i) {
        this.d = i;
        return (d) ObjectUtils.a(this);
    }

    public B b(int i) {
        this.e = i;
        return (d) ObjectUtils.a(this);
    }
}
