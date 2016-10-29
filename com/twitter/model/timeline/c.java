package com.twitter.model.timeline;

import com.twitter.model.core.cm;

/* compiled from: Twttr */
public class c {
    public final e a;
    public final cm[] b;

    public c(e eVar, cm[] cmVarArr) {
        this.a = eVar;
        this.b = cmVarArr;
    }

    public cm a() {
        return this.b[this.b.length - 1];
    }

    public boolean b() {
        return this.a != null && this.a.c > 0;
    }
}
