package com.twitter.android.widget;

import com.twitter.util.d;

/* compiled from: Twttr */
class ap implements Runnable {
    final /* synthetic */ Runnable a;
    final /* synthetic */ ExpandableViewHost b;

    ap(ExpandableViewHost expandableViewHost, Runnable runnable) {
        this.b = expandableViewHost;
        this.a = runnable;
    }

    public void run() {
        d.a(this.b, this.b.e, 0, 266, this.b.d);
        if (this.a != null) {
            this.b.postDelayed(this.a, 266);
        }
    }
}
