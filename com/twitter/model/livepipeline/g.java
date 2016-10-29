package com.twitter.model.livepipeline;

/* compiled from: Twttr */
public class g {
    public final String a;
    public final int b;
    public final String c;

    public g(String str, int i, String str2) {
        this.a = str;
        this.b = i;
        this.c = str2;
    }

    public String toString() {
        return "[topic: " + this.a + "; code: " + this.b + "; message: " + this.c + "]";
    }
}
