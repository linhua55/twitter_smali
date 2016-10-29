package com.twitter.android.client;

import android.content.Intent;

/* compiled from: Twttr */
class aj {
    public boolean a;
    public Intent b;
    public Intent c;
    public boolean d;
    public Intent e;
    public boolean f;
    public String g;
    public int h;

    private aj() {
        this.a = false;
        this.b = null;
        this.c = null;
        this.d = false;
        this.e = null;
        this.f = false;
        this.g = null;
        this.h = -1;
    }

    static String a(long j, long j2) {
        return new ah().a(j).a("draftId", j2).toString();
    }
}
