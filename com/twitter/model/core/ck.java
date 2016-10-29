package com.twitter.model.core;

import com.twitter.util.object.f;

/* compiled from: Twttr */
public final class ck extends f<TwitterSocialProof> {
    int a;
    int b;
    int c;
    int d;
    String e;
    int f;
    String g;
    int h;

    protected /* synthetic */ Object c() {
        return d();
    }

    public ck() {
        this.a = -1;
        this.f = 0;
    }

    public ck a(int i) {
        this.a = i;
        return this;
    }

    public ck a(String str) {
        this.e = str;
        return this;
    }

    public ck b(int i) {
        this.b = i;
        return this;
    }

    public ck c(int i) {
        this.c = i;
        return this;
    }

    public ck d(int i) {
        this.d = i;
        return this;
    }

    public ck e(int i) {
        this.f = i;
        return this;
    }

    public ck f(int i) {
        this.f = p.a(this.f, i);
        return this;
    }

    public ck b(String str) {
        this.g = str;
        return this;
    }

    public ck g(int i) {
        this.h = i;
        return this;
    }

    public boolean bo_() {
        return (this.a == -1 && this.f == 0) ? false : true;
    }

    protected TwitterSocialProof d() {
        return new TwitterSocialProof(this);
    }
}
