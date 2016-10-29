package com.twitter.util.collection;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* compiled from: Twttr */
class u<T> implements Set<T> {
    private final Set<T> a;

    u(Set<T> set) {
        this.a = set;
    }

    public int size() {
        return this.a.size();
    }

    public boolean isEmpty() {
        return this.a.isEmpty();
    }

    public boolean contains(Object obj) {
        return this.a.contains(obj);
    }

    public Iterator<T> iterator() {
        return this.a.iterator();
    }

    public Object[] toArray() {
        return this.a.toArray();
    }

    public <U> U[] toArray(U[] uArr) {
        return this.a.toArray(uArr);
    }

    public boolean add(T t) {
        return this.a.add(t);
    }

    public boolean remove(Object obj) {
        return this.a.remove(obj);
    }

    public boolean containsAll(Collection<?> collection) {
        return this.a.containsAll(collection);
    }

    public boolean addAll(Collection<? extends T> collection) {
        return this.a.addAll(collection);
    }

    public boolean retainAll(Collection<?> collection) {
        return this.a.retainAll(collection);
    }

    public boolean removeAll(Collection<?> collection) {
        return this.a.removeAll(collection);
    }

    public void clear() {
        this.a.clear();
    }
}
