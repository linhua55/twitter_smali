package com.twitter.android.timeline;

import cni;
import com.twitter.model.topic.i;

/* compiled from: Twttr */
public class bv extends aw {
    public String a;
    public String b;
    public cni c;
    public String d;
    public i e;
    public boolean f;
    public String g;
    public String h;
    public int i;
    public int j;

    bv(bw bwVar) {
        super(bwVar.a, bwVar.b, bwVar.c);
        if (bwVar.d == null || bwVar.e == null) {
            throw new IllegalArgumentException();
        }
        this.a = bwVar.d;
        this.b = bwVar.e;
        this.d = bwVar.f;
        this.c = bwVar.g;
        this.e = bwVar.h;
        this.f = bwVar.i;
        this.g = bwVar.j;
        this.h = bwVar.k;
        this.i = bwVar.l;
        this.j = bwVar.m;
    }
}
