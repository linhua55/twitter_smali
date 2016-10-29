package org.spongycastle.util;

/* compiled from: Twttr */
public class StoreException extends RuntimeException {
    private Throwable _e;

    public StoreException(String str, Throwable th) {
        super(str);
        this._e = th;
    }

    public Throwable getCause() {
        return this._e;
    }
}
