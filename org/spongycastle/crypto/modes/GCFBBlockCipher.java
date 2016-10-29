package org.spongycastle.crypto.modes;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.StreamBlockCipher;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.crypto.params.ParametersWithSBox;

/* compiled from: Twttr */
public class GCFBBlockCipher extends StreamBlockCipher {
    private static final byte[] a;
    private final CFBBlockCipher b;
    private KeyParameter c;
    private long d;
    private boolean e;

    static {
        a = new byte[]{(byte) 105, (byte) 0, (byte) 114, (byte) 34, (byte) 100, (byte) -55, (byte) 4, (byte) 35, (byte) -115, (byte) 58, (byte) -37, (byte) -106, (byte) 70, (byte) -23, (byte) 42, (byte) -60, (byte) 24, (byte) -2, (byte) -84, (byte) -108, (byte) 0, (byte) -19, (byte) 7, (byte) 18, (byte) -64, (byte) -122, (byte) -36, (byte) -62, (byte) -17, (byte) 76, (byte) -87, (byte) 43};
    }

    public GCFBBlockCipher(BlockCipher blockCipher) {
        super(blockCipher);
        this.d = 0;
        this.b = new CFBBlockCipher(blockCipher, blockCipher.b() * 8);
    }

    public void a(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        CipherParameters b;
        this.d = 0;
        this.b.a(z, cipherParameters);
        this.e = z;
        if (cipherParameters instanceof ParametersWithIV) {
            b = ((ParametersWithIV) cipherParameters).b();
        } else {
            b = cipherParameters;
        }
        if (b instanceof ParametersWithRandom) {
            b = ((ParametersWithRandom) b).b();
        }
        if (b instanceof ParametersWithSBox) {
            b = ((ParametersWithSBox) b).b();
        }
        this.c = (KeyParameter) b;
    }

    public String a() {
        String a = this.b.a();
        return a.substring(0, a.indexOf(47) - 1) + "/G" + a.substring(a.indexOf(47) + 1);
    }

    public int b() {
        return this.b.b();
    }

    public int a(byte[] bArr, int i, byte[] bArr2, int i2) throws DataLengthException, IllegalStateException {
        a(bArr, i, this.b.b(), bArr2, i2);
        return this.b.b();
    }

    protected byte b(byte b) {
        if (this.d > 0 && this.d % 1024 == 0) {
            BlockCipher e = this.b.e();
            e.a(false, this.c);
            byte[] bArr = new byte[32];
            e.a(a, 0, bArr, 0);
            e.a(a, 8, bArr, 8);
            e.a(a, 16, bArr, 16);
            e.a(a, 24, bArr, 24);
            this.c = new KeyParameter(bArr);
            e.a(true, this.c);
            bArr = this.b.d();
            e.a(bArr, 0, bArr, 0);
            this.b.a(this.e, new ParametersWithIV(this.c, bArr));
        }
        this.d++;
        return this.b.b(b);
    }

    public void c() {
        this.d = 0;
        this.b.c();
    }
}
