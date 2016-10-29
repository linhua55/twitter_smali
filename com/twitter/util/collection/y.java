package com.twitter.util.collection;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.n;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
final class y extends k<x<T>> {
    final /* synthetic */ n a;

    y(n nVar) {
        this.a = nVar;
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, x<T> xVar) throws IOException {
        this.a.b(qVar, x.a((x) xVar));
    }

    protected x<T> a(p pVar, int i) throws IOException, ClassNotFoundException {
        return x.b(this.a.a(pVar));
    }
}
