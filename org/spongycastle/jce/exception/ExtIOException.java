package org.spongycastle.jce.exception;

import java.io.IOException;

/* compiled from: Twttr */
public class ExtIOException extends IOException implements ExtException {
    private Throwable cause;

    public Throwable getCause() {
        return this.cause;
    }
}
