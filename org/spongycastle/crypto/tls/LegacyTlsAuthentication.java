package org.spongycastle.crypto.tls;

import java.io.IOException;

/* compiled from: Twttr */
public class LegacyTlsAuthentication extends ServerOnlyTlsAuthentication {
    protected CertificateVerifyer a;

    public LegacyTlsAuthentication(CertificateVerifyer certificateVerifyer) {
        this.a = certificateVerifyer;
    }

    public void a(Certificate certificate) throws IOException {
        if (!this.a.a(certificate.a())) {
            throw new TlsFatalAlert((short) 90);
        }
    }
}
