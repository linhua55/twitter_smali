package org.spongycastle.util.encoders;

/* compiled from: Twttr */
public class EncoderException extends IllegalStateException {
    private Throwable cause;

    EncoderException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    public Throwable getCause() {
        return this.cause;
    }
}
