package com.twitter.model.core;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class q extends e {
    public static final n<q> a;
    public static final n<j<q>> b;
    public final String c;
    public int i;
    public int j;

    public /* synthetic */ f b() {
        return a();
    }

    static {
        a = new s();
        b = j.a(a);
    }

    q(r rVar) {
        super(rVar);
        this.c = e.b(rVar.a);
        this.i = rVar.e;
        this.j = rVar.f;
    }

    public r a() {
        return new r(this);
    }

    public void b(int i) {
        this.i += i;
        this.j += i;
    }

    public void a(int i) {
        super.a(i);
        this.i += i;
        this.j += i;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof q) && a((q) obj));
    }

    public boolean a(q qVar) {
        return this == qVar || (super.a((e) qVar) && ObjectUtils.a(this.c, qVar.c));
    }

    public int hashCode() {
        return (super.hashCode() * 31) + ObjectUtils.b(this.c);
    }
}
