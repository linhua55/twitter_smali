package com.twitter.model.moments.viewmodels;

import com.twitter.model.core.Tweet;
import com.twitter.model.moments.u;

/* compiled from: Twttr */
public abstract class o extends f {
    private final u a;
    private final long b;
    private Tweet c;

    public o(p pVar) {
        super(pVar);
        this.b = pVar.i;
        this.c = pVar.g;
        this.a = pVar.h;
    }

    public long m() {
        return this.b;
    }

    public Tweet n() {
        return this.c;
    }

    public u o() {
        return this.a;
    }

    public void a(Tweet tweet) {
        if (!a()) {
            this.c = tweet;
            c();
        }
    }

    public boolean a() {
        return this.c != null;
    }
}
