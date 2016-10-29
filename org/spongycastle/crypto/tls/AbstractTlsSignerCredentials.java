package org.spongycastle.crypto.tls;

/* compiled from: Twttr */
public abstract class AbstractTlsSignerCredentials extends AbstractTlsCredentials implements TlsSignerCredentials {
    public SignatureAndHashAlgorithm br_() {
        throw new IllegalStateException("TlsSignerCredentials implementation does not support (D)TLS 1.2+");
    }
}
