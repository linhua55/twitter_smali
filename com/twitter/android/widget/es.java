package com.twitter.android.widget;

import android.database.DataSetObserver;

/* compiled from: Twttr */
class es extends DataSetObserver {
    final /* synthetic */ er a;

    es(er erVar) {
        this.a = erVar;
    }

    public void onInvalidated() {
        this.a.notifyDataSetInvalidated();
    }

    public void onChanged() {
        if (this.a.a) {
            this.a.notifyDataSetChanged();
        }
    }
}
