package com.twitter.util.math;

import com.twitter.util.serialization.ap;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class e extends ap<c> {
    private e() {
    }

    protected /* synthetic */ Object a_(p pVar) throws IOException, ClassNotFoundException {
        return b(pVar);
    }

    protected void a(q qVar, c cVar) throws IOException {
        qVar.b(cVar.d).b(cVar.e).b(cVar.f).b(cVar.g);
    }

    protected c b(p pVar) throws IOException, ClassNotFoundException {
        return new c(pVar.g(), pVar.g(), pVar.g(), null);
    }
}
