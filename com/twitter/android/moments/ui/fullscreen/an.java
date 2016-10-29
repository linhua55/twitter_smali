package com.twitter.android.moments.ui.fullscreen;

import android.app.Activity;
import android.content.Intent;

/* compiled from: Twttr */
public class an {
    private final Activity a;

    public an(Activity activity) {
        this.a = activity;
    }

    public void a() {
        this.a.finish();
    }

    public void a(long j) {
        if (j <= 0) {
            throw new IllegalArgumentException("A valid moment ID is required to start the full screen capsule.");
        }
        Intent b = MomentsFullScreenPagerActivity.b(this.a, j);
        a();
        this.a.overridePendingTransition(0, 0);
        this.a.startActivity(b);
    }
}
