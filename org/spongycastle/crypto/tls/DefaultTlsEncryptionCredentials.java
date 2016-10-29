package org.spongycastle.crypto.tls;

import java.io.IOException;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.RSAKeyParameters;

/* compiled from: Twttr */
public class DefaultTlsEncryptionCredentials extends AbstractTlsEncryptionCredentials {
    protected TlsContext a;
    protected Certificate b;
    protected AsymmetricKeyParameter c;

    public Certificate a() {
        return this.b;
    }

    public byte[] a(byte[] bArr) throws IOException {
        return TlsRSAUtils.a(this.a, (RSAKeyParameters) this.c, bArr);
    }
}
