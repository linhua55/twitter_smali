package com.twitter.android.av;

import android.view.MotionEvent;
import android.view.View;
import com.twitter.library.util.ac;
import com.twitter.ui.widget.TwitterButton;

/* compiled from: Twttr */
class ap extends ac {
    final /* synthetic */ FullscreenVideoCardCanvasChromeView a;

    ap(FullscreenVideoCardCanvasChromeView fullscreenVideoCardCanvasChromeView, TwitterButton twitterButton) {
        this.a = fullscreenVideoCardCanvasChromeView;
        super(twitterButton);
    }

    public void a(View view, MotionEvent motionEvent) {
        this.a.a(view, motionEvent);
    }
}
