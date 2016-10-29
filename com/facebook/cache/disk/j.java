package com.facebook.cache.disk;

import com.facebook.cache.common.CacheErrorLogger;
import com.facebook.cache.common.CacheEventListener;
import defpackage.ba;
import defpackage.bz;
import java.io.File;

/* compiled from: Twttr */
public class j {
    public int a;
    public String b;
    public bz<File> c;
    public long d;
    public long e;
    public long f;
    public CacheErrorLogger g;
    public CacheEventListener h;
    public ba i;

    private j() {
        this.a = 1;
    }

    public j a(String str) {
        this.b = str;
        return this;
    }

    public j a(bz<File> bzVar) {
        this.c = bzVar;
        return this;
    }

    public j a(long j) {
        this.d = j;
        return this;
    }

    public j b(long j) {
        this.e = j;
        return this;
    }

    public j c(long j) {
        this.f = j;
        return this;
    }

    public h a() {
        return new h();
    }
}
