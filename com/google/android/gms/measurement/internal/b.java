package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.bm;

class b {
    private final bx a;
    private final String b;
    private String c;
    private String d;
    private String e;
    private long f;
    private long g;
    private long h;
    private String i;
    private String j;
    private long k;
    private long l;
    private boolean m;
    private long n;
    private long o;
    private long p;
    private long q;
    private boolean r;
    private long s;
    private long t;

    b(bx bxVar, String str) {
        bm.a(bxVar);
        bm.a(str);
        this.a = bxVar;
        this.b = str;
        this.a.x();
    }

    public void a() {
        this.a.x();
        this.r = false;
    }

    public void a(long j) {
        this.a.x();
        this.r = (this.g != j ? 1 : 0) | this.r;
        this.g = j;
    }

    public void a(String str) {
        this.a.x();
        this.r |= ag.a(this.c, str);
        this.c = str;
    }

    public void a(boolean z) {
        this.a.x();
        this.r = (this.m != z ? 1 : 0) | this.r;
        this.m = z;
    }

    public String b() {
        this.a.x();
        return this.b;
    }

    public void b(long j) {
        this.a.x();
        this.r = (this.h != j ? 1 : 0) | this.r;
        this.h = j;
    }

    public void b(String str) {
        this.a.x();
        if (TextUtils.isEmpty(str)) {
            str = null;
        }
        this.r |= ag.a(this.d, str);
        this.d = str;
    }

    public String c() {
        this.a.x();
        return this.c;
    }

    public void c(long j) {
        this.a.x();
        this.r = (this.k != j ? 1 : 0) | this.r;
        this.k = j;
    }

    public void c(String str) {
        this.a.x();
        this.r |= ag.a(this.e, str);
        this.e = str;
    }

    public String d() {
        this.a.x();
        return this.d;
    }

    public void d(long j) {
        this.a.x();
        this.r = (this.l != j ? 1 : 0) | this.r;
        this.l = j;
    }

    public void d(String str) {
        this.a.x();
        this.r |= ag.a(this.i, str);
        this.i = str;
    }

    public String e() {
        this.a.x();
        return this.e;
    }

    public void e(long j) {
        int i = 1;
        bm.b(j >= 0);
        this.a.x();
        boolean z = this.r;
        if (this.f == j) {
            i = 0;
        }
        this.r = z | i;
        this.f = j;
    }

    public void e(String str) {
        this.a.x();
        this.r |= ag.a(this.j, str);
        this.j = str;
    }

    public long f() {
        this.a.x();
        return this.g;
    }

    public void f(long j) {
        this.a.x();
        this.r = (this.s != j ? 1 : 0) | this.r;
        this.s = j;
    }

    public long g() {
        this.a.x();
        return this.h;
    }

    public void g(long j) {
        this.a.x();
        this.r = (this.t != j ? 1 : 0) | this.r;
        this.t = j;
    }

    public String h() {
        this.a.x();
        return this.i;
    }

    public void h(long j) {
        this.a.x();
        this.r = (this.n != j ? 1 : 0) | this.r;
        this.n = j;
    }

    public String i() {
        this.a.x();
        return this.j;
    }

    public void i(long j) {
        this.a.x();
        this.r = (this.o != j ? 1 : 0) | this.r;
        this.o = j;
    }

    public long j() {
        this.a.x();
        return this.k;
    }

    public void j(long j) {
        this.a.x();
        this.r = (this.p != j ? 1 : 0) | this.r;
        this.p = j;
    }

    public long k() {
        this.a.x();
        return this.l;
    }

    public void k(long j) {
        this.a.x();
        this.r = (this.q != j ? 1 : 0) | this.r;
        this.q = j;
    }

    public boolean l() {
        this.a.x();
        return this.m;
    }

    public long m() {
        this.a.x();
        return this.f;
    }

    public long n() {
        this.a.x();
        return this.s;
    }

    public long o() {
        this.a.x();
        return this.t;
    }

    public void p() {
        this.a.x();
        long j = this.f + 1;
        if (j > 2147483647L) {
            this.a.f().c().a("Bundle index overflow");
            j = 0;
        }
        this.r = true;
        this.f = j;
    }

    public long q() {
        this.a.x();
        return this.n;
    }

    public long r() {
        this.a.x();
        return this.o;
    }

    public long s() {
        this.a.x();
        return this.p;
    }

    public long t() {
        this.a.x();
        return this.q;
    }
}
