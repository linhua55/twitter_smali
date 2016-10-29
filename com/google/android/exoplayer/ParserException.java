package com.google.android.exoplayer;

import java.io.IOException;

/* compiled from: Twttr */
public class ParserException extends IOException {
    public ParserException(String str) {
        super(str);
    }

    public ParserException(Throwable th) {
        super(th);
    }

    public ParserException(String str, Throwable th) {
        super(str, th);
    }
}
