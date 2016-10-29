package com.twitter.android.moments.ui.maker.navigation;

import com.twitter.util.object.f;

/* compiled from: Twttr */
public class w<S1 extends u, S2 extends u, TS extends z> extends f<v<S1, S2, TS>> {
    private S1 a;
    private S2 b;
    private TS c;

    protected /* synthetic */ Object c() {
        return d();
    }

    public w<S1, S2, TS> a(S1 s1) {
        this.a = s1;
        return this;
    }

    public w<S1, S2, TS> b(S2 s2) {
        this.b = s2;
        return this;
    }

    public w<S1, S2, TS> a(TS ts) {
        this.c = ts;
        return this;
    }

    protected v<S1, S2, TS> d() {
        return new v(this);
    }
}
