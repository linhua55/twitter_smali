package org.spongycastle.crypto.engines;

import defpackage.cse;
import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.params.KeyParameter;
import tv.periscope.android.api.ApiRunnable;

/* compiled from: Twttr */
public class NoekeonEngine implements BlockCipher {
    private static final int[] a;
    private static final int[] b;
    private int[] c;
    private int[] d;
    private int[] e;
    private boolean f;
    private boolean g;

    static {
        a = new int[]{0, 0, 0, 0};
        b = new int[]{128, 27, 54, cse.AppCompatTheme_ratingBarStyleSmall, 216, 171, 77, 154, 47, 94, 188, 99, 198, 151, 53, cse.AppCompatTheme_ratingBarStyle, ApiRunnable.ACTION_CODE_PUBLIC_PING_REPLAY_VIEWED};
    }

    public NoekeonEngine() {
        this.c = new int[4];
        this.d = new int[4];
        this.e = new int[4];
        this.f = false;
    }

    public String a() {
        return "Noekeon";
    }

    public int b() {
        return 16;
    }

    public void a(boolean z, CipherParameters cipherParameters) {
        if (cipherParameters instanceof KeyParameter) {
            this.g = z;
            this.f = true;
            a(((KeyParameter) cipherParameters).a());
            return;
        }
        throw new IllegalArgumentException("invalid parameter passed to Noekeon init - " + cipherParameters.getClass().getName());
    }

    public int a(byte[] bArr, int i, byte[] bArr2, int i2) {
        if (!this.f) {
            throw new IllegalStateException(a() + " not initialised");
        } else if (i + 16 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        } else if (i2 + 16 <= bArr2.length) {
            return this.g ? b(bArr, i, bArr2, i2) : c(bArr, i, bArr2, i2);
        } else {
            throw new OutputLengthException("output buffer too short");
        }
    }

    public void c() {
    }

    private void a(byte[] bArr) {
        this.d[0] = a(bArr, 0);
        this.d[1] = a(bArr, 4);
        this.d[2] = a(bArr, 8);
        this.d[3] = a(bArr, 12);
    }

    private int b(byte[] bArr, int i, byte[] bArr2, int i2) {
        int[] iArr;
        this.c[0] = a(bArr, i);
        this.c[1] = a(bArr, i + 4);
        this.c[2] = a(bArr, i + 8);
        this.c[3] = a(bArr, i + 12);
        int i3 = 0;
        while (i3 < 16) {
            iArr = this.c;
            iArr[0] = iArr[0] ^ b[i3];
            a(this.c, this.d);
            b(this.c);
            a(this.c);
            c(this.c);
            i3++;
        }
        iArr = this.c;
        iArr[0] = b[i3] ^ iArr[0];
        a(this.c, this.d);
        a(this.c[0], bArr2, i2);
        a(this.c[1], bArr2, i2 + 4);
        a(this.c[2], bArr2, i2 + 8);
        a(this.c[3], bArr2, i2 + 12);
        return 16;
    }

    private int c(byte[] bArr, int i, byte[] bArr2, int i2) {
        int[] iArr;
        this.c[0] = a(bArr, i);
        this.c[1] = a(bArr, i + 4);
        this.c[2] = a(bArr, i + 8);
        this.c[3] = a(bArr, i + 12);
        System.arraycopy(this.d, 0, this.e, 0, this.d.length);
        a(this.e, a);
        int i3 = 16;
        while (i3 > 0) {
            a(this.c, this.e);
            iArr = this.c;
            iArr[0] = iArr[0] ^ b[i3];
            b(this.c);
            a(this.c);
            c(this.c);
            i3--;
        }
        a(this.c, this.e);
        iArr = this.c;
        iArr[0] = b[i3] ^ iArr[0];
        a(this.c[0], bArr2, i2);
        a(this.c[1], bArr2, i2 + 4);
        a(this.c[2], bArr2, i2 + 8);
        a(this.c[3], bArr2, i2 + 12);
        return 16;
    }

    private void a(int[] iArr) {
        iArr[1] = iArr[1] ^ ((iArr[3] ^ -1) & (iArr[2] ^ -1));
        iArr[0] = iArr[0] ^ (iArr[2] & iArr[1]);
        int i = iArr[3];
        iArr[3] = iArr[0];
        iArr[0] = i;
        iArr[2] = iArr[2] ^ ((iArr[0] ^ iArr[1]) ^ iArr[3]);
        iArr[1] = iArr[1] ^ ((iArr[3] ^ -1) & (iArr[2] ^ -1));
        iArr[0] = iArr[0] ^ (iArr[2] & iArr[1]);
    }

    private void a(int[] iArr, int[] iArr2) {
        int i = iArr[0] ^ iArr[2];
        i ^= a(i, 8) ^ a(i, 24);
        iArr[1] = iArr[1] ^ i;
        iArr[3] = i ^ iArr[3];
        for (i = 0; i < 4; i++) {
            iArr[i] = iArr[i] ^ iArr2[i];
        }
        i = iArr[1] ^ iArr[3];
        i ^= a(i, 8) ^ a(i, 24);
        iArr[0] = iArr[0] ^ i;
        iArr[2] = i ^ iArr[2];
    }

    private void b(int[] iArr) {
        iArr[1] = a(iArr[1], 1);
        iArr[2] = a(iArr[2], 5);
        iArr[3] = a(iArr[3], 2);
    }

    private void c(int[] iArr) {
        iArr[1] = a(iArr[1], 31);
        iArr[2] = a(iArr[2], 27);
        iArr[3] = a(iArr[3], 30);
    }

    private int a(byte[] bArr, int i) {
        int i2 = i + 1;
        int i3 = i2 + 1;
        return ((((bArr[i2] & 255) << 16) | (bArr[i] << 24)) | ((bArr[i3] & 255) << 8)) | (bArr[i3 + 1] & 255);
    }

    private void a(int i, byte[] bArr, int i2) {
        int i3 = i2 + 1;
        bArr[i2] = (byte) (i >>> 24);
        int i4 = i3 + 1;
        bArr[i3] = (byte) (i >>> 16);
        i3 = i4 + 1;
        bArr[i4] = (byte) (i >>> 8);
        bArr[i3] = (byte) i;
    }

    private int a(int i, int i2) {
        return (i << i2) | (i >>> (32 - i2));
    }
}
