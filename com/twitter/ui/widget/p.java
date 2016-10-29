package com.twitter.ui.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* compiled from: Twttr */
class p extends AnimatorListenerAdapter {
    final /* synthetic */ int a;
    final /* synthetic */ PromptView b;

    p(PromptView promptView, int i) {
        this.b = promptView;
        this.a = i;
    }

    public void onAnimationEnd(Animator animator) {
        this.b.b();
        this.b.setAlpha(1.0f);
        this.b.getLayoutParams().height = this.a;
        PromptView.a(PromptView.a(this.b));
        PromptView.a(this.b.getPromptHeader());
        PromptView.a(this.b.getPromptSubtitle());
        PromptView.a(this.b.getPromptButton());
    }
}
