package org.spongycastle.crypto.tls;

import java.io.IOException;
import org.spongycastle.crypto.CryptoException;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;

/* compiled from: Twttr */
public class DefaultTlsSignerCredentials extends AbstractTlsSignerCredentials {
    protected TlsContext a;
    protected Certificate b;
    protected AsymmetricKeyParameter c;
    protected SignatureAndHashAlgorithm d;
    protected TlsSigner e;

    public Certificate a() {
        return this.b;
    }

    public byte[] a(byte[] bArr) throws IOException {
        try {
            if (TlsUtils.c(this.a)) {
                return this.e.a(this.d, this.c, bArr);
            }
            return this.e.a(this.c, bArr);
        } catch (CryptoException e) {
            throw new TlsFatalAlert((short) 80);
        }
    }

    public SignatureAndHashAlgorithm br_() {
        return this.d;
    }
}
