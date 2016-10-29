package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.producers.bc$com.facebook.imagepipeline.producers.be;
import java.io.Closeable;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* compiled from: Twttr */
public abstract class bc<K, T extends Closeable> implements bw<T> {
    @GuardedBy("this")
    final Map<K, be> a;
    private final bw<T> b;

    protected abstract T a(T t);

    protected abstract K b(bx bxVar);

    protected bc(bw<T> bwVar) {
        this.b = bwVar;
        this.a = new HashMap();
    }

    public void a(o<T> oVar, bx bxVar) {
        be a;
        Object b = b(bxVar);
        do {
            Object obj = null;
            synchronized (this) {
                a = a(b);
                if (a == null) {
                    a = b(b);
                    obj = 1;
                }
            }
        } while (!a.a(oVar, bxVar));
        if (obj != null) {
            be.a(a);
        }
    }

    private synchronized be a(K k) {
        return (be) this.a.get(k);
    }

    private synchronized be b(K k) {
        be beVar;
        beVar = new be(this, k);
        this.a.put(k, beVar);
        return beVar;
    }

    private synchronized void a(K k, be beVar) {
        if (this.a.get(k) == beVar) {
            this.a.remove(k);
        }
    }
}
