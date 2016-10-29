package com.twitter.library.widget;

import android.view.animation.Animation;
import com.twitter.util.ui.c;

/* compiled from: Twttr */
class g extends c {
    final /* synthetic */ FadeInTextView a;

    g(FadeInTextView fadeInTextView) {
        this.a = fadeInTextView;
    }

    public void onAnimationStart(Animation animation) {
        this.a.getChildAt(this.a.b).setVisibility(0);
    }

    public void onAnimationEnd(Animation animation) {
        if (this.a.c) {
            this.a.c();
        }
    }
}
