package com.twitter.android.widget;

/* compiled from: Twttr */
class eo implements Runnable {
    final /* synthetic */ ScrollingHeaderListFragment a;

    eo(ScrollingHeaderListFragment scrollingHeaderListFragment) {
        this.a = scrollingHeaderListFragment;
    }

    public void run() {
        ScrollingHeaderListFragment.a(this.a).scrollTo(ScrollingHeaderListFragment.a(this.a).getScrollX(), -this.a.R);
    }
}
