package com.twitter.internal.android.widget;

import android.database.DataSetObserver;

/* compiled from: Twttr */
class k extends DataSetObserver {
    final /* synthetic */ FlowLayout a;

    k(FlowLayout flowLayout) {
        this.a = flowLayout;
    }

    public void onChanged() {
        super.onChanged();
        FlowLayout.a(this.a);
        this.a.requestLayout();
    }

    public void onInvalidated() {
        super.onInvalidated();
        FlowLayout.a(this.a);
        this.a.requestLayout();
    }
}
