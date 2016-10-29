package com.twitter.android;

import android.view.animation.Animation;
import com.twitter.util.ui.c;

/* compiled from: Twttr */
public class bn extends c {
    private final bo a;

    public bn(bo boVar) {
        this.a = boVar;
    }

    public void onAnimationStart(Animation animation) {
        if (animation.equals(this.a.a())) {
            this.a.a(0);
        }
    }

    public void onAnimationEnd(Animation animation) {
        if (animation.equals(this.a.b())) {
            this.a.a(4);
        }
    }
}
