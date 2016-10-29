package com.twitter.model.moments;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class av extends k<au> {
    private av() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, au auVar) throws IOException {
        qVar.a(auVar.b, as.a).a(auVar.c, aq.a).b(auVar.d);
    }

    protected au a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new au((as) pVar.b(as.a), (aq) pVar.b(aq.a), pVar.f());
    }
}
