package com.twitter.library.api.geo;

import android.content.Context;
import com.twitter.library.client.Session;

/* compiled from: Twttr */
public class e {
    private Context a;
    private Session b;
    private String c;
    private String d;
    private String e;
    private String f;
    private long g;
    private boolean h;

    public e a(Context context) {
        this.a = context;
        return this;
    }

    public e a(Session session) {
        this.b = session;
        return this;
    }

    public e a(String str) {
        this.c = str;
        return this;
    }

    public e b(String str) {
        this.d = str;
        return this;
    }

    public e c(String str) {
        this.e = str;
        return this;
    }

    public e a(long j) {
        this.g = j;
        return this;
    }

    public e d(String str) {
        this.f = str;
        return this;
    }

    public e a(boolean z) {
        this.h = z;
        return this;
    }

    public c a() {
        return new c(this.b, this.c, this.g, this.d, this.e, this.f, this.h, null);
    }
}
