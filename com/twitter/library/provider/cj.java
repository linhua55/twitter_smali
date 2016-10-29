package com.twitter.library.provider;

import com.twitter.library.api.ai;
import com.twitter.model.timeline.av;
import com.twitter.model.timeline.bn;
import com.twitter.util.object.f;
import java.util.List;

/* compiled from: Twttr */
public class cj extends f<ch> {
    ai a;
    List<? extends av> b;
    long c;
    int d;
    String e;
    boolean f;
    boolean g;
    boolean h;
    String i;
    boolean j;
    e k;
    String l;
    String m;
    boolean n;
    bn o;

    public cj() {
        this.d = -1;
    }

    public /* synthetic */ Object c() {
        return d();
    }

    public cj a(ai aiVar) {
        this.a = aiVar;
        return this;
    }

    public cj a(List<? extends av> list) {
        this.b = list;
        return this;
    }

    public cj a(long j) {
        this.c = j;
        return this;
    }

    public cj a(int i) {
        this.d = i;
        return this;
    }

    public cj a(String str) {
        this.e = str;
        return this;
    }

    public cj a(boolean z) {
        this.f = z;
        return this;
    }

    public cj b(boolean z) {
        this.g = z;
        return this;
    }

    public cj c(boolean z) {
        this.h = z;
        return this;
    }

    public cj b(String str) {
        this.i = str;
        return this;
    }

    public cj d(boolean z) {
        this.j = z;
        return this;
    }

    public cj a(e eVar) {
        this.k = eVar;
        return this;
    }

    public cj c(String str) {
        this.l = str;
        return this;
    }

    public cj d(String str) {
        this.m = str;
        return this;
    }

    public cj e(boolean z) {
        this.n = z;
        return this;
    }

    public cj a(bn bnVar) {
        this.o = bnVar;
        return this;
    }

    public boolean bo_() {
        if (this.a == null && this.b == null) {
            return false;
        }
        if ((this.a == null || this.b == null) && this.d != -1 && this.c > 0) {
            return true;
        }
        return false;
    }

    public ch d() {
        return new ch();
    }
}
