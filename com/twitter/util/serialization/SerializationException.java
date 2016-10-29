package com.twitter.util.serialization;

import java.io.IOException;

/* compiled from: Twttr */
public class SerializationException extends IOException {
    private static final long serialVersionUID = 1354673450935990055L;

    public SerializationException(String str) {
        super(str);
    }

    public SerializationException(String str, Throwable th) {
        super(str, th);
    }
}
