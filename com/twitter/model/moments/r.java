package com.twitter.model.moments;

import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class r extends d<o, q> {
    private r() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected q a() {
        return new q();
    }

    protected void a(p pVar, q qVar, int i) throws IOException, ClassNotFoundException {
        qVar.a(pVar.i()).b(pVar.i());
    }

    protected void a(q qVar, o oVar) throws IOException {
        qVar.b(oVar.b).b(oVar.c);
    }
}
