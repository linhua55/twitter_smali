package com.twitter.android.revenue.card;

import android.view.MotionEvent;
import android.view.View;
import com.twitter.library.util.ac;
import com.twitter.ui.widget.TwitterButton;

/* compiled from: Twttr */
class u extends ac {
    final /* synthetic */ String a;
    final /* synthetic */ s b;

    u(s sVar, TwitterButton twitterButton, String str) {
        this.b = sVar;
        this.a = str;
        super(twitterButton);
    }

    public void a(View view, MotionEvent motionEvent) {
        this.b.a(this.a);
    }
}
