package com.twitter.library.commerce.model;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class ah extends k<af> {
    private ah() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, af afVar) throws IOException {
        qVar.b(afVar.b()).b(afVar.a()).b(afVar.c()).b(afVar.d());
    }

    protected af a(p pVar, int i) throws IOException, ClassNotFoundException {
        af afVar = new af();
        afVar.b(pVar.i());
        afVar.a(pVar.i());
        afVar.a(pVar.d());
        afVar.b(pVar.d());
        return afVar;
    }
}
