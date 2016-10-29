package com.twitter.android.media.widget;

import android.view.animation.Animation;
import com.twitter.util.ui.c;

/* compiled from: Twttr */
class at extends c {
    final /* synthetic */ HoverGarbageCanView a;

    at(HoverGarbageCanView hoverGarbageCanView) {
        this.a = hoverGarbageCanView;
    }

    public void onAnimationEnd(Animation animation) {
        this.a.d.setVisibility(8);
        if (this.a.i == 0) {
            this.a.a.setVisibility(4);
            if (this.a.e != null) {
                this.a.e.setVisibility(4);
            }
        }
    }
}
