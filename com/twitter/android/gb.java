package com.twitter.android;

import com.twitter.library.api.ak;

/* compiled from: Twttr */
public class gb {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;

    public gb(String str, String str2, String str3, String str4, String str5, String str6) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f = str6;
    }

    public static gb a(ak akVar) {
        return new gb(akVar.a, akVar.b, akVar.c, akVar.d, akVar.e, null);
    }
}
