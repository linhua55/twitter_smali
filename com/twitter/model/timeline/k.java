package com.twitter.model.timeline;

import com.twitter.util.object.e;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class k extends com.twitter.util.serialization.k<i> {
    private k() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, i iVar) throws IOException {
        qVar.b(iVar.b).b(iVar.c).b(iVar.d);
    }

    protected i a(p pVar, int i) throws IOException, ClassNotFoundException {
        return i.a(e.b(pVar.i()), pVar.i(), pVar.i());
    }
}
