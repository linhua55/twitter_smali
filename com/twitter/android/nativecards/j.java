package com.twitter.android.nativecards;

import android.view.animation.Animation;
import com.twitter.util.ui.c;

/* compiled from: Twttr */
class j extends c {
    final /* synthetic */ CardPreviewView a;

    j(CardPreviewView cardPreviewView) {
        this.a = cardPreviewView;
    }

    public void onAnimationEnd(Animation animation) {
        super.onAnimationEnd(animation);
        if (CardPreviewView.a(this.a) != null) {
            CardPreviewView.b(this.a).b(CardPreviewView.a(this.a));
            CardPreviewView.a(this.a, null);
        }
        CardPreviewView.b(this.a).setVisibility(8);
        CardPreviewView.b(this.a).clearAnimation();
        this.a.setVisibility(CardPreviewView.c(this.a));
    }
}
