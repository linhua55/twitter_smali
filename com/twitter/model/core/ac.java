package com.twitter.model.core;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;
import java.util.Iterator;

/* compiled from: Twttr */
class ac extends k<z> {
    private ac() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, z zVar) throws IOException {
        qVar.e(zVar.b());
        Iterator it = zVar.iterator();
        while (it.hasNext()) {
            MediaEntity.a.b(qVar, (MediaEntity) it.next());
        }
    }

    protected z a(p pVar, int i) throws IOException, ClassNotFoundException {
        int e = pVar.e();
        ab abVar = new ab();
        for (int i2 = 0; i2 < e; i2++) {
            abVar.a((e) MediaEntity.a.c(pVar));
        }
        return (z) abVar.f();
    }
}
