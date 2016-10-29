package com.google.android.gms.internal;

import com.google.android.exoplayer.util.NalUnitUtil;

public class xl {
    private final byte[] a;
    private int b;
    private int c;

    public xl(byte[] bArr) {
        int i;
        this.a = new byte[256];
        for (i = 0; i < 256; i++) {
            this.a[i] = (byte) i;
        }
        i = 0;
        for (int i2 = 0; i2 < 256; i2++) {
            i = ((i + this.a[i2]) + bArr[i2 % bArr.length]) & NalUnitUtil.EXTENDED_SAR;
            byte b = this.a[i2];
            this.a[i2] = this.a[i];
            this.a[i] = b;
        }
        this.b = 0;
        this.c = 0;
    }

    public void a(byte[] bArr) {
        int i = this.b;
        int i2 = this.c;
        for (int i3 = 0; i3 < bArr.length; i3++) {
            i = (i + 1) & NalUnitUtil.EXTENDED_SAR;
            i2 = (i2 + this.a[i]) & NalUnitUtil.EXTENDED_SAR;
            byte b = this.a[i];
            this.a[i] = this.a[i2];
            this.a[i2] = b;
            bArr[i3] = (byte) (bArr[i3] ^ this.a[(this.a[i] + this.a[i2]) & NalUnitUtil.EXTENDED_SAR]);
        }
        this.b = i;
        this.c = i2;
    }
}
