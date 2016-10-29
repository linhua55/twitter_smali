package com.twitter.android;

import android.support.v7.recyclerview.BuildConfig;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class be {
    private final String a;
    private String b;
    private String[] c;
    private String[] d;

    public be(String str, String str2, String[] strArr, String[] strArr2) {
        this.a = str;
        this.b = str2;
        this.c = strArr;
        this.d = strArr2;
    }

    public be(String str) {
        this(str, "ANDROID", null, new String[]{"fileanandroidbug-email", "triage"});
    }

    public be a(String str) {
        this.b = str;
        return this;
    }

    public be a(String... strArr) {
        this.c = strArr;
        return this;
    }

    public String b(String str) {
        r1 = new Object[5];
        r1[2] = String.format("#project=\"%s\"", new Object[]{this.b});
        r1[3] = a();
        r1[4] = b();
        return String.format("%s in [%s] %s %s %s #issueType=\"Bug\"", r1);
    }

    private String a() {
        if (this.c == null) {
            return BuildConfig.VERSION_NAME;
        }
        return String.format("#components=\"%s\"", new Object[]{aj.a((CharSequence) ",", this.c)});
    }

    private String b() {
        if (this.d == null) {
            return BuildConfig.VERSION_NAME;
        }
        return String.format("#labels=\"%s\"", new Object[]{aj.a((CharSequence) ",", this.d)});
    }

    public String toString() {
        return this.a;
    }
}
