package com.twitter.library.media.widget;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class q implements OnClickListener {
    final /* synthetic */ AnimatedGifView a;
    final /* synthetic */ p b;

    q(p pVar, AnimatedGifView animatedGifView) {
        this.b = pVar;
        this.a = animatedGifView;
    }

    public void onClick(View view) {
        if (this.a.e()) {
            this.a.c();
            return;
        }
        this.a.setMinRepeatCount(Integer.MAX_VALUE);
        this.a.b();
    }
}
