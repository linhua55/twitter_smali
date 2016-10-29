package com.twitter.android;

import java.util.regex.Pattern;

/* compiled from: Twttr */
class in {
    public final String a;
    public final Pattern b;

    in(String str, String str2) {
        this.a = str;
        this.b = Pattern.compile(str2);
    }

    public String toString() {
        return this.a;
    }
}
