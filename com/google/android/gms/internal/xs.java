package com.google.android.gms.internal;

import java.io.IOException;

public abstract class xs {
    protected volatile int S;

    public xs() {
        this.S = -1;
    }

    public static final void a(xs xsVar, byte[] bArr, int i, int i2) {
        try {
            zzsn a = zzsn.a(bArr, i, i2);
            xsVar.a(a);
            a.b();
        } catch (Throwable e) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e);
        }
    }

    public static final byte[] a(xs xsVar) {
        byte[] bArr = new byte[xsVar.e()];
        a(xsVar, bArr, 0, bArr.length);
        return bArr;
    }

    public void a(zzsn com_google_android_gms_internal_zzsn) throws IOException {
    }

    protected int b() {
        return 0;
    }

    public abstract xs b(xm xmVar) throws IOException;

    public xs b_() throws CloneNotSupportedException {
        return (xs) super.clone();
    }

    public /* synthetic */ Object clone() throws CloneNotSupportedException {
        return b_();
    }

    public int d() {
        if (this.S < 0) {
            e();
        }
        return this.S;
    }

    public int e() {
        int b = b();
        this.S = b;
        return b;
    }

    public String toString() {
        return xt.a(this);
    }
}
