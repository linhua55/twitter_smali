package com.fasterxml.jackson.core.util;

import java.io.OutputStream;
import java.util.Iterator;
import java.util.LinkedList;

/* compiled from: Twttr */
public final class b extends OutputStream {
    public static final byte[] a;
    private final a b;
    private final LinkedList<byte[]> c;
    private int d;
    private byte[] e;
    private int f;

    static {
        a = new byte[0];
    }

    public b() {
        this(null);
    }

    public b(a aVar) {
        this(aVar, 500);
    }

    public b(a aVar, int i) {
        this.c = new LinkedList();
        this.b = aVar;
        this.e = aVar == null ? new byte[i] : aVar.a(2);
    }

    public void a() {
        this.d = 0;
        this.f = 0;
        if (!this.c.isEmpty()) {
            this.c.clear();
        }
    }

    public void a(int i) {
        if (this.f >= this.e.length) {
            g();
        }
        byte[] bArr = this.e;
        int i2 = this.f;
        this.f = i2 + 1;
        bArr[i2] = (byte) i;
    }

    public byte[] b() {
        int i = this.d + this.f;
        if (i == 0) {
            return a;
        }
        Object obj = new byte[i];
        Iterator it = this.c.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            byte[] bArr = (byte[]) it.next();
            int length = bArr.length;
            System.arraycopy(bArr, 0, obj, i2, length);
            i2 += length;
        }
        System.arraycopy(this.e, 0, obj, i2, this.f);
        int i3 = this.f + i2;
        if (i3 != i) {
            throw new RuntimeException("Internal error: total len assumed to be " + i + ", copied " + i3 + " bytes");
        }
        if (!this.c.isEmpty()) {
            a();
        }
        return obj;
    }

    public byte[] c() {
        a();
        return this.e;
    }

    public byte[] d() {
        g();
        return this.e;
    }

    public byte[] b(int i) {
        this.f = i;
        return b();
    }

    public byte[] e() {
        return this.e;
    }

    public void c(int i) {
        this.f = i;
    }

    public int f() {
        return this.f;
    }

    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    public void write(byte[] bArr, int i, int i2) {
        while (true) {
            int min = Math.min(this.e.length - this.f, i2);
            if (min > 0) {
                System.arraycopy(bArr, i, this.e, this.f, min);
                i += min;
                this.f += min;
                i2 -= min;
            }
            if (i2 > 0) {
                g();
            } else {
                return;
            }
        }
    }

    public void write(int i) {
        a(i);
    }

    public void close() {
    }

    public void flush() {
    }

    private void g() {
        int i = 262144;
        this.d += this.e.length;
        int max = Math.max(this.d >> 1, ExoPlayerImplInternal.MSG_SEEK_COMPLETE);
        if (max <= 262144) {
            i = max;
        }
        this.c.add(this.e);
        this.e = new byte[i];
        this.f = 0;
    }
}
