package org.spongycastle.crypto.tls;

import java.io.IOException;

/* compiled from: Twttr */
public class LegacyTlsClient extends DefaultTlsClient {
    protected CertificateVerifyer i;

    public TlsAuthentication g() throws IOException {
        return new LegacyTlsAuthentication(this.i);
    }
}
