package com.twitter.android.widget;

import android.view.View;

/* compiled from: Twttr */
class bu implements Runnable {
    final /* synthetic */ InterceptingRelativeLayout a;

    bu(InterceptingRelativeLayout interceptingRelativeLayout) {
        this.a = interceptingRelativeLayout;
    }

    public void run() {
        View w = InterceptingRelativeLayout.a(this.a).w();
        if (w != null) {
            InterceptingRelativeLayout.a(this.a, true);
            if (InterceptingRelativeLayout.b(this.a) != null) {
                InterceptingRelativeLayout.b(this.a).setAction(3);
                w.dispatchTouchEvent(InterceptingRelativeLayout.b(this.a));
                InterceptingRelativeLayout.a(this.a, null);
            }
            InterceptingRelativeLayout.b(this.a, false);
        }
    }
}
