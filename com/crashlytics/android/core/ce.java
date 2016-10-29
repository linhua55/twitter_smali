package com.crashlytics.android.core;

/* compiled from: Twttr */
public class ce {
    public static final ce a;
    public final String b;
    public final String c;
    public final String d;

    static {
        a = new ce();
    }

    public ce() {
        this(null, null, null);
    }

    public ce(String str, String str2, String str3) {
        this.b = str;
        this.c = str2;
        this.d = str3;
    }

    public boolean a() {
        return this.b == null && this.c == null && this.d == null;
    }
}
