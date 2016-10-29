package org.spongycastle.crypto.generators;

import java.math.BigInteger;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.DerivationParameters;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.MacDerivationFunction;
import org.spongycastle.crypto.params.KDFCounterParameters;
import org.spongycastle.crypto.params.KeyParameter;

/* compiled from: Twttr */
public class KDFCounterBytesGenerator implements MacDerivationFunction {
    private static final BigInteger a;
    private static final BigInteger b;
    private final Mac c;
    private final int d;
    private byte[] e;
    private byte[] f;
    private int g;
    private byte[] h;
    private int i;
    private byte[] j;

    static {
        a = BigInteger.valueOf(2147483647L);
        b = BigInteger.valueOf(2);
    }

    public void a(DerivationParameters derivationParameters) {
        if (derivationParameters instanceof KDFCounterParameters) {
            KDFCounterParameters kDFCounterParameters = (KDFCounterParameters) derivationParameters;
            this.c.a(new KeyParameter(kDFCounterParameters.a()));
            this.e = kDFCounterParameters.b();
            this.f = kDFCounterParameters.c();
            int d = kDFCounterParameters.d();
            this.h = new byte[(d / 8)];
            BigInteger multiply = b.pow(d).multiply(BigInteger.valueOf((long) this.d));
            this.g = multiply.compareTo(a) == 1 ? Integer.MAX_VALUE : multiply.intValue();
            this.i = 0;
            return;
        }
        throw new IllegalArgumentException("Wrong type of arguments given");
    }

    public int a(byte[] bArr, int i, int i2) throws DataLengthException, IllegalArgumentException {
        int i3 = this.i + i2;
        if (i3 < 0 || i3 >= this.g) {
            throw new DataLengthException("Current KDFCTR may only be used for " + this.g + " bytes");
        }
        if (this.i % this.d == 0) {
            a();
        }
        i3 = this.i % this.d;
        int min = Math.min(this.d - (this.i % this.d), i2);
        System.arraycopy(this.j, i3, bArr, i, min);
        this.i += min;
        i3 = i2 - min;
        min += i;
        while (i3 > 0) {
            a();
            int min2 = Math.min(this.d, i3);
            System.arraycopy(this.j, 0, bArr, min, min2);
            this.i += min2;
            i3 -= min2;
            min += min2;
        }
        return i2;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a() {
        /*
        r5 = this;
        r4 = 0;
        r0 = r5.i;
        r1 = r5.d;
        r0 = r0 / r1;
        r0 = r0 + 1;
        r1 = r5.h;
        r1 = r1.length;
        switch(r1) {
            case 1: goto L_0x0036;
            case 2: goto L_0x002a;
            case 3: goto L_0x001e;
            case 4: goto L_0x0017;
            default: goto L_0x000e;
        };
    L_0x000e:
        r0 = new java.lang.IllegalStateException;
        r1 = "Unsupported size of counter i";
        r0.<init>(r1);
        throw r0;
    L_0x0017:
        r1 = r5.h;
        r2 = r0 >>> 24;
        r2 = (byte) r2;
        r1[r4] = r2;
    L_0x001e:
        r1 = r5.h;
        r2 = r5.h;
        r2 = r2.length;
        r2 = r2 + -3;
        r3 = r0 >>> 16;
        r3 = (byte) r3;
        r1[r2] = r3;
    L_0x002a:
        r1 = r5.h;
        r2 = r5.h;
        r2 = r2.length;
        r2 = r2 + -2;
        r3 = r0 >>> 8;
        r3 = (byte) r3;
        r1[r2] = r3;
    L_0x0036:
        r1 = r5.h;
        r2 = r5.h;
        r2 = r2.length;
        r2 = r2 + -1;
        r0 = (byte) r0;
        r1[r2] = r0;
        r0 = r5.c;
        r1 = r5.e;
        r2 = r5.e;
        r2 = r2.length;
        r0.a(r1, r4, r2);
        r0 = r5.c;
        r1 = r5.h;
        r2 = r5.h;
        r2 = r2.length;
        r0.a(r1, r4, r2);
        r0 = r5.c;
        r1 = r5.f;
        r2 = r5.f;
        r2 = r2.length;
        r0.a(r1, r4, r2);
        r0 = r5.c;
        r1 = r5.j;
        r0.a(r1, r4);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.crypto.generators.KDFCounterBytesGenerator.a():void");
    }
}
