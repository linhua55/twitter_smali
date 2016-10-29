package org.spongycastle.jce.exception;

import java.security.cert.CertificateEncodingException;

/* compiled from: Twttr */
public class ExtCertificateEncodingException extends CertificateEncodingException implements ExtException {
    private Throwable cause;

    public Throwable getCause() {
        return this.cause;
    }
}
