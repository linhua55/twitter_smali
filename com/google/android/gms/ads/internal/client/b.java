package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.search.a;
import com.google.android.gms.internal.oi;
import ih;
import java.util.Collections;
import java.util.Date;
import java.util.Map;
import java.util.Set;

@oi
public final class b {
    public static final String a;
    private final Date b;
    private final String c;
    private final int d;
    private final Set<String> e;
    private final Location f;
    private final boolean g;
    private final Bundle h;
    private final Map<Class<? extends Object>, Object> i;
    private final String j;
    private final String k;
    private final a l;
    private final int m;
    private final Set<String> n;
    private final Bundle o;
    private final Set<String> p;
    private final boolean q;

    static {
        a = aa.a().a("emulator");
    }

    public b(c cVar) {
        this(cVar, null);
    }

    public b(c cVar, a aVar) {
        this.b = c.a(cVar);
        this.c = c.b(cVar);
        this.d = c.c(cVar);
        this.e = Collections.unmodifiableSet(c.d(cVar));
        this.f = c.e(cVar);
        this.g = c.f(cVar);
        this.h = c.g(cVar);
        this.i = Collections.unmodifiableMap(c.h(cVar));
        this.j = c.i(cVar);
        this.k = c.j(cVar);
        this.l = aVar;
        this.m = c.k(cVar);
        this.n = Collections.unmodifiableSet(c.l(cVar));
        this.o = c.m(cVar);
        this.p = Collections.unmodifiableSet(c.n(cVar));
        this.q = c.o(cVar);
    }

    public Bundle a(Class<? extends ih> cls) {
        return this.h.getBundle(cls.getName());
    }

    public Date a() {
        return this.b;
    }

    public boolean a(Context context) {
        return this.n.contains(aa.a().a(context));
    }

    public String b() {
        return this.c;
    }

    public int c() {
        return this.d;
    }

    public Set<String> d() {
        return this.e;
    }

    public Location e() {
        return this.f;
    }

    public boolean f() {
        return this.g;
    }

    public String g() {
        return this.j;
    }

    public String h() {
        return this.k;
    }

    public a i() {
        return this.l;
    }

    public Map<Class<? extends Object>, Object> j() {
        return this.i;
    }

    public Bundle k() {
        return this.h;
    }

    public int l() {
        return this.m;
    }

    public Bundle m() {
        return this.o;
    }

    public Set<String> n() {
        return this.p;
    }

    public boolean o() {
        return this.q;
    }
}
