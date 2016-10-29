package com.twitter.android;

import ama;
import android.database.Cursor;
import cgu;
import chk;
import defpackage.cgr;

/* compiled from: Twttr */
class pg implements chk<pk> {
    final /* synthetic */ ama a;
    final /* synthetic */ SearchResultsFragment b;

    pg(SearchResultsFragment searchResultsFragment, ama ama) {
        this.b = searchResultsFragment;
        this.a = ama;
    }

    public /* synthetic */ cgu a(Cursor cursor) {
        return b(cursor);
    }

    public cgr<pk> b(Cursor cursor) {
        return new cgr(this.a.a(cursor), cursor);
    }
}
