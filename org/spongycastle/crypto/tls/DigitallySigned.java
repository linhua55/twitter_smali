package org.spongycastle.crypto.tls;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: Twttr */
public class DigitallySigned {
    protected SignatureAndHashAlgorithm a;
    protected byte[] b;

    public DigitallySigned(SignatureAndHashAlgorithm signatureAndHashAlgorithm, byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("'signature' cannot be null");
        }
        this.a = signatureAndHashAlgorithm;
        this.b = bArr;
    }

    public SignatureAndHashAlgorithm a() {
        return this.a;
    }

    public byte[] b() {
        return this.b;
    }

    public void a(OutputStream outputStream) throws IOException {
        if (this.a != null) {
            this.a.a(outputStream);
        }
        TlsUtils.b(this.b, outputStream);
    }

    public static DigitallySigned a(TlsContext tlsContext, InputStream inputStream) throws IOException {
        SignatureAndHashAlgorithm signatureAndHashAlgorithm = null;
        if (TlsUtils.c(tlsContext)) {
            signatureAndHashAlgorithm = SignatureAndHashAlgorithm.a(inputStream);
        }
        return new DigitallySigned(signatureAndHashAlgorithm, TlsUtils.f(inputStream));
    }
}
