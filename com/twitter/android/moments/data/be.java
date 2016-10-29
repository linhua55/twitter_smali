package com.twitter.android.moments.data;

import java.util.Collection;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: Twttr */
public class be<T> {
    final ConcurrentHashMap<T, AtomicInteger> a;

    public be() {
        this.a = new ConcurrentHashMap();
    }

    public void a(List<T> list) {
        for (Object next : list) {
            synchronized (this) {
                AtomicInteger atomicInteger = (AtomicInteger) this.a.get(next);
                if (atomicInteger != null) {
                    atomicInteger.getAndIncrement();
                } else {
                    this.a.put(next, new AtomicInteger(1));
                }
            }
        }
    }

    public void b(List<T> list) {
        for (Object next : list) {
            synchronized (this) {
                AtomicInteger atomicInteger = (AtomicInteger) this.a.get(next);
                if (atomicInteger != null && atomicInteger.getAndDecrement() <= 1) {
                    this.a.remove(next);
                }
            }
        }
    }

    public synchronized Collection<T> a() {
        return this.a.keySet();
    }

    public synchronized void b() {
        this.a.clear();
    }
}
