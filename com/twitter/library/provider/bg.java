package com.twitter.library.provider;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import cne;
import com.twitter.database.model.ColumnDefinition.Type;
import com.twitter.database.model.a;
import com.twitter.database.model.n;
import com.twitter.database.schema.i;
import defpackage.atz;

/* compiled from: Twttr */
class bg extends atz {
    final /* synthetic */ au b;

    bg(au auVar, int i) {
        this.b = auVar;
        super(i);
    }

    public void a(n nVar, SQLiteDatabase sQLiteDatabase) {
        Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT * FROM activity_states LIMIT 0", null);
        if (rawQuery != null) {
            try {
                if (rawQuery.getColumnIndex("unread_interactions") == -1) {
                    nVar.a(i.class, new a("unread_interactions", Type.INTEGER).a());
                }
                rawQuery.close();
            } catch (Throwable th) {
                rawQuery.close();
            }
        }
        this.b.j = cne.a(this.b.j, new int[]{131072});
    }
}
