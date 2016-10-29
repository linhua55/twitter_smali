package org.spongycastle.crypto.macs;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.modes.GCMBlockCipher;
import org.spongycastle.crypto.params.AEADParameters;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;

/* compiled from: Twttr */
public class GMac implements Mac {
    private final GCMBlockCipher a;
    private final int b;

    public GMac(GCMBlockCipher gCMBlockCipher) {
        this.a = gCMBlockCipher;
        this.b = 128;
    }

    public void a(CipherParameters cipherParameters) throws IllegalArgumentException {
        if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            KeyParameter keyParameter = (KeyParameter) parametersWithIV.b();
            this.a.a(true, new AEADParameters(keyParameter, this.b, parametersWithIV.a()));
            return;
        }
        throw new IllegalArgumentException("GMAC requires ParametersWithIV");
    }

    public String a() {
        return this.a.a().a() + "-GMAC";
    }

    public int b() {
        return this.b / 8;
    }

    public void a(byte b) throws IllegalStateException {
        this.a.a(b);
    }

    public void a(byte[] bArr, int i, int i2) throws DataLengthException, IllegalStateException {
        this.a.a(bArr, i, i2);
    }

    public int a(byte[] bArr, int i) throws DataLengthException, IllegalStateException {
        try {
            return this.a.a(bArr, i);
        } catch (InvalidCipherTextException e) {
            throw new IllegalStateException(e.toString());
        }
    }

    public void c() {
        this.a.b();
    }
}
