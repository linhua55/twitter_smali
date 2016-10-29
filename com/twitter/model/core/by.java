package com.twitter.model.core;

import com.twitter.util.object.e;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
class by extends k<bw> {
    private by() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, bw bwVar) throws IOException {
        s.a(qVar, bwVar.a(), bp.a);
    }

    protected bw a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new bw((List) e.a(s.a(pVar, bp.a)));
    }
}
