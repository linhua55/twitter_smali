package com.twitter.library.provider;

import android.database.DataSetObserver;

/* compiled from: Twttr */
class bp extends DataSetObserver {
    final /* synthetic */ bm a;

    bp(bm bmVar) {
        this.a = bmVar;
    }

    public void onInvalidated() {
        this.a.a.notifyInvalidated();
    }

    public void onChanged() {
        this.a.a.notifyChanged();
    }
}
