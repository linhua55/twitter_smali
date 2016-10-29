package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteQuery;

/* compiled from: Twttr */
/* renamed from: auh */
final class auh implements CursorFactory {
    auh() {
    }

    public Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
        return new aug(sQLiteCursorDriver, str, sQLiteQuery);
    }
}
