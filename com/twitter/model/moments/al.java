package com.twitter.model.moments;

import com.twitter.util.object.e;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;
import java.util.Map;

/* compiled from: Twttr */
class al extends k<aj> {
    private al() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, aj ajVar) throws IOException {
        qVar.a(ajVar.b, s.a(s.i, s.i));
    }

    protected aj a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new aj(e.a((Map) pVar.a(s.a(s.i, s.i))));
    }
}
