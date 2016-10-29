package com.twitter.android.client;

import android.app.Activity;
import bdj;
import rx.w;

/* compiled from: Twttr */
public class bo {
    private final Activity a;
    private final bdj b;
    private final br c;

    public bo(Activity activity, bdj bdj, br brVar) {
        this.a = activity;
        this.b = bdj;
        this.c = brVar;
    }

    public static bo a(Activity activity) {
        return new bo(activity, bdj.a(activity), new br());
    }

    public w<Boolean> a() {
        return w.a(new bp(this));
    }

    public boolean b() {
        return this.b.b();
    }
}
