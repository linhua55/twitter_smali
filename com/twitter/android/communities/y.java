package com.twitter.android.communities;

import dbd;
import defpackage.cho;
import rx.o;

/* compiled from: Twttr */
public class y implements x {
    private final k a;
    private final af b;

    public y(af afVar, k kVar) {
        this.a = kVar;
        this.b = afVar;
    }

    public o<cho> a(long j) {
        return o.a(c(j), b(j)).h();
    }

    private o<cho> b(long j) {
        return this.b.a(j).g(new ab(this)).h(new aa(this)).a(new z(this));
    }

    private o<cho> c(long j) {
        return o.a(new ac(this, j)).b(dbd.d());
    }
}
