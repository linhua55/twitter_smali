package com.twitter.model.av;

import java.util.Set;

/* compiled from: Twttr */
public class n {
    public static final com.twitter.util.serialization.n<n> a;
    private final boolean b;
    private final Set<Integer> c;
    private final Set<Integer> d;
    private final Set<Integer> e;
    private final Set<Integer> f;
    private final Set<Integer> g;

    static {
        a = new q(null);
    }

    private n(boolean z, Set<Integer> set, Set<Integer> set2, Set<Integer> set3, Set<Integer> set4, Set<Integer> set5) {
        this.b = z;
        this.c = set;
        this.d = set2;
        this.e = set3;
        this.f = set4;
        this.g = set5;
    }

    public boolean a() {
        return this.b;
    }

    public Set<Integer> b() {
        return this.c;
    }

    public Set<Integer> c() {
        return this.d;
    }

    public Set<Integer> d() {
        return this.e;
    }

    public Set<Integer> e() {
        return this.f;
    }

    public Set<Integer> f() {
        return this.g;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        n nVar = (n) obj;
        if (this.b == nVar.b && this.c.equals(nVar.c) && this.d.equals(nVar.d) && this.e.equals(nVar.e) && this.f.equals(nVar.f)) {
            return this.g.equals(nVar.g);
        }
        return false;
    }

    public int hashCode() {
        return ((((Boolean.valueOf(this.b).hashCode() + (this.c.hashCode() * 31)) + (this.d.hashCode() * 31)) + (this.e.hashCode() * 31)) + (this.f.hashCode() * 31)) + (this.g.hashCode() * 31);
    }
}
