package com.twitter.model.moments;

import com.twitter.util.object.f;

/* compiled from: Twttr */
public class e extends f<d> {
    public String a;
    public String b;
    public String c;
    public String d;
    public String e;
    private int f;

    public e() {
        this.f = -1;
    }

    protected /* synthetic */ Object c() {
        return d();
    }

    public e a(String str) {
        this.a = str;
        return this;
    }

    public e b(String str) {
        this.b = str;
        return this;
    }

    public e c(String str) {
        this.c = str;
        return this;
    }

    public e d(String str) {
        this.d = str;
        return this;
    }

    public e e(String str) {
        this.e = str;
        return this;
    }

    public e a(int i) {
        this.f = i;
        return this;
    }

    protected d d() {
        return new d(this);
    }
}
