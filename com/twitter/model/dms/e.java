package com.twitter.model.dms;

import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
abstract class e<E extends c, B extends d<E, B>> extends d<E, B> {
    e() {
    }

    public void a(q qVar, E e) throws IOException {
        qVar.b(e.b()).b(e.c()).b(e.d()).e(e.e()).e(e.f());
    }

    protected void a(p pVar, B b, int i) throws IOException, ClassNotFoundException {
        b.a(pVar.i()).b(pVar.i()).c(pVar.i()).a(pVar.e()).b(pVar.e());
    }
}
