package com.twitter.model.core;

import com.twitter.util.serialization.n;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;
import java.util.Iterator;

/* compiled from: Twttr */
final class k extends com.twitter.util.serialization.k<j<T>> {
    final /* synthetic */ n a;

    k(n nVar) {
        this.a = nVar;
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, j<T> jVar) throws IOException {
        qVar.e(jVar.b());
        Iterator it = jVar.iterator();
        while (it.hasNext()) {
            this.a.b(qVar, (e) it.next());
        }
    }

    protected j<T> a(p pVar, int i) throws IOException, ClassNotFoundException {
        int e = pVar.e();
        m mVar = new m();
        for (int i2 = 0; i2 < e; i2++) {
            mVar.a((e) this.a.c(pVar));
        }
        return mVar.f();
    }
}
