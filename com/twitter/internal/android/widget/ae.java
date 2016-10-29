package com.twitter.internal.android.widget;

import android.database.DataSetObserver;

/* compiled from: Twttr */
class ae extends DataSetObserver {
    final /* synthetic */ PopupEditText a;

    ae(PopupEditText popupEditText) {
        this.a = popupEditText;
    }

    public void onChanged() {
        super.onChanged();
        if (this.a.d || this.a.c) {
            this.a.a();
            this.a.d = false;
        }
    }

    public void onInvalidated() {
        super.onInvalidated();
        this.a.b();
    }
}
