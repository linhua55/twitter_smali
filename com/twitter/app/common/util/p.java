package com.twitter.app.common.util;

import bbn;
import cfb;
import com.twitter.config.AppConfig;
import com.twitter.util.al;
import com.twitter.util.collection.n;
import com.twitter.util.object.e;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: Twttr */
public class p<T> {
    private final AtomicInteger a;
    private final Map<T, Long> b;
    private final Map<T, Long> c;
    private final long d;
    private final long e;
    private final int f;
    private long g;
    private q<T> h;

    public p(long j, long j2, int i) {
        this.a = new AtomicInteger();
        this.b = new WeakHashMap();
        this.c = new WeakHashMap();
        this.d = j;
        this.e = j2;
        this.f = i;
    }

    public int a() {
        return this.a.get();
    }

    public void a(q<T> qVar) {
        this.h = qVar;
    }

    public void a(T t) {
        this.a.incrementAndGet();
        synchronized (this.b) {
            this.b.put(t, Long.valueOf(al.b()));
        }
    }

    public void b(T t) {
        synchronized (this.b) {
            this.b.remove(t);
        }
        synchronized (this.c) {
            e();
            this.c.put(t, Long.valueOf(al.b()));
        }
    }

    public List<T> b() {
        n a = n.a(this.b.size());
        synchronized (this.b) {
            for (Object c : this.b.keySet()) {
                a.c(c);
            }
        }
        return (List) a.q();
    }

    public List<T> c() {
        int size = this.c.size();
        if (size == 0) {
            return n.g();
        }
        List<T> arrayList = new ArrayList(size);
        synchronized (this.c) {
            for (Object add : this.c.keySet()) {
                arrayList.add(add);
            }
        }
        return arrayList;
    }

    public List<T> d() {
        int size = this.c.size();
        if (size == 0) {
            return n.g();
        }
        List list = null;
        synchronized (this.c) {
            for (Entry entry : this.c.entrySet()) {
                List arrayList;
                long longValue = ((Long) entry.getValue()).longValue();
                Object key = entry.getKey();
                if (al.b() - longValue > this.e) {
                    if (list == null) {
                        arrayList = new ArrayList(size);
                    } else {
                        arrayList = list;
                    }
                    arrayList.add(key);
                } else {
                    arrayList = list;
                }
                list = arrayList;
            }
        }
        return e.a(list);
    }

    public long c(T t) {
        Long l = (Long) this.b.get(t);
        return l != null ? al.b() - l.longValue() : 0;
    }

    public long d(T t) {
        Long l = (Long) this.c.get(t);
        return l != null ? al.b() - l.longValue() : 0;
    }

    private void e() {
        long b = al.b();
        if (this.c.size() >= this.f && b - this.g > this.d) {
            List g = n.g();
            synchronized (this.c) {
                if (this.c.size() >= this.f) {
                    g = d();
                }
            }
            if (r0.size() >= this.f) {
                this.g = b;
                bbn.a(new LeakedResourceErrorLog(r0));
                if (AppConfig.m().a()) {
                    for (Object obj : r0) {
                        cfb.e("LifecycleTracker", obj.getClass().getSimpleName());
                    }
                }
                if (this.h != null) {
                    this.h.a(r0);
                }
            }
        }
    }
}
