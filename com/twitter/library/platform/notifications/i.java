package com.twitter.library.platform.notifications;

import com.twitter.util.serialization.n;
import com.twitter.util.serialization.s;
import java.util.List;

/* compiled from: Twttr */
public class i {
    public static final n<i> a;
    public static final n<List<i>> b;
    public final int c;
    public final int d;
    public final String e;
    public final String f;
    public final String g;
    public final long h;
    public final String i;
    public final byte[] j;

    static {
        a = new k();
        b = s.a(new k());
    }

    public i(j jVar) {
        this.c = jVar.a;
        this.d = jVar.b;
        this.e = jVar.c;
        this.f = jVar.d;
        this.g = jVar.e;
        this.h = jVar.f;
        this.i = jVar.g;
        this.j = jVar.h;
    }
}
