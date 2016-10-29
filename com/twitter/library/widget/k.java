package com.twitter.library.widget;

import android.view.animation.Animation;
import com.twitter.util.ui.c;
import defpackage.ceb;

/* compiled from: Twttr */
class k extends c {
    final /* synthetic */ boolean a;
    final /* synthetic */ ceb b;
    final /* synthetic */ InlineActionBar c;

    k(InlineActionBar inlineActionBar, boolean z, ceb ceb) {
        this.c = inlineActionBar;
        this.a = z;
        this.b = ceb;
    }

    public void onAnimationEnd(Animation animation) {
        if (this.a && this.c.t != null) {
            this.c.t.a(this.b.a());
        }
    }
}
