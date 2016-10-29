package com.google.android.gms.internal;

import java.io.UnsupportedEncodingException;

public class b extends zzk<String> {
    private final va<String> a;

    public b(int i, String str, va<String> vaVar, uz uzVar) {
        super(i, str, uzVar);
        this.a = vaVar;
    }

    public b(String str, va<String> vaVar, uz uzVar) {
        this(0, str, vaVar, uzVar);
    }

    protected uy<String> a(pn pnVar) {
        Object str;
        try {
            str = new String(pnVar.b, yl.a(pnVar.c));
        } catch (UnsupportedEncodingException e) {
            str = new String(pnVar.b);
        }
        return uy.a(str, yl.a(pnVar));
    }

    protected /* synthetic */ void a(Object obj) {
        a((String) obj);
    }

    protected void a(String str) {
        this.a.a(str);
    }
}
