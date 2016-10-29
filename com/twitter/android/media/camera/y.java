package com.twitter.android.media.camera;

import android.view.ViewGroup;
import android.view.animation.Animation;
import com.twitter.util.ui.c;

/* compiled from: Twttr */
class y extends c {
    final /* synthetic */ ViewGroup a;
    final /* synthetic */ x b;

    y(x xVar, ViewGroup viewGroup) {
        this.b = xVar;
        this.a = viewGroup;
    }

    public void onAnimationEnd(Animation animation) {
        this.a.requestLayout();
    }
}
