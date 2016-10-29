package org.spongycastle.crypto.modes;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.StreamBlockCipher;
import org.spongycastle.crypto.params.ParametersWithIV;

/* compiled from: Twttr */
public class GOFBBlockCipher extends StreamBlockCipher {
    boolean a;
    int b;
    int c;
    private byte[] d;
    private byte[] e;
    private byte[] f;
    private int g;
    private final int h;
    private final BlockCipher i;

    public GOFBBlockCipher(BlockCipher blockCipher) {
        super(blockCipher);
        this.a = true;
        this.i = blockCipher;
        this.h = blockCipher.b();
        if (this.h != 8) {
            throw new IllegalArgumentException("GCTR only for 64 bit block ciphers");
        }
        this.d = new byte[blockCipher.b()];
        this.e = new byte[blockCipher.b()];
        this.f = new byte[blockCipher.b()];
    }

    public void a(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        this.a = true;
        this.b = 0;
        this.c = 0;
        if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            Object a = parametersWithIV.a();
            if (a.length < this.d.length) {
                System.arraycopy(a, 0, this.d, this.d.length - a.length, a.length);
                for (int i = 0; i < this.d.length - a.length; i++) {
                    this.d[i] = (byte) 0;
                }
            } else {
                System.arraycopy(a, 0, this.d, 0, this.d.length);
            }
            c();
            if (parametersWithIV.b() != null) {
                this.i.a(true, parametersWithIV.b());
                return;
            }
            return;
        }
        c();
        if (cipherParameters != null) {
            this.i.a(true, cipherParameters);
        }
    }

    public String a() {
        return this.i.a() + "/GCTR";
    }

    public int b() {
        return this.h;
    }

    public int a(byte[] bArr, int i, byte[] bArr2, int i2) throws DataLengthException, IllegalStateException {
        a(bArr, i, this.h, bArr2, i2);
        return this.h;
    }

    public void c() {
        this.a = true;
        this.b = 0;
        this.c = 0;
        System.arraycopy(this.d, 0, this.e, 0, this.d.length);
        this.g = 0;
        this.i.c();
    }

    private int a(byte[] bArr, int i) {
        return ((((bArr[i + 3] << 24) & -16777216) + ((bArr[i + 2] << 16) & 16711680)) + ((bArr[i + 1] << 8) & 65280)) + (bArr[i] & 255);
    }

    private void a(int i, byte[] bArr, int i2) {
        bArr[i2 + 3] = (byte) (i >>> 24);
        bArr[i2 + 2] = (byte) (i >>> 16);
        bArr[i2 + 1] = (byte) (i >>> 8);
        bArr[i2] = (byte) i;
    }

    protected byte b(byte b) {
        if (this.g == 0) {
            if (this.a) {
                this.a = false;
                this.i.a(this.e, 0, this.f, 0);
                this.b = a(this.f, 0);
                this.c = a(this.f, 4);
            }
            this.b += 16843009;
            this.c += 16843012;
            a(this.b, this.e, 0);
            a(this.c, this.e, 4);
            this.i.a(this.e, 0, this.f, 0);
        }
        byte[] bArr = this.f;
        int i = this.g;
        this.g = i + 1;
        byte b2 = (byte) (bArr[i] ^ b);
        if (this.g == this.h) {
            this.g = 0;
            System.arraycopy(this.e, this.h, this.e, 0, this.e.length - this.h);
            System.arraycopy(this.f, 0, this.e, this.e.length - this.h, this.h);
        }
        return b2;
    }
}
