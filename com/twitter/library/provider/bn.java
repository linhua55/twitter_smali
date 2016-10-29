package com.twitter.library.provider;

import android.database.ContentObserver;

/* compiled from: Twttr */
class bn extends ContentObserver {
    final /* synthetic */ bm a;

    bn(bm bmVar) {
        this.a = bmVar;
        super(null);
    }

    public void onChange(boolean z) {
        this.a.h = z;
        if (this.a.f) {
            this.a.g = true;
        } else {
            bm.a(this.a).dispatchChange(z);
        }
    }
}
