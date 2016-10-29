package com.twitter.android.widget;

import android.database.DataSetObserver;

/* compiled from: Twttr */
class g extends DataSetObserver {
    final /* synthetic */ f a;

    g(f fVar) {
        this.a = fVar;
    }

    public void onChanged() {
        this.a.a(this.a.a.getCount());
    }
}
