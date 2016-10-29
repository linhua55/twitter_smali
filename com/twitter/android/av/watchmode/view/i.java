package com.twitter.android.av.watchmode.view;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.support.annotation.VisibleForTesting;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.RelativeLayout.LayoutParams;

/* compiled from: Twttr */
public class i {
    @VisibleForTesting
    int a;
    @VisibleForTesting
    int b;
    private final WatchModeListItemView c;
    private final l d;

    public i(WatchModeListItemView watchModeListItemView) {
        this(watchModeListItemView, new l());
    }

    i(WatchModeListItemView watchModeListItemView, l lVar) {
        this.a = 0;
        this.c = watchModeListItemView;
        this.d = lVar;
    }

    public void a(AnimatorListener animatorListener) {
        AnimatorSet a = this.d.a();
        Animator a2 = this.d.a(this.c, "top", this.b);
        LayoutParams layoutParams = (LayoutParams) this.c.d.getLayoutParams();
        Animator a3 = this.d.a(new n(layoutParams, this.c.d, null), 0, this.c.h.getHeight());
        Animator a4 = this.d.a(new e(this.c), this.c.getHeight(), this.a);
        a.addListener(animatorListener);
        a.addListener(new j(this, layoutParams));
        a.playTogether(new Animator[]{a2, a3, a4});
        a.setDuration(400);
        a.start();
    }

    public void a() {
        this.c.setTop(this.b);
        ViewGroup.LayoutParams layoutParams = this.c.getLayoutParams();
        layoutParams.height = this.a;
        this.c.h.setTranslationY(0.0f);
        this.c.setLayoutParams(layoutParams);
        this.c.requestLayout();
    }

    public void b(AnimatorListener animatorListener) {
        ViewParent parent = this.c.getParent();
        if (parent instanceof View) {
            this.a = this.c.getMeasuredHeight();
            this.b = this.c.getTop();
            View view = (View) parent;
            AnimatorSet a = this.d.a();
            Animator a2 = this.d.a(this.c, "top", view.getTop());
            AnimatorUpdateListener eVar = new e(this.c);
            Animator a3 = this.d.a(eVar, this.a, view.getHeight());
            int bottom = (view.getBottom() - this.c.h.getHeight()) - this.c.h.getTop();
            Animator a4 = this.d.a(this.c.h, "translationY", bottom);
            LayoutParams layoutParams = (LayoutParams) this.c.d.getLayoutParams();
            Animator a5 = this.d.a(new n(layoutParams, this.c.d, null), this.c.h.getHeight(), 0);
            a.playTogether(new Animator[]{a2, a3, a4, a5});
            a.addListener(animatorListener);
            a.addListener(new k(this, layoutParams));
            a.setDuration(400);
            a.start();
        }
    }
}
