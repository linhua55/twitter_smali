package com.google.android.gms.internal;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

class rw<T> extends zzk<InputStream> {
    private final rv<T> a;
    private final va<T> b;

    public rw(String str, rv<T> rvVar, va<T> vaVar) {
        super(0, str, new rx(vaVar, rvVar));
        this.a = rvVar;
        this.b = vaVar;
    }

    protected uy<InputStream> a(pn pnVar) {
        return uy.a(new ByteArrayInputStream(pnVar.b), yl.a(pnVar));
    }

    protected void a(InputStream inputStream) {
        this.b.a(this.a.b(inputStream));
    }

    protected /* synthetic */ void a(Object obj) {
        a((InputStream) obj);
    }
}
