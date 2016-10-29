package com.twitter.model.dms;

import com.twitter.model.core.as;

/* compiled from: Twttr */
public class af extends d<ae, af> {
    private long b;
    private as c;

    protected /* synthetic */ Object c() {
        return d();
    }

    protected ae d() {
        return new ae(this);
    }

    public boolean bo_() {
        return this.c != null;
    }

    public af a(long j) {
        this.b = j;
        return this;
    }

    public af a(as asVar) {
        this.c = asVar;
        return this;
    }
}
