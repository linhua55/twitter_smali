package com.twitter.android.widget;

import android.database.DataSetObserver;

/* compiled from: Twttr */
class bm extends DataSetObserver {
    final /* synthetic */ bl a;

    bm(bl blVar) {
        this.a = blVar;
    }

    public void onChanged() {
        this.a.notifyDataSetChanged();
    }

    public void onInvalidated() {
        this.a.notifyDataSetInvalidated();
    }
}
