package com.twitter.library.provider;

import android.database.sqlite.SQLiteDatabase;
import com.twitter.database.model.n;
import defpackage.atz;

/* compiled from: Twttr */
class bf extends atz {
    final /* synthetic */ au b;

    bf(au auVar, int i) {
        this.b = auVar;
        super(i);
    }

    public void a(n nVar, SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("UPDATE account_settings SET notif_id=null;");
    }
}
