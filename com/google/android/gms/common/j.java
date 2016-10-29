package com.google.android.gms.common;

import java.lang.ref.WeakReference;

abstract class j extends h {
    private static final WeakReference<byte[]> b;
    private WeakReference<byte[]> a;

    static {
        b = new WeakReference(null);
    }

    j(byte[] bArr) {
        super(bArr);
        this.a = b;
    }

    byte[] a() {
        byte[] bArr;
        synchronized (this) {
            bArr = (byte[]) this.a.get();
            if (bArr == null) {
                bArr = b();
                this.a = new WeakReference(bArr);
            }
        }
        return bArr;
    }

    protected abstract byte[] b();
}
