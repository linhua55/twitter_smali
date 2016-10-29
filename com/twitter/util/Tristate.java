package com.twitter.util;

/* compiled from: Twttr */
public enum Tristate {
    UNDEFINED,
    FALSE,
    TRUE;

    public static Tristate a(boolean z) {
        return z ? TRUE : FALSE;
    }
}
