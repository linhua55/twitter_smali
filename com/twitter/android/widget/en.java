package com.twitter.android.widget;

import android.view.ViewTreeObserver.OnGlobalLayoutListener;

/* compiled from: Twttr */
class en implements OnGlobalLayoutListener {
    final /* synthetic */ ScrollingHeaderListFragment a;

    en(ScrollingHeaderListFragment scrollingHeaderListFragment) {
        this.a = scrollingHeaderListFragment;
    }

    public void onGlobalLayout() {
        this.a.aa();
        ScrollingHeaderListFragment.a(this.a).getViewTreeObserver().removeGlobalOnLayoutListener(this);
    }
}
