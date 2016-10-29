package com.twitter.library.media.util;

import java.util.HashSet;
import java.util.Set;

/* compiled from: Twttr */
class g implements d {
    private final Set<d> a;

    g() {
        this.a = new HashSet();
    }

    public void a() {
        for (d a : this.a) {
            a.a();
        }
    }

    public void b() {
        for (d b : this.a) {
            b.b();
        }
    }

    public void c() {
        for (d c : this.a) {
            c.c();
        }
    }

    public void d() {
        for (d d : this.a) {
            d.d();
        }
    }

    public void a(d dVar) {
        this.a.add(dVar);
    }

    public void b(d dVar) {
        this.a.remove(dVar);
    }

    public void e() {
        this.a.clear();
    }

    public boolean f() {
        return !this.a.isEmpty();
    }
}
