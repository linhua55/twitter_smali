package com.twitter.android.people;

import com.twitter.app.common.app.n;
import dagger.internal.c;
import dagger.internal.d;
import defpackage.auk;

/* compiled from: Twttr */
class b implements c<auk> {
    final /* synthetic */ c a;
    final /* synthetic */ a b;
    private final n c;

    b(a aVar, c cVar) {
        this.b = aVar;
        this.a = cVar;
        this.c = c.a(this.a);
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public auk a() {
        return (auk) d.a(this.c.q(), "Cannot return null from a non-@Nullable component method");
    }
}
