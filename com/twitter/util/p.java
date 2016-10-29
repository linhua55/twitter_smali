package com.twitter.util;

/* compiled from: Twttr */
public class p {
    public static String a(Class cls) {
        return a(cls.getCanonicalName());
    }

    public static String a(String str) {
        return a(str, "$$Impl");
    }

    public static String a(String str, String str2) {
        return str.replace('.', '$').replace(',', '_').replace('<', '_').replace('>', '_') + str2;
    }
}
