package com.twitter.library.commerce.model;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
class x extends k<v> {
    private x() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, v vVar) throws IOException {
        qVar.a(vVar.b(), s.f).a(vVar.a(), s.a(r.a));
    }

    protected v a(p pVar, int i) throws IOException, ClassNotFoundException {
        Long l = (Long) pVar.a(s.f);
        List<r> list = (List) pVar.a(s.a(r.a));
        v vVar = new v();
        vVar.a(l);
        for (r a : list) {
            vVar.a(a);
        }
        return vVar;
    }
}
