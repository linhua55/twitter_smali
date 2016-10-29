package com.twitter.model.core;

import com.twitter.util.serialization.n;
import java.util.Comparator;

/* compiled from: Twttr */
public class bp {
    public static final n<bp> a;
    public static final Comparator<bp> b;
    public final EscherbirdAnnotation c;
    public final bt d;

    static {
        a = new bs(null);
        b = new br();
    }

    public bp(EscherbirdAnnotation escherbirdAnnotation, bt btVar) {
        this.c = escherbirdAnnotation;
        this.d = btVar;
    }

    public String a() {
        return String.valueOf(this.c.c.a());
    }

    public long b() {
        return this.c.d;
    }

    public String c() {
        return this.d.b;
    }

    public String d() {
        return this.d.c;
    }
}
