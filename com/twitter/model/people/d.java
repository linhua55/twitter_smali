package com.twitter.model.people;

import com.twitter.util.object.e;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import cto;
import java.io.IOException;

/* compiled from: Twttr */
abstract class d<P extends a, PB extends c<PB, P>> extends com.twitter.util.serialization.d<P, PB> {
    d() {
    }

    protected void a(p pVar, PB pb, int i) throws IOException, ClassNotFoundException {
        pb.a((l) pVar.a(l.a)).a(pVar.i()).a((aj) pVar.a(aj.a)).a(s.a(pVar, new f())).b(s.a(pVar, new e())).c(s.a(pVar, s.i));
    }

    protected void a(q qVar, P p) throws IOException {
        qVar.a(p.a, l.a).b(p.b).a(p.c, aj.a);
        s.a(qVar, cto.c(e.a(p.d)), new f());
        s.a(qVar, cto.c(e.a(p.e)), new e());
        s.a(qVar, cto.c(e.a(p.f)), s.i);
    }
}
