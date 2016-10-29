package org.spongycastle.x509.util;

/* compiled from: Twttr */
public class StreamParsingException extends Exception {
    Throwable _e;

    public StreamParsingException(String str, Throwable th) {
        super(str);
        this._e = th;
    }

    public Throwable getCause() {
        return this._e;
    }
}
