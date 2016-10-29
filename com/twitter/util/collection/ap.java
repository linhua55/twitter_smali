package com.twitter.util.collection;

import com.twitter.util.concurrent.n;
import com.twitter.util.j;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: Twttr */
public class ap<K, V> {
    private final Map<K, V> a;
    private final AtomicInteger b;
    private final ThreadLocal<List<Map<K, V>>> c;

    public ap() {
        this.a = MutableMap.a();
        this.b = new AtomicInteger();
        this.c = new aq(this);
    }

    public boolean a(K k) {
        boolean containsKey;
        synchronized (this.a) {
            containsKey = this.a.containsKey(k);
        }
        return containsKey;
    }

    public V b(K k, V v) {
        V put;
        synchronized (this.a) {
            if (v != null) {
                put = this.a.put(k, v);
            } else {
                put = this.a.remove(k);
            }
        }
        return put;
    }

    public int a() {
        List list = (List) this.c.get();
        if (list.isEmpty()) {
            this.b.incrementAndGet();
        }
        list.add(MutableMap.a());
        return list.size();
    }

    public int b() {
        List list = (List) this.c.get();
        if (!j.a(!list.isEmpty(), "A local scope is not active")) {
            return 0;
        }
        list.remove(list.size() - 1);
        if (list.isEmpty()) {
            this.b.decrementAndGet();
        }
        return list.size() + 1;
    }

    public <T> T a(n<T> nVar) {
        a();
        try {
            T call = nVar.call();
            return call;
        } finally {
            b();
        }
    }

    public boolean c() {
        return !((List) this.c.get()).isEmpty();
    }

    public void d() {
        if (!j.a(!c(), "A local scope was not properly cleaned up")) {
            ((List) this.c.get()).clear();
        }
    }

    public V a(K k, V v) {
        Map map = (Map) CollectionUtils.c((List) this.c.get());
        if (j.a(map != null, "Trying to put a local value outside of a local scope")) {
            return map.put(k, v);
        }
        return null;
    }

    public Map<K, V> e() {
        r d = r.d();
        synchronized (this.a) {
            d.b(this.a);
        }
        for (Map b : (List) this.c.get()) {
            d.b(b);
        }
        return (Map) d.q();
    }
}
