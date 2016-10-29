package org.spongycastle.jce.spec;

import java.security.spec.AlgorithmParameterSpec;
import org.spongycastle.util.Arrays;

/* compiled from: Twttr */
public class IESParameterSpec implements AlgorithmParameterSpec {
    private byte[] a;
    private byte[] b;
    private int c;
    private int d;
    private byte[] e;

    public IESParameterSpec(byte[] bArr, byte[] bArr2, int i) {
        this(bArr, bArr2, i, -1);
    }

    public IESParameterSpec(byte[] bArr, byte[] bArr2, int i, int i2) {
        this(bArr, bArr2, i, i2, null);
    }

    public IESParameterSpec(byte[] bArr, byte[] bArr2, int i, int i2, byte[] bArr3) {
        if (bArr != null) {
            this.a = new byte[bArr.length];
            System.arraycopy(bArr, 0, this.a, 0, bArr.length);
        } else {
            this.a = null;
        }
        if (bArr2 != null) {
            this.b = new byte[bArr2.length];
            System.arraycopy(bArr2, 0, this.b, 0, bArr2.length);
        } else {
            this.b = null;
        }
        this.c = i;
        this.d = i2;
        this.e = Arrays.b(bArr3);
    }

    public byte[] a() {
        return Arrays.b(this.a);
    }

    public byte[] b() {
        return Arrays.b(this.b);
    }

    public int c() {
        return this.c;
    }

    public int d() {
        return this.d;
    }

    public byte[] e() {
        return Arrays.b(this.e);
    }
}
