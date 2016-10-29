package com.twitter.model.core;

import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.n;
import com.twitter.util.object.ObjectUtils;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* compiled from: Twttr */
public class j<T extends e> implements Iterable<T> {
    private static final j a;
    private final List<T> b;

    static {
        a = new j(n.g());
    }

    public static <T extends e> j<T> a() {
        return (j) ObjectUtils.a(a);
    }

    public static <T extends e> j<T> a(List<T> list) {
        if (CollectionUtils.a((Collection) list) && CollectionUtils.a((Collection) list, e.e)) {
            return new j(list);
        }
        return (j) ((m) new m(list.size()).a((Iterable) list)).q();
    }

    j(List<T> list) {
        this.b = list;
    }

    public int b() {
        return this.b.size();
    }

    public boolean c() {
        return this.b.isEmpty();
    }

    public T a(int i) {
        return (e) this.b.get(i);
    }

    public Iterator<T> iterator() {
        return this.b.iterator();
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof j) && this.b.equals(((j) obj).b));
    }

    public int hashCode() {
        return this.b.hashCode();
    }

    List<T> d() {
        return this.b;
    }

    void a(int i, int i2) {
        for (e eVar : this.b) {
            if (eVar.g > i) {
                eVar.a(i2);
            }
        }
    }

    public static <T extends e> com.twitter.util.serialization.n<j<T>> a(com.twitter.util.serialization.n<T> nVar) {
        return new k(nVar);
    }
}
