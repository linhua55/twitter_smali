package org.spongycastle.crypto.tls;

import java.io.IOException;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.engines.ChaChaEngine;
import org.spongycastle.crypto.generators.Poly1305KeyGenerator;
import org.spongycastle.crypto.macs.Poly1305;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Pack;

/* compiled from: Twttr */
public class Chacha20Poly1305 implements TlsCipher {
    protected TlsContext a;
    protected ChaChaEngine b;
    protected ChaChaEngine c;

    public Chacha20Poly1305(TlsContext tlsContext) throws IOException {
        if (TlsUtils.c(tlsContext)) {
            this.a = tlsContext;
            byte[] a = TlsUtils.a(tlsContext, 64);
            CipherParameters keyParameter = new KeyParameter(a, 0, 32);
            CipherParameters keyParameter2 = new KeyParameter(a, 32, 32);
            this.b = new ChaChaEngine(20);
            this.c = new ChaChaEngine(20);
            if (!tlsContext.f()) {
                CipherParameters cipherParameters = keyParameter2;
                keyParameter2 = keyParameter;
                keyParameter = cipherParameters;
            }
            a = new byte[8];
            this.b.a(true, new ParametersWithIV(keyParameter2, a));
            this.c.a(false, new ParametersWithIV(keyParameter, a));
            return;
        }
        throw new TlsFatalAlert((short) 80);
    }

    public int a(int i) {
        return i - 16;
    }

    public byte[] a(long j, short s, byte[] bArr, int i, int i2) throws IOException {
        int i3 = i2 + 16;
        KeyParameter a = a(this.b, true, j);
        byte[] bArr2 = new byte[i3];
        this.b.a(bArr, i, i2, bArr2, 0);
        Object a2 = a(a, a(j, s, i2), bArr2, 0, i2);
        System.arraycopy(a2, 0, bArr2, i2, a2.length);
        return bArr2;
    }

    public byte[] b(long j, short s, byte[] bArr, int i, int i2) throws IOException {
        if (a(i2) < 0) {
            throw new TlsFatalAlert((short) 50);
        }
        int i3 = i2 - 16;
        if (Arrays.b(a(a(this.c, false, j), a(j, s, i3), bArr, i, i3), Arrays.a(bArr, i + i3, i + i2))) {
            byte[] bArr2 = new byte[i3];
            this.c.a(bArr, i, i3, bArr2, 0);
            return bArr2;
        }
        throw new TlsFatalAlert((short) 20);
    }

    protected KeyParameter a(ChaChaEngine chaChaEngine, boolean z, long j) {
        byte[] bArr = new byte[8];
        TlsUtils.a(j, bArr, 0);
        chaChaEngine.a(z, new ParametersWithIV(null, bArr));
        Object obj = new byte[64];
        chaChaEngine.a(obj, 0, obj.length, obj, 0);
        System.arraycopy(obj, 0, obj, 32, 16);
        KeyParameter keyParameter = new KeyParameter(obj, 16, 32);
        Poly1305KeyGenerator.a(keyParameter.a());
        return keyParameter;
    }

    protected byte[] a(KeyParameter keyParameter, byte[] bArr, byte[] bArr2, int i, int i2) {
        Mac poly1305 = new Poly1305();
        poly1305.a((CipherParameters) keyParameter);
        a(poly1305, bArr, 0, bArr.length);
        a(poly1305, bArr2, i, i2);
        byte[] bArr3 = new byte[poly1305.b()];
        poly1305.a(bArr3, 0);
        return bArr3;
    }

    protected void a(Mac mac, byte[] bArr, int i, int i2) {
        mac.a(bArr, i, i2);
        byte[] a = Pack.a(((long) i2) & 4294967295L);
        mac.a(a, 0, a.length);
    }

    protected byte[] a(long j, short s, int i) throws IOException {
        byte[] bArr = new byte[13];
        TlsUtils.a(j, bArr, 0);
        TlsUtils.a(s, bArr, 8);
        TlsUtils.a(this.a.e(), bArr, 9);
        TlsUtils.a(i, bArr, 11);
        return bArr;
    }
}
