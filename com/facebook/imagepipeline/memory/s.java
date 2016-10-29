package com.facebook.imagepipeline.memory;

import com.facebook.common.references.c;
import java.util.LinkedList;
import javax.annotation.concurrent.NotThreadSafe;

@NotThreadSafe
/* compiled from: Twttr */
class s<V> extends e<V> {
    private LinkedList<c<V>> d;

    public s(int i, int i2, int i3) {
        super(i, i2, i3);
        this.d = new LinkedList();
    }

    public V d() {
        c cVar = (c) this.c.poll();
        V a = cVar.a();
        cVar.b();
        this.d.add(cVar);
        return a;
    }

    void b(V v) {
        c cVar = (c) this.d.poll();
        if (cVar == null) {
            cVar = new c();
        }
        cVar.a(v);
        this.c.add(cVar);
    }
}
