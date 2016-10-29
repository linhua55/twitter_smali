package com.twitter.android.revenue.card;

import android.view.MotionEvent;
import android.view.View;
import com.twitter.library.scribe.NativeCardUserAction;
import com.twitter.library.util.ac;
import com.twitter.ui.widget.TwitterButton;

/* compiled from: Twttr */
class t extends ac {
    final /* synthetic */ s a;

    t(s sVar, TwitterButton twitterButton) {
        this.a = sVar;
        super(twitterButton);
    }

    public void a(View view, MotionEvent motionEvent) {
        this.a.v.a(this.a.w, NativeCardUserAction.a(this.a.e(), view, motionEvent, 0));
    }
}
