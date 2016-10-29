package com.google.android.gms.ads.internal;

import android.os.Build.VERSION;
import com.google.android.gms.ads.internal.overlay.a;
import com.google.android.gms.ads.internal.overlay.o;
import com.google.android.gms.ads.internal.purchase.k;
import com.google.android.gms.ads.internal.request.c;
import com.google.android.gms.internal.cf;
import com.google.android.gms.internal.cg;
import com.google.android.gms.internal.ch;
import com.google.android.gms.internal.co;
import com.google.android.gms.internal.ge;
import com.google.android.gms.internal.ho;
import com.google.android.gms.internal.jw;
import com.google.android.gms.internal.no;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.pd;
import com.google.android.gms.internal.pw;
import com.google.android.gms.internal.qw;
import com.google.android.gms.internal.qz;
import com.google.android.gms.internal.rz;
import com.google.android.gms.internal.tg;
import com.google.android.gms.internal.vj;
import com.google.android.gms.internal.vl;

@oi
public class ar {
    private static final Object a;
    private static ar b;
    private final c c;
    private final a d;
    private final o e;
    private final no f;
    private final qw g;
    private final tg h;
    private final qz i;
    private final pw j;
    private final vj k;
    private final co l;
    private final pd m;
    private final cg n;
    private final cf o;
    private final ch p;
    private final k q;
    private final ho r;
    private final rz s;
    private final jw t;
    private final ai u;
    private final ge v;

    static {
        a = new Object();
        a(new ar());
    }

    protected ar() {
        this.c = new c();
        this.d = new a();
        this.e = new o();
        this.f = new no();
        this.g = new qw();
        this.h = new tg();
        this.i = qz.a(VERSION.SDK_INT);
        this.j = new pw(this.g);
        this.k = new vl();
        this.l = new co();
        this.m = new pd();
        this.n = new cg();
        this.o = new cf();
        this.p = new ch();
        this.q = new k();
        this.r = new ho();
        this.s = new rz();
        this.t = new jw();
        this.u = new ai();
        this.v = new ge();
    }

    public static c a() {
        return u().c;
    }

    protected static void a(ar arVar) {
        synchronized (a) {
            b = arVar;
        }
    }

    public static a b() {
        return u().d;
    }

    public static o c() {
        return u().e;
    }

    public static no d() {
        return u().f;
    }

    public static qw e() {
        return u().g;
    }

    public static tg f() {
        return u().h;
    }

    public static qz g() {
        return u().i;
    }

    public static pw h() {
        return u().j;
    }

    public static vj i() {
        return u().k;
    }

    public static co j() {
        return u().l;
    }

    public static pd k() {
        return u().m;
    }

    public static cg l() {
        return u().n;
    }

    public static cf m() {
        return u().o;
    }

    public static ch n() {
        return u().p;
    }

    public static k o() {
        return u().q;
    }

    public static ho p() {
        return u().r;
    }

    public static rz q() {
        return u().s;
    }

    public static jw r() {
        return u().t;
    }

    public static ai s() {
        return u().u;
    }

    public static ge t() {
        return u().v;
    }

    private static ar u() {
        ar arVar;
        synchronized (a) {
            arVar = b;
        }
        return arVar;
    }
}
