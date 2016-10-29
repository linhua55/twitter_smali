package com.twitter.android.widget;

import android.database.DataSetObserver;

/* compiled from: Twttr */
class t extends DataSetObserver {
    final /* synthetic */ ComposerPoiFragment a;
    final /* synthetic */ s b;

    t(s sVar, ComposerPoiFragment composerPoiFragment) {
        this.b = sVar;
        this.a = composerPoiFragment;
    }

    public void onChanged() {
        this.b.notifyDataSetChanged();
    }

    public void onInvalidated() {
    }
}
