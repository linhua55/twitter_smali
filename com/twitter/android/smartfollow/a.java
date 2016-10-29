package com.twitter.android.smartfollow;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.res.Resources;
import android.widget.TextView;
import com.twitter.util.ui.d;

/* compiled from: Twttr */
final class a extends d {
    final /* synthetic */ Resources a;
    final /* synthetic */ int b;
    final /* synthetic */ TextView c;

    a(Resources resources, int i, TextView textView) {
        this.a = resources;
        this.b = i;
        this.c = textView;
    }

    public void onAnimationEnd(Animator animator) {
        CharSequence string = this.a.getString(this.b);
        float dimension = this.a.getDimension(2131690533);
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.c, "alpha", new float[]{1.0f}).setDuration(500);
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(this.c, "translationY", new float[]{dimension, 0.0f}).setDuration(600);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(new Animator[]{duration2, duration});
        this.c.setText(string);
        this.c.setContentDescription(string);
        animatorSet.start();
    }
}
