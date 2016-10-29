package com.twitter.model.moments.viewmodels;

import com.twitter.model.moments.k;
import com.twitter.util.math.Size;

/* compiled from: Twttr */
public class l extends h<k, l> {
    String a;
    Size g;
    k h;

    protected /* synthetic */ Object c() {
        return d();
    }

    public l b(String str) {
        this.a = str;
        return this;
    }

    public l a(Size size) {
        this.g = size;
        return this;
    }

    public l a(k kVar) {
        this.h = kVar;
        return this;
    }

    protected k d() {
        return new k(this);
    }
}
