package com.twitter.android.composer.geotag;

import android.database.DataSetObserver;

/* compiled from: Twttr */
class m extends DataSetObserver {
    final /* synthetic */ l a;

    m(l lVar) {
        this.a = lVar;
    }

    public void onChanged() {
        this.a.a();
    }

    public void onInvalidated() {
    }
}
