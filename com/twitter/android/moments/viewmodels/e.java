package com.twitter.android.moments.viewmodels;

import com.twitter.model.moments.k;
import com.twitter.util.math.Size;

/* compiled from: Twttr */
public class e extends u<d, e> {
    private Size a;
    private String b;
    private k c;

    protected /* synthetic */ Object c() {
        return d();
    }

    public e a(Size size) {
        this.a = size;
        return this;
    }

    public e a(String str) {
        this.b = str;
        return this;
    }

    public e a(k kVar) {
        this.c = kVar;
        return this;
    }

    protected d d() {
        return new d(this);
    }
}
