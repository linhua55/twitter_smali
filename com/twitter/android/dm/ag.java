package com.twitter.android.dm;

import android.view.ViewTreeObserver.OnGlobalLayoutListener;

/* compiled from: Twttr */
class ag implements OnGlobalLayoutListener {
    final /* synthetic */ ShareViaDMComposeFragment a;

    ag(ShareViaDMComposeFragment shareViaDMComposeFragment) {
        this.a = shareViaDMComposeFragment;
    }

    public void onGlobalLayout() {
        if (ShareViaDMComposeFragment.a(this.a).getViewTreeObserver() != null) {
            ShareViaDMComposeFragment.b(this.a).getViewTreeObserver().removeGlobalOnLayoutListener(this);
            ShareViaDMComposeFragment.d(this.a).b(ShareViaDMComposeFragment.c(this.a));
        }
    }
}
