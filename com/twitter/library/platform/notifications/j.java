package com.twitter.library.platform.notifications;

import com.twitter.util.object.f;

/* compiled from: Twttr */
public class j extends f<i> {
    private int a;
    private int b;
    private String c;
    private String d;
    private String e;
    private long f;
    private String g;
    private byte[] h;

    protected /* synthetic */ Object c() {
        return d();
    }

    public j a(int i) {
        this.a = i;
        return this;
    }

    public j b(int i) {
        this.b = i;
        return this;
    }

    public j a(String str) {
        this.c = str;
        return this;
    }

    public j b(String str) {
        this.d = str;
        return this;
    }

    public j c(String str) {
        this.e = str;
        return this;
    }

    public j a(long j) {
        this.f = j;
        return this;
    }

    public j d(String str) {
        this.g = str;
        return this;
    }

    public j a(byte[] bArr) {
        this.h = bArr;
        return this;
    }

    protected i d() {
        return new i(this);
    }
}
