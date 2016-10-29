package org.spongycastle.crypto.modes;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.SkippingStreamCipher;
import org.spongycastle.crypto.StreamBlockCipher;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.util.Pack;

/* compiled from: Twttr */
public class SICBlockCipher extends StreamBlockCipher implements SkippingStreamCipher {
    private final BlockCipher a;
    private final int b;
    private byte[] c;
    private byte[] d;
    private byte[] e;
    private int f;

    public SICBlockCipher(BlockCipher blockCipher) {
        super(blockCipher);
        this.a = blockCipher;
        this.b = this.a.b();
        this.c = new byte[this.b];
        this.d = new byte[this.b];
        this.e = new byte[this.b];
        this.f = 0;
    }

    public void a(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            System.arraycopy(parametersWithIV.a(), 0, this.c, 0, this.c.length);
            if (parametersWithIV.b() != null) {
                this.a.a(true, parametersWithIV.b());
            }
            c();
            return;
        }
        throw new IllegalArgumentException("SIC mode requires ParametersWithIV");
    }

    public String a() {
        return this.a.a() + "/SIC";
    }

    public int b() {
        return this.a.b();
    }

    public int a(byte[] bArr, int i, byte[] bArr2, int i2) throws DataLengthException, IllegalStateException {
        a(bArr, i, this.b, bArr2, i2);
        return this.b;
    }

    protected byte b(byte b) throws DataLengthException, IllegalStateException {
        if (this.f == 0) {
            this.a.a(this.d, 0, this.e, 0);
            byte[] bArr = this.e;
            int i = this.f;
            this.f = i + 1;
            return (byte) (bArr[i] ^ b);
        }
        bArr = this.e;
        i = this.f;
        this.f = i + 1;
        byte b2 = (byte) (bArr[i] ^ b);
        if (this.f != this.d.length) {
            return b2;
        }
        this.f = 0;
        f();
        return b2;
    }

    private void f() {
        int length = this.d.length - 1;
        while (length >= 0) {
            byte[] bArr = this.d;
            byte b = (byte) (bArr[length] + 1);
            bArr[length] = b;
            if (b == null) {
                length--;
            } else {
                return;
            }
        }
    }

    private void g() {
        int i;
        if (this.d[0] == null) {
            i = 0;
            for (int length = this.d.length - 1; length > 0; length--) {
                if (this.d[length] != null) {
                    i = 1;
                }
            }
            if (i == 0) {
                throw new IllegalStateException("attempt to reduce counter past zero.");
            }
        }
        i = this.d.length - 1;
        while (i >= 0) {
            byte[] bArr = this.d;
            byte b = (byte) (bArr[i] - 1);
            bArr[i] = b;
            if (b == -1) {
                i--;
            } else {
                return;
            }
        }
    }

    private void c(long j) {
        long j2 = 0;
        long j3;
        if (j >= 0) {
            j3 = (((long) this.f) + j) / ((long) this.b);
            while (j2 != j3) {
                f();
                j2++;
            }
            this.f = (int) ((((long) this.f) + j) - (j3 * ((long) this.b)));
            return;
        }
        j3 = ((-j) - ((long) this.f)) / ((long) this.b);
        while (j2 != j3) {
            g();
            j2++;
        }
        int i = (int) ((((long) this.f) + j) + (j3 * ((long) this.b)));
        if (i >= 0) {
            this.f = 0;
            return;
        }
        g();
        this.f = i + this.b;
    }

    public void c() {
        System.arraycopy(this.c, 0, this.d, 0, this.d.length);
        this.a.c();
        this.f = 0;
    }

    public long a(long j) {
        c(j);
        this.a.a(this.d, 0, this.e, 0);
        return j;
    }

    public long b(long j) {
        c();
        return a(j);
    }

    public long d() {
        Object obj = new byte[this.c.length];
        System.arraycopy(this.d, 0, obj, 0, obj.length);
        for (int length = obj.length - 1; length >= 1; length--) {
            int i = obj[length] - this.c[length];
            if (i < 0) {
                int i2 = length - 1;
                obj[i2] = (byte) (obj[i2] - 1);
                i += 256;
            }
            obj[length] = (byte) i;
        }
        return (Pack.b(obj, obj.length - 8) * ((long) this.b)) + ((long) this.f);
    }
}
