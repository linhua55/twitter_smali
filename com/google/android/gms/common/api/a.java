package com.google.android.gms.common.api;

import com.google.android.gms.common.internal.bm;

public final class a<O extends b> {
    private final g<?, O> a;
    private final k<?, O> b;
    private final i<?> c;
    private final l<?> d;
    private final String e;

    public <C extends h> a(String str, g<C, O> gVar, i<C> iVar) {
        bm.a(gVar, "Cannot construct an Api with a null ClientBuilder");
        bm.a(iVar, "Cannot construct an Api with a null ClientKey");
        this.e = str;
        this.a = gVar;
        this.b = null;
        this.c = iVar;
        this.d = null;
    }

    public g<?, O> a() {
        bm.a(this.a != null, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder");
        return this.a;
    }

    public k<?, O> b() {
        bm.a(this.b != null, "This API was constructed with a ClientBuilder. Use getClientBuilder");
        return this.b;
    }

    public i<?> c() {
        bm.a(this.c != null, "This API was constructed with a SimpleClientKey. Use getSimpleClientKey");
        return this.c;
    }

    public boolean d() {
        return this.d != null;
    }

    public String e() {
        return this.e;
    }
}
