package org.parceler;

/* compiled from: Twttr */
public class ParcelerRuntimeException extends RuntimeException {
    public ParcelerRuntimeException(String str) {
        super(str);
    }

    public ParcelerRuntimeException(String str, Exception exception) {
        super(str, exception);
    }
}