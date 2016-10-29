package com.twitter.android.moments.ui.fullscreen;

import com.twitter.util.collection.z;
import com.twitter.util.y;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
public class bn<K, T> {
    private final y<z<K, T>> a;
    private final Map<com.twitter.util.z<T>, com.twitter.util.z<z<K, T>>> b;

    bn() {
        this.a = new y();
        this.b = new HashMap();
    }

    public void a(com.twitter.util.z<z<K, T>> zVar) {
        this.a.a((com.twitter.util.z) zVar);
    }

    public void a(K k, com.twitter.util.z<T> zVar) {
        if (!this.b.containsKey(zVar)) {
            com.twitter.util.z boVar = new bo(this, k, zVar);
            this.a.a(boVar);
            this.b.put(zVar, boVar);
        }
    }

    public void b(com.twitter.util.z<T> zVar) {
        this.a.b((com.twitter.util.z) this.b.remove(zVar));
    }

    public void c(com.twitter.util.z<z<K, T>> zVar) {
        this.a.b(zVar);
    }

    public void a(K k, T t) {
        this.a.a(z.a(k, t));
    }
}
