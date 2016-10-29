package com.twitter.android.av.revenue;

import android.view.MotionEvent;
import android.view.View;
import com.twitter.library.util.ac;
import com.twitter.ui.widget.TwitterButton;

/* compiled from: Twttr */
class d extends ac {
    final /* synthetic */ VideoCardCanvasActivity a;

    d(VideoCardCanvasActivity videoCardCanvasActivity, TwitterButton twitterButton) {
        this.a = videoCardCanvasActivity;
        super(twitterButton);
    }

    public void a(View view, MotionEvent motionEvent) {
        this.a.a(view, motionEvent);
    }
}
