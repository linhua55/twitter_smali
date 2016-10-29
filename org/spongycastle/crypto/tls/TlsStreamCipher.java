package org.spongycastle.crypto.tls;

import java.io.IOException;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.StreamCipher;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.util.Arrays;

/* compiled from: Twttr */
public class TlsStreamCipher implements TlsCipher {
    protected TlsContext a;
    protected StreamCipher b;
    protected StreamCipher c;
    protected TlsMac d;
    protected TlsMac e;
    protected boolean f;

    public TlsStreamCipher(TlsContext tlsContext, StreamCipher streamCipher, StreamCipher streamCipher2, Digest digest, Digest digest2, int i, boolean z) throws IOException {
        boolean f = tlsContext.f();
        this.a = tlsContext;
        this.f = z;
        this.b = streamCipher;
        this.c = streamCipher2;
        int b = ((i * 2) + digest.b()) + digest2.b();
        byte[] a = TlsUtils.a(tlsContext, b);
        TlsMac tlsMac = new TlsMac(tlsContext, digest, a, 0, digest.b());
        int b2 = 0 + digest.b();
        TlsMac tlsMac2 = new TlsMac(tlsContext, digest2, a, b2, digest2.b());
        int b3 = b2 + digest2.b();
        CipherParameters keyParameter = new KeyParameter(a, b3, i);
        int i2 = b3 + i;
        KeyParameter keyParameter2 = new KeyParameter(a, i2, i);
        if (i2 + i != b) {
            throw new TlsFatalAlert((short) 80);
        }
        CipherParameters cipherParameters;
        if (f) {
            this.d = tlsMac2;
            this.e = tlsMac;
            this.b = streamCipher2;
            this.c = streamCipher;
            cipherParameters = keyParameter2;
        } else {
            this.d = tlsMac;
            this.e = tlsMac2;
            this.b = streamCipher;
            this.c = streamCipher2;
            cipherParameters = keyParameter;
            Object obj = keyParameter2;
        }
        if (z) {
            a = new byte[8];
            ParametersWithIV parametersWithIV = new ParametersWithIV(cipherParameters, a);
            cipherParameters = new ParametersWithIV(keyParameter, a);
            keyParameter = parametersWithIV;
        } else {
            CipherParameters cipherParameters2 = keyParameter;
            keyParameter = cipherParameters;
            cipherParameters = cipherParameters2;
        }
        this.b.a(true, keyParameter);
        this.c.a(false, cipherParameters);
    }

    public byte[] a(long j, short s, byte[] bArr, int i, int i2) {
        if (this.f) {
            a(this.b, true, j);
        }
        byte[] bArr2 = new byte[(this.d.a() + i2)];
        this.b.a(bArr, i, i2, bArr2, 0);
        byte[] a = this.d.a(j, s, bArr, i, i2);
        this.b.a(a, 0, a.length, bArr2, i2);
        return bArr2;
    }

    public byte[] b(long j, short s, byte[] bArr, int i, int i2) throws IOException {
        if (this.f) {
            a(this.c, false, j);
        }
        int a = this.e.a();
        if (i2 < a) {
            throw new TlsFatalAlert((short) 50);
        }
        int i3 = i2 - a;
        byte[] bArr2 = new byte[i2];
        this.c.a(bArr, i, i2, bArr2, 0);
        a(j, s, bArr2, i3, i2, bArr2, 0, i3);
        return Arrays.a(bArr2, 0, i3);
    }

    private void a(long j, short s, byte[] bArr, int i, int i2, byte[] bArr2, int i3, int i4) throws IOException {
        if (!Arrays.b(Arrays.a(bArr, i, i2), this.e.a(j, s, bArr2, i3, i4))) {
            throw new TlsFatalAlert((short) 20);
        }
    }

    private void a(StreamCipher streamCipher, boolean z, long j) {
        byte[] bArr = new byte[8];
        TlsUtils.a(j, bArr, 0);
        streamCipher.a(z, new ParametersWithIV(null, bArr));
    }
}
