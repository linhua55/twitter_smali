package com.twitter.android;

import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.ViewAnimator;
import com.twitter.library.widget.TweetView;

/* compiled from: Twttr */
public class mf extends vt {
    public final TweetView a;
    public final ViewAnimator b;

    public mf(View view) {
        super(view, true);
        this.b = (ViewAnimator) view.findViewById(2131951689);
        Animation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(150);
        alphaAnimation.setFillAfter(true);
        this.b.setInAnimation(alphaAnimation);
        alphaAnimation = new AlphaAnimation(0.4f, 0.0f);
        alphaAnimation.setDuration(150);
        alphaAnimation.setFillAfter(false);
        this.b.setOutAnimation(alphaAnimation);
        this.a = (TweetView) this.b.getChildAt(1);
    }
}
