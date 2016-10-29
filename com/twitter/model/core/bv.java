package com.twitter.model.core;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class bv extends k<bt> {
    private bv() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, bt btVar) throws IOException {
        qVar.b(btVar.b).b(btVar.c).b(btVar.d);
    }

    protected bt a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new bt(pVar.p(), pVar.p(), pVar.h());
    }
}
