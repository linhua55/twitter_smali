package defpackage;

import java.util.Arrays;

/* compiled from: Twttr */
/* renamed from: hr */
public final class hr extends hn {
    private final int c;
    private final int d;
    private final int e;
    private final int f;
    private final int g;
    private final int[] h;

    hr(String str, int i, int i2, int i3, int i4, int i5, int[] iArr, int i6) {
        super(str, i);
        this.c = i2;
        this.d = i3;
        this.e = i4;
        this.f = i5;
        this.h = iArr;
        this.g = i6;
    }

    public static hr a(String str, int i, int[] iArr, int i2) {
        if (i2 < 4) {
            throw new IllegalArgumentException();
        }
        int[] copyOfRange;
        int i3 = iArr[0];
        int i4 = iArr[1];
        int i5 = iArr[2];
        int i6 = iArr[3];
        if (i2 - 4 > 0) {
            copyOfRange = Arrays.copyOfRange(iArr, 4, i2);
        } else {
            copyOfRange = null;
        }
        return new hr(str, i, i3, i4, i5, i6, copyOfRange, i2);
    }

    public boolean a(int i) {
        return false;
    }

    public boolean a(int i, int i2) {
        return false;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(int[] r7, int r8) {
        /*
        r6 = this;
        r5 = 3;
        r4 = 2;
        r1 = 1;
        r0 = 0;
        r2 = r6.g;
        if (r8 == r2) goto L_0x0009;
    L_0x0008:
        return r0;
    L_0x0009:
        r2 = r7[r0];
        r3 = r6.c;
        if (r2 != r3) goto L_0x0008;
    L_0x000f:
        r2 = r7[r1];
        r3 = r6.d;
        if (r2 != r3) goto L_0x0008;
    L_0x0015:
        r2 = r7[r4];
        r3 = r6.e;
        if (r2 != r3) goto L_0x0008;
    L_0x001b:
        r2 = r7[r5];
        r3 = r6.f;
        if (r2 != r3) goto L_0x0008;
    L_0x0021:
        switch(r8) {
            case 4: goto L_0x004d;
            case 5: goto L_0x0044;
            case 6: goto L_0x003b;
            case 7: goto L_0x0032;
            case 8: goto L_0x0029;
            default: goto L_0x0024;
        };
    L_0x0024:
        r0 = r6.a(r7);
        goto L_0x0008;
    L_0x0029:
        r2 = 7;
        r2 = r7[r2];
        r3 = r6.h;
        r3 = r3[r5];
        if (r2 != r3) goto L_0x0008;
    L_0x0032:
        r2 = 6;
        r2 = r7[r2];
        r3 = r6.h;
        r3 = r3[r4];
        if (r2 != r3) goto L_0x0008;
    L_0x003b:
        r2 = 5;
        r2 = r7[r2];
        r3 = r6.h;
        r3 = r3[r1];
        if (r2 != r3) goto L_0x0008;
    L_0x0044:
        r2 = 4;
        r2 = r7[r2];
        r3 = r6.h;
        r3 = r3[r0];
        if (r2 != r3) goto L_0x0008;
    L_0x004d:
        r0 = r1;
        goto L_0x0008;
        */
        throw new UnsupportedOperationException("Method not decompiled: hr.a(int[], int):boolean");
    }

    private final boolean a(int[] iArr) {
        int i = this.g - 4;
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2 + 4] != this.h[i2]) {
                return false;
            }
        }
        return true;
    }
}
