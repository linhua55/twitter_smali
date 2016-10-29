package com.twitter.library.view;

import android.view.animation.Animation;
import com.twitter.util.ui.c;

/* compiled from: Twttr */
class u extends c {
    final /* synthetic */ ScrollingMarqueeTextView a;

    u(ScrollingMarqueeTextView scrollingMarqueeTextView) {
        this.a = scrollingMarqueeTextView;
    }

    public void onAnimationEnd(Animation animation) {
        this.a.setVisibility(8);
        this.a.b(this.a.a + 1);
    }
}
