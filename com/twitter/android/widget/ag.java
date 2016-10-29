package com.twitter.android.widget;

import android.view.animation.Animation;
import com.twitter.util.ui.c;

/* compiled from: Twttr */
class ag extends c {
    final /* synthetic */ DraggableDrawerLayout a;

    ag(DraggableDrawerLayout draggableDrawerLayout) {
        this.a = draggableDrawerLayout;
    }

    public void onAnimationEnd(Animation animation) {
        this.a.e();
    }
}
