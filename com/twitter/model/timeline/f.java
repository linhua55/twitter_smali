package com.twitter.model.timeline;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
class f extends k<e> {
    private f() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, e eVar) throws IOException {
        qVar.b(eVar.b).e(eVar.c).e(eVar.e).a(eVar.d, s.a(g.a));
    }

    protected e a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new e(pVar.f(), pVar.e(), (List) pVar.a(s.a(g.a)), pVar.e());
    }
}
