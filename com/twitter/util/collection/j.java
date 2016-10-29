package com.twitter.util.collection;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.n;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
final class j extends k<ImmutableMap<K, V>> {
    final /* synthetic */ n a;
    final /* synthetic */ n b;

    j(n nVar, n nVar2) {
        this.a = nVar;
        this.b = nVar2;
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, ImmutableMap<K, V> immutableMap) throws IOException {
        ImmutableMap.a(qVar, immutableMap, this.a, this.b);
    }

    protected ImmutableMap<K, V> a(p pVar, int i) throws IOException, ClassNotFoundException {
        return ImmutableMap.a(pVar, this.a, this.b);
    }
}
