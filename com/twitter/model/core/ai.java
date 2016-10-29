package com.twitter.model.core;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class ai extends k<ag> {
    private ai() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, ag agVar) throws IOException {
        qVar.b(agVar.b).b(agVar.c).b(agVar.d);
    }

    protected ag a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new ag(pVar.f(), pVar.p(), pVar.p());
    }
}
