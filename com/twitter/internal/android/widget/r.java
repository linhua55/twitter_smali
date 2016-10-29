package com.twitter.internal.android.widget;

import android.database.DataSetObserver;

/* compiled from: Twttr */
class r extends DataSetObserver {
    final /* synthetic */ HorizontalListView a;

    r(HorizontalListView horizontalListView) {
        this.a = horizontalListView;
    }

    public void onChanged() {
        this.a.d = this.a.c.getCount();
        this.a.f = 0;
        this.a.e = true;
        this.a.b = false;
        this.a.requestLayout();
    }

    public void onInvalidated() {
        this.a.d = 0;
        this.a.f = 0;
        this.a.e = true;
        this.a.b = false;
        this.a.requestLayout();
    }
}
