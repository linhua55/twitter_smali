package com.twitter.library.provider;

import android.database.sqlite.SQLiteDatabase;
import com.twitter.database.model.n;
import defpackage.atz;

/* compiled from: Twttr */
class eh extends atz {
    final /* synthetic */ dr b;

    eh(dr drVar, int i) {
        this.b = drVar;
        super(i);
    }

    public void a(n nVar, SQLiteDatabase sQLiteDatabase) {
        nVar.c(new String[]{"DELETE FROM activities;"});
        nVar.b(new String[]{"activity_statuses_delete_trigger", "activity_users_delete_trigger"});
        nVar.c(new String[]{"CREATE TRIGGER activity_statuses_delete_trigger AFTER DELETE ON activities FOR EACH ROW BEGIN DELETE FROM status_groups WHERE type IN(12,14) AND tag=OLD.max_position;END;", "CREATE TRIGGER activity_users_delete_trigger AFTER DELETE ON activities FOR EACH ROW BEGIN DELETE FROM user_groups WHERE type IN(8,13) AND tag=OLD.max_position;END;"});
    }
}
