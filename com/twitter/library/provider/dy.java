package com.twitter.library.provider;

import android.database.sqlite.SQLiteDatabase;
import com.twitter.database.model.n;
import defpackage.atz;

/* compiled from: Twttr */
class dy extends atz {
    final /* synthetic */ dr b;

    dy(dr drVar, int i) {
        this.b = drVar;
        super(i);
    }

    public void a(n nVar, SQLiteDatabase sQLiteDatabase) {
        nVar.c(new String[]{"DELETE FROM status_groups WHERE type=27;", "DELETE FROM timeline WHERE type=5;"});
    }
}
