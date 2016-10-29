package com.twitter.model.core;

import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
public abstract class ct<E extends cr, B extends cs<E, B>> extends g<E, B> {
    protected ct() {
        super(2);
    }

    protected void a(q qVar, E e) throws IOException {
        super.a(qVar, (e) e);
        qVar.b(e.B).b(e.C).b(e.D).e(e.E).e(e.F);
    }

    protected void a(p pVar, B b, int i) throws IOException, ClassNotFoundException {
        super.a(pVar, (f) b, i);
        b.e(pVar.p()).f(pVar.p()).g(pVar.p()).d(pVar.e()).e(pVar.e());
    }
}
