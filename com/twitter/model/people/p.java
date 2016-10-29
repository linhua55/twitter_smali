package com.twitter.model.people;

import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class p implements g {
    public static final n<g> a;
    private final String b;
    private final String c;
    private final t d;

    static {
        a = new s();
    }

    public p(r rVar) {
        this.b = rVar.a;
        this.c = rVar.b;
        this.d = rVar.c;
    }

    public String a() {
        return this.b;
    }

    public String b() {
        return this.c;
    }

    public t c() {
        return this.d;
    }
}
