package com.twitter.library.provider;

import android.database.sqlite.SQLiteDatabase;
import com.twitter.database.model.n;
import defpackage.atz;

/* compiled from: Twttr */
class dv extends atz {
    final /* synthetic */ dr b;

    dv(dr drVar, int i) {
        this.b = drVar;
        super(i);
    }

    public void a(n nVar, SQLiteDatabase sQLiteDatabase) {
        nVar.c(new String[]{"CREATE TRIGGER notifications_tab_delete_trigger AFTER DELETE ON activities FOR EACH ROW BEGIN DELETE FROM notifications_tab WHERE data_type = 0 AND data_id = OLD.max_position;END;"});
    }
}
