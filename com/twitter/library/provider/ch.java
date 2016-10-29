package com.twitter.library.provider;

import com.twitter.library.api.ai;
import com.twitter.model.timeline.av;
import com.twitter.model.timeline.bn;
import com.twitter.util.object.e;
import java.util.List;

/* compiled from: Twttr */
public class ch {
    public final ai a;
    public final List<? extends av> b;
    public final long c;
    public final int d;
    public final String e;
    public final boolean f;
    public final boolean g;
    public final boolean h;
    public final String i;
    public final boolean j;
    public final e k;
    public final String l;
    public final String m;
    public final boolean n;
    public final bn o;

    private ch(cj cjVar) {
        this.a = cjVar.a;
        this.b = cjVar.b;
        this.c = cjVar.c;
        this.d = cjVar.d;
        this.e = (String) e.b(cjVar.e, "unspecified");
        this.f = cjVar.f;
        this.g = cjVar.g;
        this.h = cjVar.h;
        this.i = cjVar.i;
        this.j = cjVar.j;
        this.k = cjVar.k;
        this.l = cjVar.l;
        this.m = cjVar.m;
        this.n = cjVar.n;
        this.o = (bn) e.b(cjVar.o, bn.a);
    }
}
