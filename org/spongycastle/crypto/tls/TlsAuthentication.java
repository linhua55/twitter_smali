package org.spongycastle.crypto.tls;

import java.io.IOException;

/* compiled from: Twttr */
public interface TlsAuthentication {
    TlsCredentials a(CertificateRequest certificateRequest) throws IOException;

    void a(Certificate certificate) throws IOException;
}
