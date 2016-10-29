package com.twitter.android.util;

import android.view.animation.Animation;
import com.twitter.util.ui.c;

/* compiled from: Twttr */
class l extends c {
    final /* synthetic */ k a;

    l(k kVar) {
        this.a = kVar;
    }

    public void onAnimationEnd(Animation animation) {
        this.a.b.clearAnimation();
        this.a.b.setRotation((float) this.a.a);
    }
}
