package com.twitter.android;

import android.database.DataSetObserver;

/* compiled from: Twttr */
class he extends DataSetObserver {
    final /* synthetic */ HomeTimelineFragment a;

    he(HomeTimelineFragment homeTimelineFragment) {
        this.a = homeTimelineFragment;
    }

    public void onChanged() {
        HomeTimelineFragment.a(this.a, false);
    }
}
