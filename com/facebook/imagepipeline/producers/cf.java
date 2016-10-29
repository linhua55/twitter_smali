package com.facebook.imagepipeline.producers;

import defpackage.bl;
import java.util.Map;

/* compiled from: Twttr */
public abstract class cf<T> extends bl<T> {
    private final o<T> b;
    private final bz c;
    private final String d;
    private final String e;

    protected abstract void b(T t);

    public cf(o<T> oVar, bz bzVar, String str, String str2) {
        this.b = oVar;
        this.c = bzVar;
        this.d = str;
        this.e = str2;
        this.c.a(this.e, this.d);
    }

    protected void a(T t) {
        this.c.a(this.e, this.d, this.c.b(this.e) ? c(t) : null);
        this.b.b(t, true);
    }

    protected void a(Exception exception) {
        this.c.a(this.e, this.d, exception, this.c.b(this.e) ? b(exception) : null);
        this.b.b((Throwable) exception);
    }

    protected void b() {
        this.c.b(this.e, this.d, this.c.b(this.e) ? e() : null);
        this.b.b();
    }

    protected Map<String, String> c(T t) {
        return null;
    }

    protected Map<String, String> b(Exception exception) {
        return null;
    }

    protected Map<String, String> e() {
        return null;
    }
}
