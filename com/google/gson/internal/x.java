package com.google.gson.internal;

import java.util.Map.Entry;

/* compiled from: Twttr */
final class x<K, V> implements Entry<K, V> {
    x<K, V> a;
    x<K, V> b;
    x<K, V> c;
    x<K, V> d;
    x<K, V> e;
    final K f;
    V g;
    int h;

    x() {
        this.f = null;
        this.e = this;
        this.d = this;
    }

    x(x<K, V> xVar, K k, x<K, V> xVar2, x<K, V> xVar3) {
        this.a = xVar;
        this.f = k;
        this.h = 1;
        this.d = xVar2;
        this.e = xVar3;
        xVar3.d = this;
        xVar2.e = this;
    }

    public K getKey() {
        return this.f;
    }

    public V getValue() {
        return this.g;
    }

    public V setValue(V v) {
        V v2 = this.g;
        this.g = v;
        return v2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Entry)) {
            return false;
        }
        Entry entry = (Entry) obj;
        if (this.f == null) {
            if (entry.getKey() != null) {
                return false;
            }
        } else if (!this.f.equals(entry.getKey())) {
            return false;
        }
        if (this.g == null) {
            if (entry.getValue() != null) {
                return false;
            }
        } else if (!this.g.equals(entry.getValue())) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = this.f == null ? 0 : this.f.hashCode();
        if (this.g != null) {
            i = this.g.hashCode();
        }
        return hashCode ^ i;
    }

    public String toString() {
        return this.f + "=" + this.g;
    }

    public x<K, V> a() {
        x<K, V> xVar;
        for (x<K, V> xVar2 = this.b; xVar2 != null; xVar2 = xVar2.b) {
            xVar = xVar2;
        }
        return xVar;
    }

    public x<K, V> b() {
        x<K, V> xVar;
        for (x<K, V> xVar2 = this.c; xVar2 != null; xVar2 = xVar2.c) {
            xVar = xVar2;
        }
        return xVar;
    }
}
