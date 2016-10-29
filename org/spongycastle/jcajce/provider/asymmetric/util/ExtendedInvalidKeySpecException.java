package org.spongycastle.jcajce.provider.asymmetric.util;

import java.security.spec.InvalidKeySpecException;

/* compiled from: Twttr */
public class ExtendedInvalidKeySpecException extends InvalidKeySpecException {
    private Throwable cause;

    public ExtendedInvalidKeySpecException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    public Throwable getCause() {
        return this.cause;
    }
}
