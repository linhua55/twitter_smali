package com.twitter.library.network;

import defpackage.bce;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class ah {
    private int a;
    private long b;
    private final List<bce> c;
    private int d;
    private String e;
    private long f;
    private boolean g;
    private int h;

    public ah() {
        this.a = 0;
        this.b = 0;
        this.c = new ArrayList();
        this.f = -1;
        this.h = -1;
    }

    public SecurityScribeLog a() {
        return new SecurityScribeLog();
    }

    public ah a(int i) {
        this.a = i;
        return this;
    }

    public ah a(bce bce) {
        this.c.add(bce);
        return this;
    }

    public ah a(long j) {
        this.b = j;
        return this;
    }

    public ah b(int i) {
        this.d = i;
        return this;
    }

    public ah a(String str) {
        this.e = str;
        return this;
    }

    public ah b(long j) {
        this.f = j;
        return this;
    }

    public ah a(boolean z) {
        this.g = z;
        return this;
    }

    public ah c(int i) {
        this.h = i;
        return this;
    }
}
