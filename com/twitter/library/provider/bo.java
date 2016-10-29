package com.twitter.library.provider;

import android.database.DataSetObservable;

/* compiled from: Twttr */
public class bo extends DataSetObservable {
    final /* synthetic */ bm a;
    private boolean b;

    public bo(bm bmVar) {
        this.a = bmVar;
        this.b = true;
    }

    public void a(boolean z) {
        this.b = z;
    }

    public void notifyChanged() {
        if (this.b) {
            super.notifyChanged();
        }
    }
}
