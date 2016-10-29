package com.twitter.ui.widget.touchintercept;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* compiled from: Twttr */
class b extends AnimatorListenerAdapter {
    boolean a;
    final /* synthetic */ d b;
    final /* synthetic */ a c;

    b(a aVar, d dVar) {
        this.c = aVar;
        this.b = dVar;
    }

    public void onAnimationStart(Animator animator) {
        this.a = false;
    }

    public void onAnimationCancel(Animator animator) {
        this.a = true;
    }

    public void onAnimationEnd(Animator animator) {
        if (!this.a) {
            if (this.c.m == 2) {
                this.c.m = 0;
                this.c.a();
            } else if (this.c.m == 3) {
                this.b.a();
            }
        }
    }
}
