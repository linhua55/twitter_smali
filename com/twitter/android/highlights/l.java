package com.twitter.android.highlights;

import android.animation.Animator;
import android.content.Context;
import com.twitter.util.ui.d;

/* compiled from: Twttr */
final class l extends d {
    final /* synthetic */ m a;
    final /* synthetic */ p b;
    final /* synthetic */ Context c;
    final /* synthetic */ n d;

    l(m mVar, p pVar, Context context, n nVar) {
        this.a = mVar;
        this.b = pVar;
        this.c = context;
        this.d = nVar;
    }

    public void onAnimationEnd(Animator animator) {
        animator.removeListener(this);
        this.a.a(1);
        k.a(this.a, this.b, this.c, this.d);
    }
}
