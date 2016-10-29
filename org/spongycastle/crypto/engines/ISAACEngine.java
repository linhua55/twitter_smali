package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.StreamCipher;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.util.Pack;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class ISAACEngine implements StreamCipher {
    private final int a;
    private final int b;
    private int[] c;
    private int[] d;
    private int e;
    private int f;
    private int g;
    private int h;
    private byte[] i;
    private byte[] j;
    private boolean k;

    public ISAACEngine() {
        this.a = 8;
        this.b = 256;
        this.c = null;
        this.d = null;
        this.e = 0;
        this.f = 0;
        this.g = 0;
        this.h = 0;
        this.i = new byte[1024];
        this.j = null;
        this.k = false;
    }

    public void a(boolean z, CipherParameters cipherParameters) {
        if (cipherParameters instanceof KeyParameter) {
            a(((KeyParameter) cipherParameters).a());
            return;
        }
        throw new IllegalArgumentException("invalid parameter passed to ISAAC init - " + cipherParameters.getClass().getName());
    }

    public byte a(byte b) {
        if (this.h == 0) {
            b();
            this.i = Pack.a(this.d);
        }
        byte b2 = (byte) (this.i[this.h] ^ b);
        this.h = (this.h + 1) & 1023;
        return b2;
    }

    public int a(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        if (!this.k) {
            throw new IllegalStateException(a() + " not initialised");
        } else if (i + i2 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        } else if (i3 + i2 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        } else {
            for (int i4 = 0; i4 < i2; i4++) {
                if (this.h == 0) {
                    b();
                    this.i = Pack.a(this.d);
                }
                bArr2[i4 + i3] = (byte) (this.i[this.h] ^ bArr[i4 + i]);
                this.h = (this.h + 1) & 1023;
            }
            return i2;
        }
    }

    public String a() {
        return "ISAAC";
    }

    public void c() {
        a(this.j);
    }

    private void a(byte[] bArr) {
        int i;
        this.j = bArr;
        if (this.c == null) {
            this.c = new int[256];
        }
        if (this.d == null) {
            this.d = new int[256];
        }
        for (i = 0; i < 256; i++) {
            int[] iArr = this.c;
            this.d[i] = 0;
            iArr[i] = 0;
        }
        this.g = 0;
        this.f = 0;
        this.e = 0;
        this.h = 0;
        Object obj = new byte[(bArr.length + (bArr.length & 3))];
        System.arraycopy(bArr, 0, obj, 0, bArr.length);
        for (i = 0; i < obj.length; i += 4) {
            this.d[i >>> 2] = Pack.c(obj, i);
        }
        int[] iArr2 = new int[8];
        for (i = 0; i < 8; i++) {
            iArr2[i] = -1640531527;
        }
        for (i = 0; i < 4; i++) {
            a(iArr2);
        }
        int i2 = 0;
        while (i2 < 2) {
            for (int i3 = 0; i3 < 256; i3 += 8) {
                for (int i4 = 0; i4 < 8; i4++) {
                    iArr2[i4] = (i2 < 1 ? this.d[i3 + i4] : this.c[i3 + i4]) + iArr2[i4];
                }
                a(iArr2);
                for (i = 0; i < 8; i++) {
                    this.c[i3 + i] = iArr2[i];
                }
            }
            i2++;
        }
        b();
        this.k = true;
    }

    private void b() {
        int i = this.f;
        int i2 = this.g + 1;
        this.g = i2;
        this.f = i + i2;
        for (i = 0; i < 256; i++) {
            i2 = this.c[i];
            switch (i & 3) {
                case p.View_android_theme /*0*/:
                    this.e ^= this.e << 13;
                    break;
                case p.View_android_focusable /*1*/:
                    this.e ^= this.e >>> 6;
                    break;
                case p.View_paddingStart /*2*/:
                    this.e ^= this.e << 2;
                    break;
                case p.View_paddingEnd /*3*/:
                    this.e ^= this.e >>> 16;
                    break;
                default:
                    break;
            }
            this.e += this.c[(i + 128) & 255];
            int i3 = (this.c[(i2 >>> 2) & 255] + this.e) + this.f;
            this.c[i] = i3;
            int[] iArr = this.d;
            i2 += this.c[(i3 >>> 10) & 255];
            this.f = i2;
            iArr[i] = i2;
        }
    }

    private void a(int[] iArr) {
        iArr[0] = iArr[0] ^ (iArr[1] << 11);
        iArr[3] = iArr[3] + iArr[0];
        iArr[1] = iArr[1] + iArr[2];
        iArr[1] = iArr[1] ^ (iArr[2] >>> 2);
        iArr[4] = iArr[4] + iArr[1];
        iArr[2] = iArr[2] + iArr[3];
        iArr[2] = iArr[2] ^ (iArr[3] << 8);
        iArr[5] = iArr[5] + iArr[2];
        iArr[3] = iArr[3] + iArr[4];
        iArr[3] = iArr[3] ^ (iArr[4] >>> 16);
        iArr[6] = iArr[6] + iArr[3];
        iArr[4] = iArr[4] + iArr[5];
        iArr[4] = iArr[4] ^ (iArr[5] << 10);
        iArr[7] = iArr[7] + iArr[4];
        iArr[5] = iArr[5] + iArr[6];
        iArr[5] = iArr[5] ^ (iArr[6] >>> 4);
        iArr[0] = iArr[0] + iArr[5];
        iArr[6] = iArr[6] + iArr[7];
        iArr[6] = iArr[6] ^ (iArr[7] << 8);
        iArr[1] = iArr[1] + iArr[6];
        iArr[7] = iArr[7] + iArr[0];
        iArr[7] = iArr[7] ^ (iArr[0] >>> 9);
        iArr[2] = iArr[2] + iArr[7];
        iArr[0] = iArr[0] + iArr[1];
    }
}
