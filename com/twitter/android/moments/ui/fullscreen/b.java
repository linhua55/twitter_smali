package com.twitter.android.moments.ui.fullscreen;

import android.app.Activity;

/* compiled from: Twttr */
public class b implements fb {
    private final Activity a;

    public b(Activity activity) {
        this.a = activity;
    }

    public boolean a() {
        return this.a.getResources().getConfiguration().orientation == 2;
    }

    public void a(boolean z) {
        if (z) {
            this.a.setRequestedOrientation(4);
        } else {
            this.a.setRequestedOrientation(1);
        }
    }
}
