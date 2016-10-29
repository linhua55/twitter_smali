package com.twitter.util.ui;

import java.util.Arrays;

/* compiled from: Twttr */
class m {
    int[] a;
    int[] b;

    m(int[] iArr) {
        int i;
        int i2 = 0;
        int i3 = -1;
        this.a = null;
        this.b = null;
        int length = iArr.length;
        int[] iArr2 = new int[length];
        for (i = 0; i < length; i++) {
            iArr2[i] = 16777215 & iArr[i];
        }
        Arrays.sort(iArr2);
        length = -1;
        int i4 = -1;
        for (i = 0; i < iArr2.length; i++) {
            if (iArr2[i] != length) {
                i4++;
                length = iArr2[i];
            }
        }
        i = i4 + 1;
        this.a = new int[i];
        this.b = new int[i];
        i = -1;
        while (i2 < iArr2.length) {
            if (iArr2[i2] != i3) {
                i++;
                i3 = iArr2[i2];
                this.a[i] = i3;
                this.b[i] = 1;
            } else {
                int[] iArr3 = this.b;
                iArr3[i] = iArr3[i] + 1;
            }
            i2++;
        }
    }

    public int a() {
        if (this.a == null) {
            return 0;
        }
        return this.a.length;
    }

    public int a(int i) {
        return this.a[i];
    }

    public int b(int i) {
        return this.b[i];
    }
}
