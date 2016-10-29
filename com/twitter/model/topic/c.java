package com.twitter.model.topic;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class c extends k<a> {
    private c() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, a aVar) throws IOException {
        qVar.b(aVar.b).b(aVar.c).b(aVar.d).b(aVar.e).b(aVar.f).b(aVar.g).b(aVar.h);
    }

    protected a a(p pVar, int i) throws IOException, ClassNotFoundException {
        a aVar = new a();
        aVar.b = pVar.i();
        aVar.c = pVar.i();
        aVar.d = pVar.i();
        aVar.e = pVar.i();
        aVar.f = pVar.i();
        aVar.g = pVar.i();
        aVar.h = pVar.f();
        return aVar;
    }
}
