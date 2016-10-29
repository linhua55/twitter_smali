package com.twitter.model.core;

import com.twitter.util.object.f;

/* compiled from: Twttr */
public final class ax extends f<av> {
    String a;
    String b;
    boolean c;
    boolean d;

    protected /* synthetic */ Object c() {
        return d();
    }

    public ax a(String str) {
        this.a = str;
        return this;
    }

    public ax b(String str) {
        this.b = str;
        return this;
    }

    public ax a(boolean z) {
        this.c = z;
        return this;
    }

    public ax b(boolean z) {
        this.d = z;
        return this;
    }

    protected av d() {
        return new av(this, null);
    }
}
