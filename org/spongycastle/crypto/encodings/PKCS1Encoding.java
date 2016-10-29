package org.spongycastle.crypto.encodings;

import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.SecureRandom;
import org.spongycastle.crypto.AsymmetricBlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.ParametersWithRandom;

/* compiled from: Twttr */
public class PKCS1Encoding implements AsymmetricBlockCipher {
    private SecureRandom a;
    private AsymmetricBlockCipher b;
    private boolean c;
    private boolean d;
    private boolean e;
    private int f;
    private byte[] g;

    public PKCS1Encoding(AsymmetricBlockCipher asymmetricBlockCipher) {
        this.f = -1;
        this.g = null;
        this.b = asymmetricBlockCipher;
        this.e = c();
    }

    public PKCS1Encoding(AsymmetricBlockCipher asymmetricBlockCipher, byte[] bArr) {
        this.f = -1;
        this.g = null;
        this.b = asymmetricBlockCipher;
        this.e = c();
        this.g = bArr;
        this.f = bArr.length;
    }

    private boolean c() {
        String str = (String) AccessController.doPrivileged(new PrivilegedAction() {
            final /* synthetic */ PKCS1Encoding a;

            {
                this.a = r1;
            }

            public Object run() {
                return System.getProperty("org.spongycastle.pkcs1.strict");
            }
        });
        return str == null || str.equals("true");
    }

    public void a(boolean z, CipherParameters cipherParameters) {
        AsymmetricKeyParameter asymmetricKeyParameter;
        if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            this.a = parametersWithRandom.a();
            asymmetricKeyParameter = (AsymmetricKeyParameter) parametersWithRandom.b();
        } else {
            this.a = new SecureRandom();
            asymmetricKeyParameter = (AsymmetricKeyParameter) cipherParameters;
        }
        this.b.a(z, cipherParameters);
        this.d = asymmetricKeyParameter.a();
        this.c = z;
    }

    public int a() {
        int a = this.b.a();
        if (this.c) {
            return a - 10;
        }
        return a;
    }

    public int b() {
        int b = this.b.b();
        return this.c ? b : b - 10;
    }

    public byte[] a(byte[] bArr, int i, int i2) throws InvalidCipherTextException {
        if (this.c) {
            return b(bArr, i, i2);
        }
        return d(bArr, i, i2);
    }

    private byte[] b(byte[] bArr, int i, int i2) throws InvalidCipherTextException {
        int i3 = 1;
        if (i2 > a()) {
            throw new IllegalArgumentException("input data too large");
        }
        Object obj = new byte[this.b.a()];
        if (this.d) {
            obj[0] = 1;
            while (i3 != (obj.length - i2) - 1) {
                obj[i3] = (byte) -1;
                i3++;
            }
        } else {
            this.a.nextBytes(obj);
            obj[0] = (byte) 2;
            while (i3 != (obj.length - i2) - 1) {
                while (obj[i3] == null) {
                    obj[i3] = (byte) this.a.nextInt();
                }
                i3++;
            }
        }
        obj[(obj.length - i2) - 1] = null;
        System.arraycopy(bArr, i, obj, obj.length - i2, i2);
        return this.b.a(obj, 0, obj.length);
    }

    private static int a(byte[] bArr, int i) {
        int i2;
        int i3 = 0 | (bArr[0] ^ 2);
        int length = bArr.length - (i + 1);
        for (i2 = 1; i2 < length; i2++) {
            byte b = bArr[i2];
            int i4 = b | (b >> 1);
            i4 |= i4 >> 2;
            i3 |= ((i4 | (i4 >> 4)) & 1) - 1;
        }
        i2 = bArr[bArr.length - (i + 1)] | i3;
        i2 |= i2 >> 1;
        i2 |= i2 >> 2;
        return (((i2 | (i2 >> 4)) & 1) - 1) ^ -1;
    }

    private byte[] c(byte[] bArr, int i, int i2) throws InvalidCipherTextException {
        if (this.d) {
            byte[] bArr2;
            byte[] a = this.b.a(bArr, i, i2);
            if (this.g == null) {
                bArr2 = new byte[this.f];
                this.a.nextBytes(bArr2);
            } else {
                bArr2 = this.g;
            }
            if (a.length < b()) {
                throw new InvalidCipherTextException("block truncated");
            } else if (!this.e || a.length == this.b.b()) {
                int a2 = a(a, this.f);
                byte[] bArr3 = new byte[this.f];
                for (int i3 = 0; i3 < this.f; i3++) {
                    bArr3[i3] = (byte) ((a[(a.length - this.f) + i3] & (a2 ^ -1)) | (bArr2[i3] & a2));
                }
                return bArr3;
            } else {
                throw new InvalidCipherTextException("block incorrect size");
            }
        }
        throw new InvalidCipherTextException("sorry, this method is only for decryption, not for signing");
    }

    private byte[] d(byte[] bArr, int i, int i2) throws InvalidCipherTextException {
        if (this.f != -1) {
            return c(bArr, i, i2);
        }
        Object a = this.b.a(bArr, i, i2);
        if (a.length < b()) {
            throw new InvalidCipherTextException("block truncated");
        }
        byte b = a[0];
        if (this.d) {
            if (b != 2) {
                throw new InvalidCipherTextException("unknown block type");
            }
        } else if (b != (byte) 1) {
            throw new InvalidCipherTextException("unknown block type");
        }
        if (!this.e || a.length == this.b.b()) {
            int i3 = 1;
            while (i3 != a.length) {
                byte b2 = a[i3];
                if (b2 == null) {
                    break;
                } else if (b != (byte) 1 || b2 == (byte) -1) {
                    i3++;
                } else {
                    throw new InvalidCipherTextException("block padding incorrect");
                }
            }
            int i4 = i3 + 1;
            if (i4 > a.length || i4 < 10) {
                throw new InvalidCipherTextException("no data in block");
            }
            byte[] bArr2 = new byte[(a.length - i4)];
            System.arraycopy(a, i4, bArr2, 0, bArr2.length);
            return bArr2;
        }
        throw new InvalidCipherTextException("block incorrect size");
    }
}
