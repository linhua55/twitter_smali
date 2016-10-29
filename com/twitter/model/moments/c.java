package com.twitter.model.moments;

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
        qVar.b(aVar.b).b(aVar.c).b(aVar.d).b(aVar.e).b(aVar.f);
    }

    protected a a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new a(pVar.f(), pVar.d(), pVar.i(), pVar.i(), pVar.i());
    }
}
