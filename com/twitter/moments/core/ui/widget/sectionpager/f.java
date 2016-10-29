package com.twitter.moments.core.ui.widget.sectionpager;

import android.database.DataSetObserver;

/* compiled from: Twttr */
class f extends DataSetObserver {
    final /* synthetic */ e a;

    f(e eVar) {
        this.a = eVar;
    }

    public void onChanged() {
        this.a.f.a();
    }
}
