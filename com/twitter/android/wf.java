package com.twitter.android;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.PorterDuff.Mode;
import android.view.View;
import android.widget.ImageView;

/* compiled from: Twttr */
class wf extends AnimatorListenerAdapter {
    final /* synthetic */ View a;
    final /* synthetic */ wb b;

    wf(wb wbVar, View view) {
        this.b = wbVar;
        this.a = view;
    }

    public void onAnimationStart(Animator animator) {
        ((ImageView) this.a).getDrawable().setColorFilter(this.b.n, Mode.SRC_IN);
    }
}
