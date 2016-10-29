package com.twitter.library.media.util.transcode;

/* compiled from: Twttr */
public class TranscoderException extends Exception {
    private final boolean mIsFatal;

    public TranscoderException(boolean z, String str, Throwable th) {
        super(str, th);
        this.mIsFatal = z;
    }

    public boolean a() {
        return this.mIsFatal;
    }
}
