package org.spongycastle.jce.provider;

import java.security.cert.CRLException;

/* compiled from: Twttr */
class ExtCRLException extends CRLException {
    Throwable cause;

    ExtCRLException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    public Throwable getCause() {
        return this.cause;
    }
}
