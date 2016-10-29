package org.spongycastle.crypto.modes;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.StreamBlockCipher;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.util.Arrays;

/* compiled from: Twttr */
public class CFBBlockCipher extends StreamBlockCipher {
    private byte[] a;
    private byte[] b;
    private byte[] c;
    private byte[] d;
    private int e;
    private BlockCipher f;
    private boolean g;
    private int h;

    public CFBBlockCipher(BlockCipher blockCipher, int i) {
        super(blockCipher);
        this.f = null;
        this.f = blockCipher;
        this.e = i / 8;
        this.a = new byte[blockCipher.b()];
        this.b = new byte[blockCipher.b()];
        this.c = new byte[blockCipher.b()];
        this.d = new byte[this.e];
    }

    public void a(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        this.g = z;
        if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            Object a = parametersWithIV.a();
            if (a.length < this.a.length) {
                System.arraycopy(a, 0, this.a, this.a.length - a.length, a.length);
                for (int i = 0; i < this.a.length - a.length; i++) {
                    this.a[i] = (byte) 0;
                }
            } else {
                System.arraycopy(a, 0, this.a, 0, this.a.length);
            }
            c();
            if (parametersWithIV.b() != null) {
                this.f.a(true, parametersWithIV.b());
                return;
            }
            return;
        }
        c();
        if (cipherParameters != null) {
            this.f.a(true, cipherParameters);
        }
    }

    public String a() {
        return this.f.a() + "/CFB" + (this.e * 8);
    }

    protected byte b(byte b) throws DataLengthException, IllegalStateException {
        return this.g ? c(b) : d(b);
    }

    private byte c(byte b) {
        if (this.h == 0) {
            this.f.a(this.b, 0, this.c, 0);
        }
        byte b2 = (byte) (this.c[this.h] ^ b);
        byte[] bArr = this.d;
        int i = this.h;
        this.h = i + 1;
        bArr[i] = b2;
        if (this.h == this.e) {
            this.h = 0;
            System.arraycopy(this.b, this.e, this.b, 0, this.b.length - this.e);
            System.arraycopy(this.d, 0, this.b, this.b.length - this.e, this.e);
        }
        return b2;
    }

    private byte d(byte b) {
        if (this.h == 0) {
            this.f.a(this.b, 0, this.c, 0);
        }
        this.d[this.h] = b;
        byte[] bArr = this.c;
        int i = this.h;
        this.h = i + 1;
        byte b2 = (byte) (bArr[i] ^ b);
        if (this.h == this.e) {
            this.h = 0;
            System.arraycopy(this.b, this.e, this.b, 0, this.b.length - this.e);
            System.arraycopy(this.d, 0, this.b, this.b.length - this.e, this.e);
        }
        return b2;
    }

    public int b() {
        return this.e;
    }

    public int a(byte[] bArr, int i, byte[] bArr2, int i2) throws DataLengthException, IllegalStateException {
        a(bArr, i, this.e, bArr2, i2);
        return this.e;
    }

    public byte[] d() {
        return Arrays.b(this.b);
    }

    public void c() {
        System.arraycopy(this.a, 0, this.b, 0, this.a.length);
        Arrays.a(this.d, (byte) 0);
        this.h = 0;
        this.f.c();
    }
}
