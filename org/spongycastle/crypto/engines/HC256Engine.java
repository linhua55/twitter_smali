package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.StreamCipher;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;

/* compiled from: Twttr */
public class HC256Engine implements StreamCipher {
    private int[] a;
    private int[] b;
    private int c;
    private byte[] d;
    private byte[] e;
    private boolean f;
    private byte[] g;
    private int h;

    public HC256Engine() {
        this.a = new int[1024];
        this.b = new int[1024];
        this.c = 0;
        this.g = new byte[4];
        this.h = 0;
    }

    private int b() {
        int i = this.c & 1023;
        int i2;
        int i3;
        int[] iArr;
        if (this.c < 1024) {
            i2 = this.a[(i - 3) & 1023];
            i3 = this.a[(i - 1023) & 1023];
            iArr = this.a;
            iArr[i] = (this.b[(i2 ^ i3) & 1023] + (this.a[(i - 10) & 1023] + (a(i2, 10) ^ a(i3, 23)))) + iArr[i];
            i2 = this.a[(i - 12) & 1023];
            i = this.a[i] ^ (this.b[((i2 >> 24) & 255) + 768] + ((this.b[i2 & 255] + this.b[((i2 >> 8) & 255) + 256]) + this.b[((i2 >> 16) & 255) + 512]));
        } else {
            i2 = this.b[(i - 3) & 1023];
            i3 = this.b[(i - 1023) & 1023];
            iArr = this.b;
            iArr[i] = (this.a[(i2 ^ i3) & 1023] + (this.b[(i - 10) & 1023] + (a(i2, 10) ^ a(i3, 23)))) + iArr[i];
            i2 = this.b[(i - 12) & 1023];
            i = this.b[i] ^ (this.a[((i2 >> 24) & 255) + 768] + ((this.a[i2 & 255] + this.a[((i2 >> 8) & 255) + 256]) + this.a[((i2 >> 16) & 255) + 512]));
        }
        this.c = (this.c + 1) & 2047;
        return i;
    }

    private void d() {
        int i = 16;
        if (this.d.length != 32 && this.d.length != 16) {
            throw new IllegalArgumentException("The key must be 128/256 bits long");
        } else if (this.e.length < 16) {
            throw new IllegalArgumentException("The IV must be at least 128 bits long");
        } else {
            Object obj;
            int i2;
            int i3;
            if (this.d.length != 32) {
                obj = new byte[32];
                System.arraycopy(this.d, 0, obj, 0, this.d.length);
                System.arraycopy(this.d, 0, obj, 16, this.d.length);
                this.d = obj;
            }
            if (this.e.length < 32) {
                obj = new byte[32];
                System.arraycopy(this.e, 0, obj, 0, this.e.length);
                System.arraycopy(this.e, 0, obj, this.e.length, obj.length - this.e.length);
                this.e = obj;
            }
            this.h = 0;
            this.c = 0;
            Object obj2 = new int[2560];
            for (i2 = 0; i2 < 32; i2++) {
                i3 = i2 >> 2;
                obj2[i3] = obj2[i3] | ((this.d[i2] & 255) << ((i2 & 3) * 8));
            }
            for (i2 = 0; i2 < 32; i2++) {
                i3 = (i2 >> 2) + 8;
                obj2[i3] = obj2[i3] | ((this.e[i2] & 255) << ((i2 & 3) * 8));
            }
            while (i < 2560) {
                i2 = obj2[i - 2];
                i3 = obj2[i - 15];
                obj2[i] = (((((i2 >>> 10) ^ (a(i2, 17) ^ a(i2, 19))) + obj2[i - 7]) + ((i3 >>> 3) ^ (a(i3, 7) ^ a(i3, 18)))) + obj2[i - 16]) + i;
                i++;
            }
            System.arraycopy(obj2, 512, this.a, 0, 1024);
            System.arraycopy(obj2, 1536, this.b, 0, 1024);
            for (i = 0; i < 4096; i++) {
                b();
            }
            this.c = 0;
        }
    }

    public String a() {
        return "HC-256";
    }

    public void a(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        CipherParameters b;
        if (cipherParameters instanceof ParametersWithIV) {
            this.e = ((ParametersWithIV) cipherParameters).a();
            b = ((ParametersWithIV) cipherParameters).b();
        } else {
            this.e = new byte[0];
            b = cipherParameters;
        }
        if (b instanceof KeyParameter) {
            this.d = ((KeyParameter) b).a();
            d();
            this.f = true;
            return;
        }
        throw new IllegalArgumentException("Invalid parameter passed to HC256 init - " + cipherParameters.getClass().getName());
    }

    private byte e() {
        if (this.h == 0) {
            int b = b();
            this.g[0] = (byte) (b & 255);
            b >>= 8;
            this.g[1] = (byte) (b & 255);
            b >>= 8;
            this.g[2] = (byte) (b & 255);
            this.g[3] = (byte) ((b >> 8) & 255);
        }
        byte b2 = this.g[this.h];
        this.h = (this.h + 1) & 3;
        return b2;
    }

    public int a(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws DataLengthException {
        if (!this.f) {
            throw new IllegalStateException(a() + " not initialised");
        } else if (i + i2 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        } else if (i3 + i2 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        } else {
            for (int i4 = 0; i4 < i2; i4++) {
                bArr2[i3 + i4] = (byte) (bArr[i + i4] ^ e());
            }
            return i2;
        }
    }

    public void c() {
        d();
    }

    public byte a(byte b) {
        return (byte) (e() ^ b);
    }

    private static int a(int i, int i2) {
        return (i >>> i2) | (i << (-i2));
    }
}
