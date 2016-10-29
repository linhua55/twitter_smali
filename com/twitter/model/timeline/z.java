package com.twitter.model.timeline;

import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
class z extends d<w, y> {
    private z() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected void a(q qVar, w wVar) throws IOException {
        qVar.b(wVar.b).a(wVar.c, aj.a).a(wVar.d, s.a(s.f));
    }

    protected y a() {
        return new y();
    }

    protected void a(p pVar, y yVar, int i) throws IOException, ClassNotFoundException {
        yVar.a(pVar.i()).a((aj) pVar.a(aj.a)).a((List) pVar.a(s.a(s.f)));
    }
}
