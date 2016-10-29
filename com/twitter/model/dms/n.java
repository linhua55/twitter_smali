package com.twitter.model.dms;

import cgl;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
abstract class n<E extends l, B extends m<E, B>> extends e<E, B> {
    n() {
    }

    public void a(q qVar, E e) throws IOException {
        super.a(qVar, (c) e);
        qVar.a(e.c, cgl.a);
    }

    protected void a(p pVar, B b, int i) throws IOException, ClassNotFoundException {
        super.a(pVar, (d) b, i);
        b.a((cgl) pVar.a(cgl.a));
    }
}
