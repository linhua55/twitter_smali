package com.twitter.model.timeline;

import com.twitter.util.object.e;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
class n extends k<l> {
    private n() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, l lVar) throws IOException {
        qVar.a(lVar.b, i.a).a(lVar.c, s.a(i.a));
    }

    protected l a(p pVar, int i) throws IOException, ClassNotFoundException {
        return l.a((i) pVar.b(i.a), e.a((List) pVar.a(s.a(i.a))));
    }
}
