package com.twitter.android.widget.highlights;

/* compiled from: Twttr */
class e implements Runnable {
    final /* synthetic */ StoriesViewPager a;

    e(StoriesViewPager storiesViewPager) {
        this.a = storiesViewPager;
    }

    public void run() {
        this.a.setScrollState(0);
        this.a.b();
    }
}
