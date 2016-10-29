package com.twitter.android.widget;

import android.database.DataSetObserver;

/* compiled from: Twttr */
class bs extends DataSetObserver {
    final /* synthetic */ br a;

    bs(br brVar) {
        this.a = brVar;
    }

    public void onInvalidated() {
        this.a.notifyDataSetInvalidated();
    }

    public void onChanged() {
        this.a.notifyDataSetChanged();
    }
}
