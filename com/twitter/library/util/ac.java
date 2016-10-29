package com.twitter.library.util;

import android.view.MotionEvent;
import android.view.View;
import com.twitter.ui.widget.TwitterButton;

/* compiled from: Twttr */
public abstract class ac extends ab {
    private final TwitterButton a;

    public ac(TwitterButton twitterButton) {
        this.a = twitterButton;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        this.a.onTouch(view, motionEvent);
        return super.onTouch(view, motionEvent);
    }
}
