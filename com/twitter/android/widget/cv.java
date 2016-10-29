package com.twitter.android.widget;

import android.view.animation.Animation;
import com.twitter.util.ui.c;

/* compiled from: Twttr */
class cv extends c {
    final /* synthetic */ NewItemBannerView a;
    private final boolean b;

    cv(NewItemBannerView newItemBannerView, boolean z) {
        this.a = newItemBannerView;
        this.b = z;
    }

    public void onAnimationEnd(Animation animation) {
        if (this.b) {
            this.a.setVisibility(0);
            this.a.d();
            return;
        }
        this.a.setVisibility(8);
        this.a.e();
    }
}
