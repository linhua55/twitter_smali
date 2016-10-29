package com.twitter.android.widget.highlights;

import android.database.DataSetObserver;

/* compiled from: Twttr */
class m extends DataSetObserver {
    final /* synthetic */ StoriesViewPager a;

    private m(StoriesViewPager storiesViewPager) {
        this.a = storiesViewPager;
    }

    public void onChanged() {
        this.a.a();
    }

    public void onInvalidated() {
        this.a.a();
    }
}
