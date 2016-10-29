package com.facebook.cache.disk;

import com.facebook.cache.common.CacheErrorLogger;
import com.facebook.cache.common.CacheEventListener;
import com.facebook.cache.common.b;
import com.facebook.cache.common.c;
import defpackage.ba;
import defpackage.bb;
import defpackage.bx;
import defpackage.bz;
import java.io.File;

/* compiled from: Twttr */
public class h {
    private final int a;
    private final String b;
    private final bz<File> c;
    private final long d;
    private final long e;
    private final long f;
    private final CacheErrorLogger g;
    private final CacheEventListener h;
    private final ba i;

    private h(j jVar) {
        this.a = jVar.a;
        this.b = (String) bx.a(jVar.b);
        this.c = (bz) bx.a(jVar.c);
        this.d = jVar.d;
        this.e = jVar.e;
        this.f = jVar.f;
        this.g = jVar.g == null ? b.a() : jVar.g;
        this.h = jVar.h == null ? c.f() : jVar.h;
        this.i = jVar.i == null ? bb.a() : jVar.i;
    }

    public int a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }

    public bz<File> c() {
        return this.c;
    }

    public long d() {
        return this.d;
    }

    public long e() {
        return this.e;
    }

    public long f() {
        return this.f;
    }

    public CacheErrorLogger g() {
        return this.g;
    }

    public CacheEventListener h() {
        return this.h;
    }

    public ba i() {
        return this.i;
    }

    public static j j() {
        return new j();
    }
}
