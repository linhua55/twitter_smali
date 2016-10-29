package com.twitter.util.collection;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
public class ReferenceMap<K, V> implements Iterable<Entry<K, V>> {
    private final Map<K, Reference<V>> a;
    private final ReferenceQueue<V> b;
    private final ReferenceFactory c;
    private Iterable<K> d;
    private Iterable<V> e;
    private an<K> f;

    /* compiled from: Twttr */
    enum ReferenceFactory {
        WEAK {
            public <K, V, R extends Reference<V> & ak<K>> R a(K k, V v, ReferenceQueue<V> referenceQueue) {
                return new am(k, v, referenceQueue);
            }
        },
        SOFT {
            public <K, V, R extends Reference<V> & ak<K>> R a(K k, V v, ReferenceQueue<V> referenceQueue) {
                return new al(k, v, referenceQueue);
            }
        };

        public abstract <K, V, R extends Reference<V> & ak<K>> R a(K k, V v, ReferenceQueue<V> referenceQueue);
    }

    private ReferenceMap(ReferenceFactory referenceFactory) {
        this.b = new ReferenceQueue();
        this.a = new HashMap();
        this.c = referenceFactory;
    }

    public static <K, V> ReferenceMap<K, V> a() {
        return new ReferenceMap(ReferenceFactory.WEAK);
    }

    public static <K, V> ReferenceMap<K, V> b() {
        return new ReferenceMap(ReferenceFactory.SOFT);
    }

    public void a(an<K> anVar) {
        this.f = anVar;
    }

    public void c() {
        do {
        } while (this.b.poll() != null);
        this.a.clear();
    }

    public int d() {
        return this.a.size();
    }

    public V a(Object obj) {
        Reference reference = (Reference) this.a.get(obj);
        return reference != null ? reference.get() : null;
    }

    public V a(K k, V v) {
        e();
        if (v == null) {
            return b(k);
        }
        Reference reference = (Reference) this.a.put(k, this.c.a(k, v, this.b));
        return reference != null ? reference.get() : null;
    }

    public V b(K k) {
        e();
        Reference reference = (Reference) this.a.remove(k);
        return reference != null ? reference.get() : null;
    }

    public void e() {
        while (true) {
            Reference poll = this.b.poll();
            if (poll != null) {
                Object a = ((ak) poll).a();
                if (poll.equals((Reference) this.a.get(a))) {
                    this.a.remove(a);
                    if (this.f != null) {
                        this.f.a(a);
                    }
                }
            } else {
                return;
            }
        }
    }

    public Map<K, V> f() {
        e();
        Map<K, V> hashMap = new HashMap(this.a.size());
        Iterator it = iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            hashMap.put(entry.getKey(), entry.getValue());
        }
        return hashMap;
    }

    public Iterator<Entry<K, V>> iterator() {
        return new aj(this);
    }

    public Iterable<K> g() {
        if (this.d == null) {
            this.d = new af(this);
        }
        return this.d;
    }

    public Iterable<V> h() {
        if (this.e == null) {
            this.e = new ah(this);
        }
        return this.e;
    }
}
