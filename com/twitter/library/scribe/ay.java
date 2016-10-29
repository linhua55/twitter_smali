package com.twitter.library.scribe;

/* compiled from: Twttr */
public class ay {
    private final TwitterScribeLog a;

    public ay(long j) {
        this.a = new TwitterScribeLog(j);
    }

    public ay a(String str, String str2, String str3, String str4, String str5) {
        this.a.b(str, str2, str3, str4, str5);
        return this;
    }

    public ay a(String str, int i, String str2) {
        this.a.a(str, i, str2);
        return this;
    }

    public TwitterScribeLog a() {
        return this.a;
    }
}
