package com.twitter.model.moments;

import cni;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class ab {
    public static final n<ab> a;
    public final long b;
    public final String c;
    public final boolean d;
    public final boolean e;
    public final boolean f;
    public final String g;
    public final String h;
    public final String i;
    public final String j;
    public final boolean k;
    public final String l;
    public final int m;
    public final String n;
    public final a o;
    public final cni p;
    public final o q;
    public final long r;

    static {
        a = new ae();
    }

    private ab(ad adVar) {
        this.b = adVar.a;
        this.c = adVar.b;
        this.d = adVar.c;
        this.e = adVar.d;
        this.f = adVar.e;
        this.g = adVar.f;
        this.h = adVar.g;
        this.i = adVar.h;
        this.j = adVar.i;
        this.k = adVar.j;
        this.l = adVar.k;
        this.m = adVar.l;
        this.n = adVar.m;
        this.o = adVar.n;
        this.p = adVar.o;
        this.q = adVar.p;
        this.r = adVar.q;
    }

    public boolean a() {
        return this.p != null && "promoted".equals(this.p.d);
    }
}
