package com.twitter.library.provider;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.net.Uri;

/* compiled from: Twttr */
public class u {
    private final SQLiteOpenHelper a;

    private u(SQLiteOpenHelper sQLiteOpenHelper) {
        this.a = sQLiteOpenHelper;
    }

    public int a(long j, int i, boolean z, e eVar) {
        SQLiteDatabase writableDatabase = this.a.getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues(1);
            contentValues.put("dismissed", Integer.valueOf(z ? 1 : 0));
            int update = writableDatabase.update("timeline", contentValues, "entity_id=?", new String[]{String.valueOf(j)});
            writableDatabase.setTransactionSuccessful();
            if (update > 0 && eVar != null) {
                eVar.a(new Uri[]{ck.a(i)});
            }
            return update;
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public static u a(SQLiteOpenHelper sQLiteOpenHelper) {
        return new u(sQLiteOpenHelper);
    }
}
