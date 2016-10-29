package com.facebook.imagepipeline.animated.impl;

import android.os.SystemClock;
import com.google.android.exoplayer.util.NalUnitUtil;

/* compiled from: Twttr */
class m {
    private final short[] a;

    public m() {
        this.a = new short[60];
    }

    void a(int i) {
        long uptimeMillis = SystemClock.uptimeMillis() / 1000;
        int i2 = (int) (uptimeMillis % 60);
        int i3 = (int) ((uptimeMillis / 60) & 255);
        short s = this.a[i2];
        int i4 = s & NalUnitUtil.EXTENDED_SAR;
        if (i3 == ((s >> 8) & NalUnitUtil.EXTENDED_SAR)) {
            i += i4;
        }
        this.a[i2] = (short) ((i3 << 8) | i);
    }

    int b(int i) {
        int i2 = 0;
        long uptimeMillis = SystemClock.uptimeMillis() / 1000;
        int i3 = (int) ((uptimeMillis - ((long) i)) % 60);
        int i4 = (int) ((uptimeMillis / 60) & 255);
        for (int i5 = 0; i5 < i; i5++) {
            short s = this.a[(i3 + i5) % 60];
            int i6 = s & NalUnitUtil.EXTENDED_SAR;
            if (((s >> 8) & NalUnitUtil.EXTENDED_SAR) == i4) {
                i2 += i6;
            }
        }
        return i2;
    }
}
