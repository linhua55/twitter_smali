package org.spongycastle.util.encoders;

/* compiled from: Twttr */
public class DecoderException extends IllegalStateException {
    private Throwable cause;

    DecoderException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    public Throwable getCause() {
        return this.cause;
    }
}
