package com.twitter.library.widget;

import android.view.animation.Animation;
import com.twitter.util.ui.c;

/* compiled from: Twttr */
class i extends c {
    final /* synthetic */ FadeInTextView a;

    i(FadeInTextView fadeInTextView) {
        this.a = fadeInTextView;
    }

    public void onAnimationEnd(Animation animation) {
        if (this.a.b == this.a.a.length - 1 && this.a.h != null) {
            this.a.h.a();
        }
        if (this.a.c) {
            this.a.getChildAt(this.a.b).setVisibility(4);
            this.a.b = this.a.b + 1;
            this.a.c = false;
            this.a.a();
        }
    }
}
