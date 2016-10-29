package com.twitter.model.moments;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class bc extends k<ba> {
    private bc() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, ba baVar) throws IOException {
        qVar.e(baVar.b).a(baVar.c, ab.a);
    }

    protected ba a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new ba(pVar.e(), (ab) ab.a.c(pVar));
    }
}
