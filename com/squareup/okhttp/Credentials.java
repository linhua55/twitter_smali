package com.squareup.okhttp;

import java.io.UnsupportedEncodingException;
import okio.ByteString;

/* compiled from: Twttr */
public final class Credentials {
    private Credentials() {
    }

    public static String basic(String str, String str2) {
        try {
            return "Basic " + ByteString.a((str + ":" + str2).getBytes("ISO-8859-1")).b();
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError();
        }
    }
}
