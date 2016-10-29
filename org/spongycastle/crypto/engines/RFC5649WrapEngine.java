package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.Wrapper;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Pack;

/* compiled from: Twttr */
public class RFC5649WrapEngine implements Wrapper {
    private BlockCipher a;
    private KeyParameter b;
    private boolean c;
    private byte[] d;
    private byte[] e;
    private byte[] f;

    public RFC5649WrapEngine(BlockCipher blockCipher) {
        this.d = new byte[]{(byte) -90, (byte) 89, (byte) 89, (byte) -90};
        this.e = this.d;
        this.f = null;
        this.a = blockCipher;
    }

    public void a(boolean z, CipherParameters cipherParameters) {
        CipherParameters b;
        this.c = z;
        if (cipherParameters instanceof ParametersWithRandom) {
            b = ((ParametersWithRandom) cipherParameters).b();
        } else {
            b = cipherParameters;
        }
        if (b instanceof KeyParameter) {
            this.b = (KeyParameter) b;
        } else if (b instanceof ParametersWithIV) {
            this.e = ((ParametersWithIV) b).a();
            this.b = (KeyParameter) ((ParametersWithIV) b).b();
            if (this.e.length != 4) {
                throw new IllegalArgumentException("IV length not equal to 4");
            }
        }
    }

    public String a() {
        return this.a.a();
    }

    private byte[] a(byte[] bArr) {
        int length = bArr.length;
        int i = (8 - (length % 8)) % 8;
        Object obj = new byte[(length + i)];
        System.arraycopy(bArr, 0, obj, 0, length);
        if (i != 0) {
            System.arraycopy(new byte[i], 0, obj, length, i);
        }
        return obj;
    }

    public byte[] a(byte[] bArr, int i, int i2) {
        int i3 = 0;
        if (this.c) {
            Object obj = new byte[8];
            Object a = Pack.a(i2);
            System.arraycopy(this.e, 0, obj, 0, this.e.length);
            System.arraycopy(a, 0, obj, this.e.length, a.length);
            a = new byte[i2];
            System.arraycopy(bArr, i, a, 0, i2);
            Object a2 = a(a);
            if (a2.length == 8) {
                a = new byte[(a2.length + obj.length)];
                System.arraycopy(obj, 0, a, 0, obj.length);
                System.arraycopy(a2, 0, a, obj.length, a2.length);
                this.a.a(true, this.b);
                while (i3 < a.length) {
                    this.a.a(a, i3, a, i3);
                    i3 += this.a.b();
                }
                return a;
            }
            Wrapper rFC3394WrapEngine = new RFC3394WrapEngine(this.a);
            rFC3394WrapEngine.a(true, new ParametersWithIV(this.b, obj));
            return rFC3394WrapEngine.a(a2, i, a2.length);
        }
        throw new IllegalStateException("not set for wrapping");
    }

    public byte[] b(byte[] bArr, int i, int i2) throws InvalidCipherTextException {
        boolean z = true;
        if (this.c) {
            throw new IllegalStateException("not set for unwrapping");
        }
        int i3 = i2 / 8;
        if (i3 * 8 != i2) {
            throw new InvalidCipherTextException("unwrap data must be a multiple of 8 bytes");
        } else if (i3 == 1) {
            throw new InvalidCipherTextException("unwrap data must be at least 16 bytes");
        } else {
            Object obj;
            Object obj2 = new byte[i2];
            System.arraycopy(bArr, i, obj2, 0, i2);
            Object obj3 = new byte[i2];
            if (i3 == 2) {
                this.a.a(false, this.b);
                i3 = 0;
                while (i3 < obj2.length) {
                    this.a.a(obj2, i3, obj3, i3);
                    i3 += this.a.b();
                }
                this.f = new byte[8];
                System.arraycopy(obj3, 0, this.f, 0, this.f.length);
                obj = new byte[(obj3.length - this.f.length)];
                System.arraycopy(obj3, this.f.length, obj, 0, obj.length);
            } else {
                obj = c(bArr, i, i2);
            }
            byte[] bArr2 = new byte[4];
            obj3 = new byte[4];
            System.arraycopy(this.f, 0, bArr2, 0, bArr2.length);
            System.arraycopy(this.f, bArr2.length, obj3, 0, obj3.length);
            int a = Pack.a(obj3, 0);
            if (!Arrays.b(bArr2, this.e)) {
                z = false;
            }
            int length = obj.length;
            if (a <= length - 8) {
                z = false;
            }
            if (a > length) {
                z = false;
            }
            length -= a;
            byte[] bArr3 = new byte[length];
            byte[] bArr4 = new byte[length];
            System.arraycopy(obj, obj.length - length, bArr4, 0, length);
            if (!Arrays.b(bArr4, bArr3)) {
                z = false;
            }
            obj2 = new byte[a];
            System.arraycopy(obj, 0, obj2, 0, obj2.length);
            if (z) {
                return obj2;
            }
            throw new InvalidCipherTextException("checksum failed");
        }
    }

    private byte[] c(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[8];
        Object obj = new byte[(i2 - bArr2.length)];
        Object obj2 = new byte[bArr2.length];
        Object obj3 = new byte[(bArr2.length + 8)];
        System.arraycopy(bArr, i, obj2, 0, bArr2.length);
        System.arraycopy(bArr, bArr2.length + i, obj, 0, i2 - bArr2.length);
        this.a.a(false, this.b);
        int i3 = (i2 / 8) - 1;
        for (int i4 = 5; i4 >= 0; i4--) {
            for (int i5 = i3; i5 >= 1; i5--) {
                System.arraycopy(obj2, 0, obj3, 0, bArr2.length);
                System.arraycopy(obj, (i5 - 1) * 8, obj3, bArr2.length, 8);
                int i6 = (i3 * i4) + i5;
                int i7 = 1;
                while (i6 != 0) {
                    int length = bArr2.length - i7;
                    obj3[length] = (byte) (((byte) i6) ^ obj3[length]);
                    i6 >>>= 8;
                    i7++;
                }
                this.a.a(obj3, 0, obj3, 0);
                System.arraycopy(obj3, 0, obj2, 0, 8);
                System.arraycopy(obj3, 8, obj, (i5 - 1) * 8, 8);
            }
        }
        this.f = obj2;
        return obj;
    }
}
