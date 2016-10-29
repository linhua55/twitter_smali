package com.google.android.gms.internal;

import java.util.Comparator;

final class ye implements Comparator<byte[]> {
    ye() {
    }

    public int a(byte[] bArr, byte[] bArr2) {
        return bArr.length - bArr2.length;
    }

    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((byte[]) obj, (byte[]) obj2);
    }
}
