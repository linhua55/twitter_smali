package com.twitter.model.geo;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class f extends k<d> {
    private f() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, d dVar) throws IOException {
        qVar.b(dVar.a()).b(dVar.b());
    }

    protected d a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new d(pVar.h(), pVar.h());
    }
}
