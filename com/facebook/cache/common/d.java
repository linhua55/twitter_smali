package com.facebook.cache.common;

import defpackage.bx;

/* compiled from: Twttr */
public class d implements a {
    final String a;

    public d(String str) {
        this.a = (String) bx.a((Object) str);
    }

    public String toString() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        return this.a.equals(((d) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }
}
