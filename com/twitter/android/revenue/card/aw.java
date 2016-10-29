package com.twitter.android.revenue.card;

import android.view.MotionEvent;
import android.view.View;
import com.twitter.library.util.ac;
import com.twitter.ui.widget.TwitterButton;

/* compiled from: Twttr */
class aw extends ac {
    final /* synthetic */ StatsAndCtaView a;

    aw(StatsAndCtaView statsAndCtaView, TwitterButton twitterButton) {
        this.a = statsAndCtaView;
        super(twitterButton);
    }

    public void a(View view, MotionEvent motionEvent) {
        this.a.b.a(view, motionEvent);
    }
}
