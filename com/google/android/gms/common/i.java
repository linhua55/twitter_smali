package com.google.android.gms.common;

import java.util.Arrays;

class i extends h {
    private final byte[] a;

    i(byte[] bArr) {
        super(Arrays.copyOfRange(bArr, 0, 25));
        this.a = bArr;
    }

    byte[] a() {
        return this.a;
    }
}
