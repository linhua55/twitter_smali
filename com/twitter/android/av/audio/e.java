package com.twitter.android.av.audio;

import android.view.ViewGroup.LayoutParams;
import android.widget.RelativeLayout;

/* compiled from: Twttr */
class e implements Runnable {
    final /* synthetic */ AudioCardViewerActivity a;

    e(AudioCardViewerActivity audioCardViewerActivity) {
        this.a = audioCardViewerActivity;
    }

    public void run() {
        this.a.a(this.a.getResources().getConfiguration());
        this.a.c.b();
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13, -1);
        this.a.q = true;
        this.a.p.a(this.a.c, this.a, layoutParams);
    }
}
