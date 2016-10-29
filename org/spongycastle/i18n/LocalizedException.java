package org.spongycastle.i18n;

/* compiled from: Twttr */
public class LocalizedException extends Exception {
    private Throwable cause;
    protected ErrorBundle message;

    public Throwable getCause() {
        return this.cause;
    }
}
