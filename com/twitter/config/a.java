package com.twitter.config;

import defpackage.cqf;

/* compiled from: Twttr */
public abstract class a {
    private static String a;

    static {
        a = "com.twitter.android";
    }

    private a() {
    }

    public static void a(String str) {
        cqf.a(a.class);
        a = str;
    }

    public static String a() {
        return a;
    }
}
