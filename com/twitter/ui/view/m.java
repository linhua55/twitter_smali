package com.twitter.ui.view;

import android.database.DataSetObserver;

/* compiled from: Twttr */
class m extends DataSetObserver {
    private final n a;

    private m(n nVar) {
        this.a = nVar;
    }

    public void onChanged() {
        super.onChanged();
        this.a.notifyDataSetChanged();
        this.a.b();
    }
}
