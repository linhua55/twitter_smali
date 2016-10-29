package com.twitter.model.moments;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class az extends k<ax> {
    private az() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, ax axVar) throws IOException {
        qVar.e(axVar.c).e(axVar.b);
    }

    protected ax a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new ax(pVar.e(), pVar.e());
    }
}
