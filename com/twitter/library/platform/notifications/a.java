package com.twitter.library.platform.notifications;

import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class a {
    public static final n<a> a;
    public final String b;
    public final long c;
    public final boolean d;
    public int e;
    public int f;
    public String g;
    public ad h;

    static {
        a = new b();
    }

    public a(String str, long j, boolean z) {
        this.b = str;
        this.c = j;
        this.d = z;
    }

    public boolean a() {
        return this.h != null && this.h.d > 0;
    }
}
