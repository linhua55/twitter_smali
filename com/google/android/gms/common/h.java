package com.google.android.gms.common;

import com.google.android.gms.common.internal.bm;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

abstract class h {
    private int a;

    protected h(byte[] bArr) {
        bm.b(bArr.length == 25, "cert hash data has incorrect length");
        this.a = Arrays.hashCode(bArr);
    }

    protected static byte[] a(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    abstract byte[] a();

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof h)) {
            return false;
        }
        return Arrays.equals(a(), ((h) obj).a());
    }

    public int hashCode() {
        return this.a;
    }
}
