package com.twitter.internal.network;

import java.io.File;

/* compiled from: Twttr */
public class f {
    private static int a;
    private static int b;
    private static int c;
    private static int d;
    private static int e;
    private static int f;
    private final j g;
    private final int h;
    private final int i;
    private final int j;
    private final int k;
    private final int l;
    private final int m;
    private final int n;
    private final File o;

    static {
        a = 20000;
        b = 90000;
        c = 60000;
        d = 2;
        e = 100;
        f = 2048;
    }

    public f(j jVar, int i, int i2, int i3, int i4, int i5, int i6, int i7, File file) {
        this.g = jVar;
        this.h = i2;
        this.i = i;
        this.j = i3;
        this.k = i4;
        this.l = i5;
        this.m = i6;
        this.n = i7;
        this.o = file;
    }

    public f(j jVar, int i, int i2, File file) {
        this(jVar, i, i2, i(), h(), j(), k(), l(), file);
    }

    public f(j jVar, File file) {
        this(jVar, f(), g(), file);
    }

    public f() {
        this(null, null);
    }

    public j a() {
        return this.g;
    }

    public int b() {
        return this.h;
    }

    public int c() {
        return this.i;
    }

    public int d() {
        return this.n;
    }

    public File e() {
        return this.o;
    }

    public static void a(int i, int i2) {
        b = i;
        a = i2;
    }

    public static int f() {
        return b;
    }

    public static int g() {
        return a;
    }

    public static int h() {
        return d;
    }

    public static int i() {
        return c;
    }

    public static int j() {
        return e;
    }

    public static int k() {
        return f;
    }

    public static int l() {
        return 2097152;
    }
}
