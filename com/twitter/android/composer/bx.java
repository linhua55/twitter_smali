package com.twitter.android.composer;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

/* compiled from: Twttr */
class bx implements OnTouchListener {
    final /* synthetic */ TweetBox a;

    bx(TweetBox tweetBox) {
        this.a = tweetBox;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (1 == motionEvent.getAction() && this.a.b != null) {
            this.a.b.a();
        }
        return false;
    }
}
