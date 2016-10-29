package com.fasterxml.jackson.core.io;

import com.fasterxml.jackson.core.JsonEncoding;
import com.fasterxml.jackson.core.util.a;
import com.fasterxml.jackson.core.util.d;

/* compiled from: Twttr */
public class b {
    protected final Object a;
    protected JsonEncoding b;
    protected final boolean c;
    protected final a d;
    protected byte[] e;
    protected byte[] f;
    protected byte[] g;
    protected char[] h;
    protected char[] i;
    protected char[] j;

    public b(a aVar, Object obj, boolean z) {
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.d = aVar;
        this.a = obj;
        this.c = z;
    }

    public void a(JsonEncoding jsonEncoding) {
        this.b = jsonEncoding;
    }

    public Object a() {
        return this.a;
    }

    public JsonEncoding b() {
        return this.b;
    }

    public boolean c() {
        return this.c;
    }

    public d d() {
        return new d(this.d);
    }

    public byte[] e() {
        a(this.e);
        byte[] a = this.d.a(0);
        this.e = a;
        return a;
    }

    public byte[] f() {
        a(this.f);
        byte[] a = this.d.a(1);
        this.f = a;
        return a;
    }

    public char[] g() {
        a(this.h);
        char[] b = this.d.b(0);
        this.h = b;
        return b;
    }

    public char[] a(int i) {
        a(this.h);
        char[] b = this.d.b(0, i);
        this.h = b;
        return b;
    }

    public char[] h() {
        a(this.i);
        char[] b = this.d.b(1);
        this.i = b;
        return b;
    }

    public void a(byte[] bArr) {
        if (bArr != null) {
            a(bArr, this.e);
            this.e = null;
            this.d.a(0, bArr);
        }
    }

    public void b(byte[] bArr) {
        if (bArr != null) {
            a(bArr, this.f);
            this.f = null;
            this.d.a(1, bArr);
        }
    }

    public void a(char[] cArr) {
        if (cArr != null) {
            a(cArr, this.h);
            this.h = null;
            this.d.a(0, cArr);
        }
    }

    public void b(char[] cArr) {
        if (cArr != null) {
            a(cArr, this.i);
            this.i = null;
            this.d.a(1, cArr);
        }
    }

    public void c(char[] cArr) {
        if (cArr != null) {
            a(cArr, this.j);
            this.j = null;
            this.d.a(3, cArr);
        }
    }

    protected final void a(Object obj) {
        if (obj != null) {
            throw new IllegalStateException("Trying to call same allocXxx() method second time");
        }
    }

    protected final void a(byte[] bArr, byte[] bArr2) {
        if (bArr != bArr2 && bArr.length <= bArr2.length) {
            throw i();
        }
    }

    protected final void a(char[] cArr, char[] cArr2) {
        if (cArr != cArr2 && cArr.length <= cArr2.length) {
            throw i();
        }
    }

    private IllegalArgumentException i() {
        return new IllegalArgumentException("Trying to release buffer not owned by the context");
    }
}
