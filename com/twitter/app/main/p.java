package com.twitter.app.main;

import android.database.DataSetObserver;

/* compiled from: Twttr */
class p extends DataSetObserver {
    final /* synthetic */ MainActivity a;
    final /* synthetic */ o b;

    p(o oVar, MainActivity mainActivity) {
        this.b = oVar;
        this.a = mainActivity;
    }

    public void onChanged() {
        o.a(this.b, -1);
        MainActivity.a(this.b.g, -1);
    }

    public void onInvalidated() {
        o.b(this.b, -1);
        MainActivity.a(this.b.g, -1);
    }
}
