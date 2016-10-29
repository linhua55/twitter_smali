package com.twitter.android.moments.viewmodels;

import com.twitter.model.moments.k;
import com.twitter.util.math.Size;

/* compiled from: Twttr */
public class ac extends u<ab, ac> {
    private Size a;
    private k b;

    protected /* synthetic */ Object c() {
        return d();
    }

    protected ab d() {
        return new ab(this);
    }

    public ac a(Size size) {
        this.a = size;
        return this;
    }

    public ac a(k kVar) {
        this.b = kVar;
        return this;
    }
}
