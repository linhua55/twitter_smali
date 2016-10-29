package com.twitter.library.provider;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import com.twitter.database.model.n;
import defpackage.atz;

/* compiled from: Twttr */
class bi extends atz {
    final /* synthetic */ au b;

    bi(au auVar, int i) {
        this.b = auVar;
        super(i);
    }

    public void a(n nVar, SQLiteDatabase sQLiteDatabase) {
        if (this.b.d) {
            ContentValues contentValues = new ContentValues(1);
            contentValues.put("interval", Integer.valueOf(1440));
            sQLiteDatabase.update("account_settings", contentValues, "interval=?", new String[]{String.valueOf(60)});
        }
    }
}
