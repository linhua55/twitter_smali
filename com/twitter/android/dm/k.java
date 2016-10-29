package com.twitter.android.dm;

import android.animation.Animator;
import android.view.View;
import com.twitter.util.ui.d;

/* compiled from: Twttr */
final class k extends d {
    final /* synthetic */ View a;
    final /* synthetic */ float b;

    k(View view, float f) {
        this.a = view;
        this.b = f;
    }

    public void onAnimationStart(Animator animator) {
        this.a.setPivotX((float) this.a.getWidth());
    }

    public void onAnimationEnd(Animator animator) {
        this.a.setScaleX(1.0f);
        this.a.setScaleY(1.0f);
        this.a.setPivotX(this.b);
    }
}
