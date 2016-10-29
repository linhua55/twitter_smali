package com.twitter.android.moments.ui.animation;

import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

/* compiled from: Twttr */
class f implements OnPreDrawListener {
    final /* synthetic */ MomentsActivityTransition a;

    f(MomentsActivityTransition momentsActivityTransition) {
        this.a = momentsActivityTransition;
    }

    public boolean onPreDraw() {
        ViewTreeObserver viewTreeObserver = MomentsActivityTransition.a(this.a).getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(this);
        }
        MomentsActivityTransition.g(this.a).a(MomentsActivityTransition.b(this.a), MomentsActivityTransition.c(this.a), MomentsActivityTransition.d(this.a), MomentsActivityTransition.e(this.a), MomentsActivityTransition.f(this.a));
        return true;
    }
}
