package org.spongycastle.crypto.tls;

import org.spongycastle.crypto.CryptoException;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;

/* compiled from: Twttr */
public abstract class AbstractTlsSigner implements TlsSigner {
    protected TlsContext a;

    public void a(TlsContext tlsContext) {
        this.a = tlsContext;
    }

    public byte[] a(AsymmetricKeyParameter asymmetricKeyParameter, byte[] bArr) throws CryptoException {
        return a(null, asymmetricKeyParameter, bArr);
    }
}
