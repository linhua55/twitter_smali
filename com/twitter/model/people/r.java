package com.twitter.model.people;

import com.twitter.util.object.f;

/* compiled from: Twttr */
public class r extends f<g> {
    private String a;
    private String b;
    private t c;

    protected /* synthetic */ Object c() {
        return d();
    }

    public r a(String str) {
        this.b = str;
        return this;
    }

    public r b(String str) {
        this.a = str;
        return this;
    }

    public r a(t tVar) {
        this.c = tVar;
        return this;
    }

    public boolean bo_() {
        return (this.b == null || this.a == null || this.c == null) ? false : true;
    }

    protected g d() {
        return new p(this);
    }
}
