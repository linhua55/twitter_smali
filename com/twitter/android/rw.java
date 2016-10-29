package com.twitter.android;

import android.widget.AbsListView;
import com.twitter.app.common.list.p;

/* compiled from: Twttr */
class rw implements p {
    final /* synthetic */ TimelineFragment a;

    rw(TimelineFragment timelineFragment) {
        this.a = timelineFragment;
    }

    public boolean a(AbsListView absListView, int i, int i2, int i3, boolean z) {
        return false;
    }

    public boolean a(AbsListView absListView, int i) {
        if (i == 0) {
            TimelineFragment.a(this.a, this.a.ap().d());
        }
        return false;
    }
}
