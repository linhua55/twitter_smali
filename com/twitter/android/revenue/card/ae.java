package com.twitter.android.revenue.card;

import android.view.MotionEvent;
import android.view.View;
import com.twitter.library.util.ac;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.ui.widget.TwitterButton;

/* compiled from: Twttr */
class ae extends ac {
    final /* synthetic */ ac a;

    ae(ac acVar, TwitterButton twitterButton) {
        this.a = acVar;
        super(twitterButton);
    }

    public void a(View view, MotionEvent motionEvent) {
        if (this.a.f == DisplayMode.FORWARD) {
            this.a.b(view, motionEvent);
        } else {
            this.a.a(view, motionEvent);
        }
    }
}
