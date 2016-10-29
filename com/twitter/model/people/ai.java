package com.twitter.model.people;

import com.twitter.util.object.e;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
class ai extends k<ag> {
    private ai() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, ag agVar) throws IOException {
        s.a(qVar, agVar.b, p.a);
        qVar.b(agVar.c);
    }

    protected ag a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new ag((List) e.a(s.a(pVar, p.a)), pVar.f());
    }
}
