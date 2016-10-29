package com.twitter.library.provider;

import android.database.sqlite.SQLiteDatabase;
import com.twitter.database.model.n;
import defpackage.atz;

/* compiled from: Twttr */
class bc extends atz {
    final /* synthetic */ au b;

    bc(au auVar, int i) {
        this.b = auVar;
        super(i);
    }

    public void a(n nVar, SQLiteDatabase sQLiteDatabase) {
        nVar.a(new String[]{"scribe"});
        this.b.h = true;
    }
}
