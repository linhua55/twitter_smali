package com.twitter.android.events.sports;

import com.twitter.android.timeline.ar;
import com.twitter.model.timeline.aj;

/* compiled from: Twttr */
public class d {
    final ar a;
    final long b;
    String c;
    int d;
    String e;
    String f;
    String g;
    String h;
    byte[] i;
    String j;
    String k;
    String l;
    aj m;
    String n;
    int o;

    public d(ar arVar, long j) {
        this.a = arVar;
        this.b = j;
    }

    public d a(String str) {
        this.c = str;
        return this;
    }

    public d a(int i) {
        this.d = i;
        return this;
    }

    public d b(String str) {
        this.e = str;
        return this;
    }

    public d c(String str) {
        this.f = str;
        return this;
    }

    public d d(String str) {
        this.g = str;
        return this;
    }

    public d e(String str) {
        this.h = str;
        return this;
    }

    public d a(byte[] bArr) {
        this.i = bArr;
        return this;
    }

    public d f(String str) {
        this.j = str;
        return this;
    }

    public d g(String str) {
        this.l = str;
        return this;
    }

    public d a(aj ajVar) {
        this.m = ajVar;
        return this;
    }

    public d h(String str) {
        this.n = str;
        return this;
    }

    public d b(int i) {
        this.o = i;
        return this;
    }

    public c a() {
        return new c(this);
    }
}
