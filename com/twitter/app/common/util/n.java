package com.twitter.app.common.util;

import android.app.Activity;

/* compiled from: Twttr */
public class n {
    private final p<Activity> a;

    public n(c cVar) {
        this.a = new p(300000, 180000, 5);
        cVar.a(new o(this));
    }

    public p<Activity> a() {
        return this.a;
    }
}
