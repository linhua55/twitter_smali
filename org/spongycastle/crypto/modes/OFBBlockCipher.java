package org.spongycastle.crypto.modes;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.StreamBlockCipher;
import org.spongycastle.crypto.params.ParametersWithIV;

/* compiled from: Twttr */
public class OFBBlockCipher extends StreamBlockCipher {
    private int a;
    private byte[] b;
    private byte[] c;
    private byte[] d;
    private final int e;
    private final BlockCipher f;

    public OFBBlockCipher(BlockCipher blockCipher, int i) {
        super(blockCipher);
        this.f = blockCipher;
        this.e = i / 8;
        this.b = new byte[blockCipher.b()];
        this.c = new byte[blockCipher.b()];
        this.d = new byte[blockCipher.b()];
    }

    public void a(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            Object a = parametersWithIV.a();
            if (a.length < this.b.length) {
                System.arraycopy(a, 0, this.b, this.b.length - a.length, a.length);
                for (int i = 0; i < this.b.length - a.length; i++) {
                    this.b[i] = (byte) 0;
                }
            } else {
                System.arraycopy(a, 0, this.b, 0, this.b.length);
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
        return this.f.a() + "/OFB" + (this.e * 8);
    }

    public int b() {
        return this.e;
    }

    public int a(byte[] bArr, int i, byte[] bArr2, int i2) throws DataLengthException, IllegalStateException {
        a(bArr, i, this.e, bArr2, i2);
        return this.e;
    }

    public void c() {
        System.arraycopy(this.b, 0, this.c, 0, this.b.length);
        this.a = 0;
        this.f.c();
    }

    protected byte b(byte b) throws DataLengthException, IllegalStateException {
        if (this.a == 0) {
            this.f.a(this.c, 0, this.d, 0);
        }
        byte[] bArr = this.d;
        int i = this.a;
        this.a = i + 1;
        byte b2 = (byte) (bArr[i] ^ b);
        if (this.a == this.e) {
            this.a = 0;
            System.arraycopy(this.c, this.e, this.c, 0, this.c.length - this.e);
            System.arraycopy(this.d, 0, this.c, this.c.length - this.e, this.e);
        }
        return b2;
    }
}
