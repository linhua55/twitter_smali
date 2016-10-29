package com.twitter.android.media.widget;

import android.database.DataSetObserver;

/* compiled from: Twttr */
class cg extends DataSetObserver {
    final /* synthetic */ VideoSegmentListView a;

    private cg(VideoSegmentListView videoSegmentListView) {
        this.a = videoSegmentListView;
    }

    public void onChanged() {
        this.a.b = this.a.a.getCount();
        this.a.c = true;
        this.a.requestLayout();
    }

    public void onInvalidated() {
        this.a.b = 0;
        this.a.c = true;
        this.a.requestLayout();
    }
}
