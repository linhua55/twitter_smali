package com.twitter.library.provider;

import java.util.List;

/* compiled from: Twttr */
class dp {
    public final long a;
    public final int b;
    public final long c;
    public final long d;
    public final long e;
    public final int f;
    public final int g;
    public final List<Long> h;
    public final int i;
    public final int j;
    public final List<Long> k;
    public final List<Long> l;
    public final int m;
    public final int n;
    public final List<Long> o;
    public final List<a> p;

    dp(long j, int i, long j2, long j3, long j4, int i2, int i3, List<Long> list, int i4, int i5, List<Long> list2, List<Long> list3, int i6, int i7, List<Long> list4, List<a> list5) {
        this.a = j;
        this.b = i;
        this.c = j2;
        this.d = j3;
        this.e = j4;
        this.f = i2;
        this.g = i3;
        this.h = list;
        this.i = i4;
        this.j = i5;
        this.k = list2;
        this.l = list3;
        this.m = i6;
        this.n = i7;
        this.o = list4;
        this.p = list5;
    }

    dp(int i, int i2, List<Long> list, int i3, int i4, List<Long> list2) {
        this(0, 0, 0, 0, 0, 0, 0, null, i, i2, null, list, i3, i4, list2, null);
    }
}
