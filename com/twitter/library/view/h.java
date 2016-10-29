package com.twitter.library.view;

import com.twitter.util.al;

/* compiled from: Twttr */
public class h {
    public String a;
    public String b;
    private final long c;
    private final long d;

    public h(String str, String str2, long j, long j2) {
        this.a = str;
        this.b = str2;
        this.c = j;
        this.d = j2;
    }

    public boolean a() {
        return a(al.b() / 1000);
    }

    public boolean a(long j) {
        return j > this.c && j < this.d;
    }
}
