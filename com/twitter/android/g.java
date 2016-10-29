package com.twitter.android;

import android.database.Cursor;
import android.support.v4.app.LoaderManager;
import cgu;
import defpackage.aos;
import defpackage.apa;
import defpackage.apb;

/* compiled from: Twttr */
public class g extends apb<aos, Cursor, cgu<r>> implements apa {
    public g(LoaderManager loaderManager, int i, com.twitter.util.object.g<bu> gVar) {
        super(new aos(loaderManager, i, gVar));
    }

    public cgu<r> a(Cursor cursor) {
        return cursor != null ? new s(cursor) : null;
    }

    public void a() {
        ((aos) b()).a();
    }
}
