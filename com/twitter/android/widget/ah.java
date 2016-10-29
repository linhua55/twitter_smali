package com.twitter.android.widget;

import android.view.View;
import android.view.animation.Animation;
import com.twitter.util.ui.c;

/* compiled from: Twttr */
class ah extends c {
    final /* synthetic */ View a;
    final /* synthetic */ float b;
    final /* synthetic */ DraggableDrawerLayout c;

    ah(DraggableDrawerLayout draggableDrawerLayout, View view, float f) {
        this.c = draggableDrawerLayout;
        this.a = view;
        this.b = f;
    }

    public void onAnimationEnd(Animation animation) {
        this.a.setAlpha(this.b);
    }
}
