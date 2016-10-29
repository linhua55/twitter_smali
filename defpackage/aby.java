package defpackage;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.twitter.util.m;

/* compiled from: Twttr */
/* renamed from: aby */
public class aby extends atv {
    private static final String[] a;
    private static aby b;

    static {
        a = new String[]{"query"};
    }

    private aby(Context context) {
        super(context.getApplicationContext(), "found_media", 1);
    }

    public static synchronized aby a(Context context) {
        aby aby;
        synchronized (aby.class) {
            if (b == null) {
                b = new aby(context);
            }
            aby = b;
        }
        return aby;
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE query_history (query TEXT PRIMARY KEY,timestamp INT);");
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    public Cursor a(String str) {
        int length = str.length();
        StringBuilder stringBuilder = new StringBuilder(length + 2);
        if (length > 1) {
            stringBuilder.append('%');
        }
        stringBuilder.append(str).append('%');
        return getReadableDatabase().query("query_history", a, "query LIKE ?", new String[]{stringBuilder.toString()}, null, null, "timestamp DESC");
    }

    public void b(String str) {
        ContentValues contentValues = new ContentValues(1);
        contentValues.put("timestamp", Long.valueOf(m.b()));
        SQLiteDatabase writableDatabase = getWritableDatabase();
        if (writableDatabase.update("query_history", contentValues, "query=?", new String[]{str}) == 0) {
            contentValues.put("query", str);
            writableDatabase.insert("query_history", null, contentValues);
        }
    }
}
