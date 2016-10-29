package com.twitter.android.av;

import android.content.Context;

/* compiled from: Twttr */
public class bm {
    protected final Context a;
    private final bp b;
    private bo c;

    public bm(Context context) {
        this.a = context;
        this.b = new bp(this, null);
    }

    public void a(long j) {
        this.b.removeMessages(2);
        this.b.sendEmptyMessageDelayed(2, j);
    }

    public void a() {
        this.b.removeMessages(2);
    }

    public void a(bo boVar) {
        this.c = boVar;
    }

    public bo b() {
        return this.c;
    }
}
