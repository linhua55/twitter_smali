package com.twitter.library.provider;

import android.database.sqlite.SQLiteDatabase;
import com.twitter.database.model.n;
import defpackage.atz;

/* compiled from: Twttr */
class ef extends atz {
    final /* synthetic */ dr b;

    ef(dr drVar, int i) {
        this.b = drVar;
        super(i);
    }

    public void a(n nVar, SQLiteDatabase sQLiteDatabase) {
        nVar.c(new String[]{"DELETE FROM activities;", "DELETE FROM user_groups WHERE type IN(8,13);", "DELETE FROM status_groups WHERE type IN(12,14);"});
    }
}
