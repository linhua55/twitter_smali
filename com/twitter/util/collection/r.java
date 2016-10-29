package com.twitter.util.collection;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.f;
import defpackage.ctf;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
public abstract class r<K, V> extends f<Map<K, V>> implements Iterable<Entry<K, V>> {
    protected Map<K, V> a;
    private K b;
    private V c;
    private Map<K, V> d;

    protected abstract Map<K, V> b(int i);

    protected /* synthetic */ Object c() {
        return g();
    }

    public static <K, V> r<K, V> d() {
        return a(0);
    }

    public static <K, V> r<K, V> a(int i) {
        return new s(i);
    }

    public static <K, V> r<K, V> a(Comparator<? super K> comparator) {
        return new t(comparator);
    }

    public static <K, V> Map<K, V> e() {
        return ImmutableMap.a();
    }

    public static <K, V> Map<K, V> a(Entry<? extends K, ? extends V> entry) {
        return entry != null ? a(entry.getKey(), entry.getValue()) : e();
    }

    public static <K, V> Map<K, V> a(K k, V v) {
        return (k == null || v == null) ? e() : ImmutableMap.a((Object) k, (Object) v);
    }

    public static <K, V> Map<K, V> a(Map<? extends K, ? extends V> map) {
        if (CollectionUtils.b((Map) map)) {
            return e();
        }
        if (CollectionUtils.a((Map) map)) {
            return (Map) ObjectUtils.a((Object) map);
        }
        int size = map.size();
        if (size == 1) {
            return a((Entry) CollectionUtils.b(map.entrySet()));
        }
        Map a = map instanceof au ? MutableMap.a(((au) ObjectUtils.a((Object) map)).comparator()) : MutableMap.a(size);
        for (Entry entry : map.entrySet()) {
            if (!(entry.getKey() == null || entry.getValue() == null)) {
                a.put(entry.getKey(), entry.getValue());
            }
        }
        return ImmutableMap.a(a);
    }

    public static <K, V> Map<K, V> a(Comparator<? super K> comparator, Map<? extends K, ? extends V> map) {
        if (CollectionUtils.b((Map) map)) {
            return e();
        }
        if (CollectionUtils.a((Map) map) && (map instanceof au)) {
            return (Map) ObjectUtils.a((Object) map);
        }
        return (Map) a((Comparator) comparator).b((Map) map).q();
    }

    protected r() {
    }

    public final r<K, V> b(K k, V v) {
        if (k != null) {
            if (v == null) {
                a((Object) k);
            } else if (this.d != null) {
                throw new IllegalStateException("The map can't be modified once built.");
            } else if (this.a != null) {
                this.a.put(k, v);
            } else if (this.b != null) {
                this.a = b(0);
                this.a.put(this.b, this.c);
                this.b = null;
                this.c = null;
                this.a.put(k, v);
            } else {
                this.b = k;
                this.c = v;
            }
        }
        return this;
    }

    public final r<K, V> b(Map<? extends K, ? extends V> map) {
        if (map != null) {
            for (Entry entry : map.entrySet()) {
                b(entry.getKey(), entry.getValue());
            }
        }
        return this;
    }

    public final r<K, V> a(K k) {
        if (k != null) {
            if (this.d != null) {
                throw new IllegalStateException("The map can't be modified once built.");
            } else if (this.a != null) {
                this.a.remove(k);
            } else if (k.equals(this.b)) {
                this.b = null;
                this.c = null;
            }
        }
        return this;
    }

    public final Iterator<Entry<K, V>> iterator() {
        if (this.d != null) {
            return this.d.entrySet().iterator();
        }
        if (this.a != null) {
            return this.a.entrySet().iterator();
        }
        if (this.b != null) {
            return Collections.singletonMap(this.b, this.c).entrySet().iterator();
        }
        return ctf.c();
    }

    protected Map<K, V> g() {
        if (this.d != null) {
            return this.d;
        }
        Map<K, V> a;
        if (this.a != null) {
            a = ImmutableMap.a(this.a);
            this.a = null;
        } else if (this.b != null) {
            a = ImmutableMap.a(this.b, this.c);
            this.b = null;
            this.c = null;
        } else {
            a = ImmutableMap.a();
        }
        this.d = a;
        return a;
    }
}
