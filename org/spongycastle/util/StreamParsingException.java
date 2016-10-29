package org.spongycastle.util;

/* compiled from: Twttr */
public class StreamParsingException extends Exception {
    Throwable _e;

    public Throwable getCause() {
        return this._e;
    }
}
