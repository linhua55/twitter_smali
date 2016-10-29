package com.twitter.library.api;

import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public class z {
    public final String a;
    public final String b;
    public final long c;
    public final String d;
    public final boolean e;
    public final int f;
    public final String g;
    public final String h;
    public final String i;
    public final String j;
    public final String k;
    public final String l;
    public final String m;
    public final String n;

    private z(ab abVar) {
        this.a = abVar.a;
        this.b = abVar.b;
        this.c = abVar.c;
        this.d = abVar.d;
        this.e = abVar.e;
        this.f = abVar.f;
        this.g = abVar.g;
        this.h = abVar.h;
        this.i = abVar.i;
        this.j = abVar.j;
        this.k = abVar.k;
        this.l = abVar.l;
        this.m = abVar.m;
        this.n = abVar.n;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        z zVar = (z) obj;
        if (ObjectUtils.a(this.b, zVar.b) && this.e == zVar.e && this.f == zVar.f && this.c == zVar.c && ObjectUtils.a(this.a, zVar.a) && ObjectUtils.a(this.d, zVar.d) && ObjectUtils.a(this.g, zVar.g) && ObjectUtils.a(this.h, zVar.h) && ObjectUtils.a(this.i, zVar.i) && ObjectUtils.a(this.j, zVar.j) && ObjectUtils.a(this.k, zVar.k) && ObjectUtils.a(this.l, zVar.l) && ObjectUtils.a(this.m, zVar.m) && ObjectUtils.a(this.n, zVar.n)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ObjectUtils.a(new Object[]{this.a, this.b, Long.valueOf(this.c), this.d, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, Boolean.valueOf(this.e), Integer.valueOf(this.f)});
    }
}
