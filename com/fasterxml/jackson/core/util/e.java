package com.fasterxml.jackson.core.util;

import java.util.regex.Pattern;

/* compiled from: Twttr */
public class e {
    private static final Pattern a;

    static {
        a = Pattern.compile("[-_./;:]");
    }

    public static final void a() {
        throw new RuntimeException("Internal error: this code path should never get executed");
    }
}
