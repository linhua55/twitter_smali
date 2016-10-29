package com.twitter.android.people;

import com.twitter.app.common.app.n;
import dagger.internal.c;
import dagger.internal.d;
import defpackage.auk;

/* compiled from: Twttr */
class g implements c<auk> {
    final /* synthetic */ i a;
    final /* synthetic */ d b;
    private final n c;

    g(d dVar, i iVar) {
        this.b = dVar;
        this.a = iVar;
        this.c = this.a.b;
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public auk a() {
        return (auk) d.a(this.c.q(), "Cannot return null from a non-@Nullable component method");
    }
}
