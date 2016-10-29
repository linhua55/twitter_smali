package defpackage;

import android.database.sqlite.SQLiteDatabase;
import com.twitter.database.internal.c;

/* compiled from: Twttr */
/* renamed from: aue */
public class aue extends c {
    private final SQLiteDatabase a;
    private final SQLiteDatabase b;

    public aue(SQLiteDatabase sQLiteDatabase) {
        if (sQLiteDatabase.isReadOnly()) {
            throw new IllegalArgumentException("SQLiteDatabaseWrapper constructor requires a writable DB.");
        }
        this.a = sQLiteDatabase;
        this.b = sQLiteDatabase;
    }

    protected SQLiteDatabase d() {
        return this.a;
    }

    protected SQLiteDatabase e() {
        return this.b;
    }
}
