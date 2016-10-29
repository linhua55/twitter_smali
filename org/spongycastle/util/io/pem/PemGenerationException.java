package org.spongycastle.util.io.pem;

import java.io.IOException;

/* compiled from: Twttr */
public class PemGenerationException extends IOException {
    private Throwable cause;

    public Throwable getCause() {
        return this.cause;
    }
}
