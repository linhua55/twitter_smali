package com.twitter.database.internal;

import com.twitter.database.model.c;
import com.twitter.database.model.g;
import com.twitter.database.model.j;
import com.twitter.database.model.q;
import rx.o;

/* compiled from: Twttr */
public abstract class m<P> implements q<P> {
    protected final f b;

    protected abstract j<P> a(Object obj);

    public abstract String[] a();

    protected abstract <T extends l> T b();

    protected m(f fVar) {
        this.b = fVar;
    }

    public j<P> c() {
        com.twitter.util.j.c();
        return a(this.b.d().a(b().a(), a(), null, null, null, null, null, null));
    }

    public j<P> a(g gVar) {
        com.twitter.util.j.c();
        return a(this.b.d().a(b().a(), a(), gVar.a, gVar.b, gVar.d, gVar.e, gVar.c, gVar.f));
    }

    public j<P> a(String str, String... strArr) {
        com.twitter.util.j.c();
        return a(this.b.d().a(b().a(), a(), str, strArr, null, null, null, null));
    }

    public int b(String str, String[] strArr) {
        com.twitter.util.j.c();
        return this.b.d().a(b().a(), str, strArr);
    }

    public o<c> d() {
        return b().j();
    }
}
