package com.twitter.android.events.sports;

import com.twitter.android.timeline.j;
import com.twitter.model.timeline.aj;

/* compiled from: Twttr */
public class c extends j {
    public final String a;
    public final int b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final byte[] g;
    public final String h;
    public final String i;
    public final String j;
    public final aj k;
    public final String l;
    public final int m;

    c(d dVar) {
        super(dVar.a, dVar.b, dVar.m);
        if (dVar.c == null || dVar.f == null || dVar.g == null || dVar.i == null || dVar.j == null || dVar.l == null) {
            throw new IllegalArgumentException();
        }
        this.a = dVar.c;
        this.b = dVar.d;
        this.c = dVar.e;
        this.d = dVar.f;
        this.e = dVar.g;
        this.f = dVar.h;
        this.g = dVar.i;
        this.h = dVar.j;
        this.i = dVar.k;
        this.j = dVar.l;
        this.k = dVar.m;
        this.l = dVar.n;
        this.m = dVar.o;
    }
}
