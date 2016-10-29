package com.twitter.model.core;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class ao extends k<am> {
    private ao() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, am amVar) throws IOException {
        qVar.b(amVar.c).b(amVar.d).e(amVar.b).b(amVar.e);
    }

    protected am a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new am(pVar.p(), pVar.p(), pVar.e(), pVar.p());
    }
}
