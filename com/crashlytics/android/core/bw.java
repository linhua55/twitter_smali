package com.crashlytics.android.core;

import io.fabric.sdk.android.services.common.ac;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: Twttr */
class bw implements ac {
    final /* synthetic */ byte[] a;
    final /* synthetic */ int[] b;
    final /* synthetic */ bv c;

    bw(bv bvVar, byte[] bArr, int[] iArr) {
        this.c = bvVar;
        this.a = bArr;
        this.b = iArr;
    }

    public void a(InputStream inputStream, int i) throws IOException {
        try {
            inputStream.read(this.a, this.b[0], i);
            int[] iArr = this.b;
            iArr[0] = iArr[0] + i;
        } finally {
            inputStream.close();
        }
    }
}
