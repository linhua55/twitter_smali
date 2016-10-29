package org.spongycastle.crypto.tls;

import java.io.IOException;

/* compiled from: Twttr */
public interface TlsSignerCredentials extends TlsCredentials {
    byte[] a(byte[] bArr) throws IOException;

    SignatureAndHashAlgorithm br_();
}
