package com.twitter.model.core;

import com.twitter.util.object.e;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class ap extends e {
    public static final n<ap> a;
    public static final n<j<ap>> b;
    public final long c;
    public final String i;
    public final String j;

    public /* synthetic */ f b() {
        return a();
    }

    static {
        a = new ar();
        b = j.a(a);
    }

    ap(aq aqVar) {
        super(aqVar);
        this.c = aqVar.a;
        this.i = e.b(aqVar.e);
        this.j = aqVar.f;
    }

    public aq a() {
        return new aq(this);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof ap) && a((ap) obj));
    }

    public boolean a(ap apVar) {
        return this == apVar || (super.a((e) apVar) && this.c == apVar.c);
    }

    public int hashCode() {
        return (super.hashCode() * 31) + ((int) (this.c ^ (this.c >>> 32)));
    }

    public String c() {
        return this.j != null ? this.j : this.i;
    }
}
