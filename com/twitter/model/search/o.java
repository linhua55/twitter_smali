package com.twitter.model.search;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class o extends k<m> {
    private o() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, m mVar) throws IOException {
        qVar.e(mVar.b).b(mVar.c).b(mVar.d);
    }

    protected m a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new m(pVar.e(), pVar.i(), pVar.i(), null);
    }
}
