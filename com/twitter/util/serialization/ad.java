package com.twitter.util.serialization;

import com.twitter.util.object.e;
import java.io.IOException;
import java.util.Map;

/* compiled from: Twttr */
final class ad extends k<Map<K, V>> {
    final /* synthetic */ n a;
    final /* synthetic */ n b;

    ad(n nVar, n nVar2) {
        this.a = nVar;
        this.b = nVar2;
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, Map<K, V> map) throws IOException {
        s.a(qVar, map, this.a, this.b);
    }

    protected Map<K, V> a(p pVar, int i) throws IOException, ClassNotFoundException {
        return (Map) e.a(s.a(pVar, this.a, this.b));
    }
}
