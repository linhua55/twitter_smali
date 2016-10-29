package com.twitter.library.view;

import android.view.animation.Animation;
import com.twitter.util.ui.c;

/* compiled from: Twttr */
class t extends c {
    final /* synthetic */ ScrollingMarqueeTextView a;

    t(ScrollingMarqueeTextView scrollingMarqueeTextView) {
        this.a = scrollingMarqueeTextView;
    }

    public void onAnimationEnd(Animation animation) {
        if (!this.a.b) {
            this.a.startAnimation(this.a.d);
        }
    }
}
