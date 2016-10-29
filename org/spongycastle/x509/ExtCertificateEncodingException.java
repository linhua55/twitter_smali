package org.spongycastle.x509;

import java.security.cert.CertificateEncodingException;

/* compiled from: Twttr */
class ExtCertificateEncodingException extends CertificateEncodingException {
    Throwable cause;

    public Throwable getCause() {
        return this.cause;
    }
}
