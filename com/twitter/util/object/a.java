package com.twitter.util.object;

import com.twitter.util.collection.MutableMap;
import java.util.Map;

/* compiled from: Twttr */
public class a<A, V> {
    private final b<A, V> a;
    private final Map<A, V> b;

    public a(b<A, V> bVar) {
        this.b = MutableMap.a();
        this.a = bVar;
    }

    public synchronized V a(A a) {
        V v;
        if (this.b.containsKey(a)) {
            v = this.b.get(a);
        } else {
            v = this.a.a(a);
            this.b.put(a, v);
        }
        return v;
    }

    public synchronized V b(A a) {
        return this.b.remove(a);
    }
}
