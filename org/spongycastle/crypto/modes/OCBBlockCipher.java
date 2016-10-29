package org.spongycastle.crypto.modes;

import java.util.Vector;
import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.params.AEADParameters;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.util.Arrays;

/* compiled from: Twttr */
public class OCBBlockCipher implements AEADBlockCipher {
    private BlockCipher a;
    private BlockCipher b;
    private boolean c;
    private int d;
    private byte[] e;
    private Vector f;
    private byte[] g;
    private byte[] h;
    private byte[] i;
    private byte[] j;
    private byte[] k;
    private byte[] l;
    private byte[] m;
    private int n;
    private int o;
    private long p;
    private long q;
    private byte[] r;
    private byte[] s;
    private byte[] t;
    private byte[] u;
    private byte[] v;

    public OCBBlockCipher(BlockCipher blockCipher, BlockCipher blockCipher2) {
        this.i = null;
        this.j = new byte[24];
        this.k = new byte[16];
        this.t = new byte[16];
        if (blockCipher == null) {
            throw new IllegalArgumentException("'hashCipher' cannot be null");
        } else if (blockCipher.b() != 16) {
            throw new IllegalArgumentException("'hashCipher' must have a block size of 16");
        } else if (blockCipher2 == null) {
            throw new IllegalArgumentException("'mainCipher' cannot be null");
        } else if (blockCipher2.b() != 16) {
            throw new IllegalArgumentException("'mainCipher' must have a block size of 16");
        } else if (blockCipher.a().equals(blockCipher2.a())) {
            this.a = blockCipher;
            this.b = blockCipher2;
        } else {
            throw new IllegalArgumentException("'hashCipher' and 'mainCipher' must be the same algorithm");
        }
    }

    public BlockCipher a() {
        return this.b;
    }

    public void a(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        byte[] d;
        int b;
        int i;
        boolean z2 = this.c;
        this.c = z;
        this.v = null;
        if (cipherParameters instanceof AEADParameters) {
            AEADParameters aEADParameters = (AEADParameters) cipherParameters;
            d = aEADParameters.d();
            this.e = aEADParameters.c();
            b = aEADParameters.b();
            if (b < 64 || b > 128 || b % 8 != 0) {
                throw new IllegalArgumentException("Invalid value for MAC size: " + b);
            }
            this.d = b / 8;
            CipherParameters a = aEADParameters.a();
        } else if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            byte[] a2 = parametersWithIV.a();
            this.e = null;
            this.d = 16;
            byte[] bArr = a2;
            Object obj = (KeyParameter) parametersWithIV.b();
            d = bArr;
        } else {
            throw new IllegalArgumentException("invalid parameters passed to OCB");
        }
        this.l = new byte[16];
        if (z) {
            i = 16;
        } else {
            i = this.d + 16;
        }
        this.m = new byte[i];
        if (d == null) {
            d = new byte[0];
        }
        if (d.length > 15) {
            throw new IllegalArgumentException("IV must be no more than 15 bytes");
        }
        if (a != null) {
            this.a.a(true, a);
            this.b.a(z, a);
            this.i = null;
        } else if (z2 != z) {
            throw new IllegalArgumentException("cannot change encrypting state without providing key.");
        }
        this.g = new byte[16];
        this.a.a(this.g, 0, this.g, 0);
        this.h = d(this.g);
        this.f = new Vector();
        this.f.addElement(d(this.h));
        int a3 = a(d);
        i = a3 % 8;
        a3 /= 8;
        if (i == 0) {
            System.arraycopy(this.j, a3, this.k, 0, 16);
        } else {
            b = a3;
            for (a3 = 0; a3 < 16; a3++) {
                int i2 = this.j[b] & 255;
                b++;
                this.k[a3] = (byte) ((i2 << i) | ((this.j[b] & 255) >>> (8 - i)));
            }
        }
        this.n = 0;
        this.o = 0;
        this.p = 0;
        this.q = 0;
        this.r = new byte[16];
        this.s = new byte[16];
        System.arraycopy(this.k, 0, this.t, 0, 16);
        this.u = new byte[16];
        if (this.e != null) {
            a(this.e, 0, this.e.length);
        }
    }

    protected int a(byte[] bArr) {
        int i = 0;
        byte[] bArr2 = new byte[16];
        System.arraycopy(bArr, 0, bArr2, bArr2.length - bArr.length, bArr.length);
        bArr2[0] = (byte) (this.d << 4);
        int length = 15 - bArr.length;
        bArr2[length] = (byte) (bArr2[length] | 1);
        length = bArr2[15] & 63;
        bArr2[15] = (byte) (bArr2[15] & 192);
        if (this.i == null || !Arrays.a(bArr2, this.i)) {
            Object obj = new byte[16];
            this.i = bArr2;
            this.a.a(this.i, 0, obj, 0);
            System.arraycopy(obj, 0, this.j, 0, 16);
            while (i < 8) {
                this.j[i + 16] = (byte) (obj[i] ^ obj[i + 1]);
                i++;
            }
        }
        return length;
    }

    public int b(int i) {
        int i2 = this.o + i;
        if (this.c) {
            return i2 + this.d;
        }
        return i2 < this.d ? 0 : i2 - this.d;
    }

    public int a(int i) {
        int i2 = this.o + i;
        if (!this.c) {
            if (i2 < this.d) {
                return 0;
            }
            i2 -= this.d;
        }
        return i2 - (i2 % 16);
    }

    public void a(byte[] bArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            this.l[this.n] = bArr[i + i3];
            int i4 = this.n + 1;
            this.n = i4;
            if (i4 == this.l.length) {
                b();
            }
        }
    }

    public int a(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws DataLengthException {
        int i4 = 0;
        if (bArr.length < i + i2) {
            throw new DataLengthException("Input buffer too short");
        }
        for (int i5 = 0; i5 < i2; i5++) {
            this.m[this.o] = bArr[i + i5];
            int i6 = this.o + 1;
            this.o = i6;
            if (i6 == this.m.length) {
                b(bArr2, i3 + i4);
                i4 += 16;
            }
        }
        return i4;
    }

    public int a(byte[] bArr, int i) throws IllegalStateException, InvalidCipherTextException {
        int i2;
        byte[] bArr2 = null;
        if (!this.c) {
            if (this.o < this.d) {
                throw new InvalidCipherTextException("data too short");
            }
            this.o -= this.d;
            bArr2 = new byte[this.d];
            System.arraycopy(this.m, this.o, bArr2, 0, this.d);
        }
        if (this.n > 0) {
            c(this.l, this.n);
            c(this.g);
        }
        if (this.o > 0) {
            if (this.c) {
                c(this.m, this.o);
                b(this.u, this.m);
            }
            b(this.t, this.g);
            byte[] bArr3 = new byte[16];
            this.a.a(this.t, 0, bArr3, 0);
            b(this.m, bArr3);
            if (bArr.length < this.o + i) {
                throw new OutputLengthException("Output buffer too short");
            }
            System.arraycopy(this.m, 0, bArr, i, this.o);
            if (!this.c) {
                c(this.m, this.o);
                b(this.u, this.m);
            }
        }
        b(this.u, this.t);
        b(this.u, this.h);
        this.a.a(this.u, 0, this.u, 0);
        b(this.u, this.s);
        this.v = new byte[this.d];
        System.arraycopy(this.u, 0, this.v, 0, this.d);
        int i3 = this.o;
        if (this.c) {
            if (bArr.length < (i + i3) + this.d) {
                throw new OutputLengthException("Output buffer too short");
            }
            System.arraycopy(this.v, 0, bArr, i + i3, this.d);
            i2 = this.d + i3;
        } else if (Arrays.b(this.v, bArr2)) {
            i2 = i3;
        } else {
            throw new InvalidCipherTextException("mac check in OCB failed");
        }
        a(false);
        return i2;
    }

    protected void b(byte[] bArr) {
        if (bArr != null) {
            Arrays.a(bArr, (byte) 0);
        }
    }

    protected byte[] c(int i) {
        while (i >= this.f.size()) {
            this.f.addElement(d((byte[]) this.f.lastElement()));
        }
        return (byte[]) this.f.elementAt(i);
    }

    protected void b() {
        long j = this.p + 1;
        this.p = j;
        c(c(a(j)));
        this.n = 0;
    }

    protected void b(byte[] bArr, int i) {
        if (bArr.length < i + 16) {
            throw new OutputLengthException("Output buffer too short");
        }
        if (this.c) {
            b(this.u, this.m);
            this.o = 0;
        }
        byte[] bArr2 = this.t;
        long j = this.q + 1;
        this.q = j;
        b(bArr2, c(a(j)));
        b(this.m, this.t);
        this.b.a(this.m, 0, this.m, 0);
        b(this.m, this.t);
        System.arraycopy(this.m, 0, bArr, i, 16);
        if (!this.c) {
            b(this.u, this.m);
            System.arraycopy(this.m, 16, this.m, 0, this.d);
            this.o = this.d;
        }
    }

    protected void a(boolean z) {
        this.a.c();
        this.b.c();
        b(this.l);
        b(this.m);
        this.n = 0;
        this.o = 0;
        this.p = 0;
        this.q = 0;
        b(this.r);
        b(this.s);
        System.arraycopy(this.k, 0, this.t, 0, 16);
        b(this.u);
        if (z) {
            this.v = null;
        }
        if (this.e != null) {
            a(this.e, 0, this.e.length);
        }
    }

    protected void c(byte[] bArr) {
        b(this.r, bArr);
        b(this.l, this.r);
        this.a.a(this.l, 0, this.l, 0);
        b(this.s, this.l);
    }

    protected static byte[] d(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        bArr2[15] = (byte) ((135 >>> ((1 - a(bArr, bArr2)) << 3)) ^ bArr2[15]);
        return bArr2;
    }

    protected static void c(byte[] bArr, int i) {
        bArr[i] = Byte.MIN_VALUE;
        while (true) {
            i++;
            if (i < 16) {
                bArr[i] = (byte) 0;
            } else {
                return;
            }
        }
    }

    protected static int a(long j) {
        if (j == 0) {
            return 64;
        }
        int i = 0;
        while ((1 & j) == 0) {
            i++;
            j >>>= 1;
        }
        return i;
    }

    protected static int a(byte[] bArr, byte[] bArr2) {
        int i = 16;
        int i2 = 0;
        while (true) {
            i--;
            if (i < 0) {
                return i2;
            }
            int i3 = bArr[i] & 255;
            bArr2[i] = (byte) (i2 | (i3 << 1));
            i2 = (i3 >>> 7) & 1;
        }
    }

    protected static void b(byte[] bArr, byte[] bArr2) {
        for (int i = 15; i >= 0; i--) {
            bArr[i] = (byte) (bArr[i] ^ bArr2[i]);
        }
    }
}
