package com.twitter.android;

import android.widget.AbsListView;
import com.twitter.app.common.list.p;

/* compiled from: Twttr */
class rz implements p {
    final /* synthetic */ TimelineFragment a;

    rz(TimelineFragment timelineFragment) {
        this.a = timelineFragment;
    }

    public boolean a(AbsListView absListView, int i, int i2, int i3, boolean z) {
        if (z) {
            TimelineFragment.d(this.a).a();
        }
        return false;
    }

    public boolean a(AbsListView absListView, int i) {
        return false;
    }
}
