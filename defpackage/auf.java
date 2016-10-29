package defpackage;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.twitter.database.internal.c;

/* compiled from: Twttr */
/* renamed from: auf */
public class auf extends c {
    private final SQLiteOpenHelper a;

    public auf(SQLiteOpenHelper sQLiteOpenHelper) {
        this.a = sQLiteOpenHelper;
    }

    protected SQLiteDatabase d() {
        return this.a.getReadableDatabase();
    }

    protected SQLiteDatabase e() {
        return this.a.getWritableDatabase();
    }
}
