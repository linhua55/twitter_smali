package org.spongycastle.jce.provider;

import org.spongycastle.jce.exception.ExtException;

/* compiled from: Twttr */
public class AnnotatedException extends Exception implements ExtException {
    private Throwable _underlyingException;

    AnnotatedException(String str, Throwable th) {
        super(str);
        this._underlyingException = th;
    }

    AnnotatedException(String str) {
        this(str, null);
    }

    public Throwable getCause() {
        return this._underlyingException;
    }
}
