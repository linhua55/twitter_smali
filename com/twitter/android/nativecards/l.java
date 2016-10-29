package com.twitter.android.nativecards;

import android.view.animation.Animation;
import com.twitter.util.ui.c;

/* compiled from: Twttr */
class l extends c {
    final /* synthetic */ ConsumerPollCard a;

    l(ConsumerPollCard consumerPollCard) {
        this.a = consumerPollCard;
    }

    public void onAnimationEnd(Animation animation) {
        if (this.a.D.getDisplayedChild() == 1) {
            for (int i = 0; i < this.a.g.choiceCount; i++) {
                this.a.n[i].setPercentage(0);
                this.a.n[i].a();
            }
        }
        this.a.S = false;
    }
}
