package com.twitter.util.serialization;

/* compiled from: Twttr */
class g {
    public static char a(int i) {
        return (char) ((i >>> 10) + 55232);
    }

    public static char b(int i) {
        return (char) ((i & 1023) + 56320);
    }
}
