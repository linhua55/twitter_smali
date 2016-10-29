package com.twitter.library.scribe;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import defpackage.atv;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
public class ScribeDatabaseHelper extends atv implements t {
    public static final String[] a;
    public static final String b;
    private static final Map<String, ScribeDatabaseHelper> c;

    static {
        a = new String[]{"category", "log", "request_id", "retry_count"};
        b = "CREATE TABLE scribe (_id INTEGER PRIMARY KEY,log_type TEXT DEFAULT \"" + LogType.a + "\"," + "category" + " TEXT," + "log" + " BLOB," + "request_id" + " TEXT DEFAULT \"0\"," + "retry_count" + " INT DEFAULT 0);";
        c = new HashMap();
    }

    public static synchronized ScribeDatabaseHelper a(Context context, long j) {
        ScribeDatabaseHelper scribeDatabaseHelper;
        synchronized (ScribeDatabaseHelper.class) {
            String a = a(j);
            scribeDatabaseHelper = (ScribeDatabaseHelper) c.get(a);
            if (scribeDatabaseHelper == null) {
                scribeDatabaseHelper = new ScribeDatabaseHelper(context.getApplicationContext(), j);
                c.put(a, scribeDatabaseHelper);
                scribeDatabaseHelper.c();
            }
        }
        return scribeDatabaseHelper;
    }

    static String a(long j) {
        return j + "-" + "scribe.db";
    }

    private ScribeDatabaseHelper(Context context, long j) {
        super(context, a(j), 2);
        a();
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(b);
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i == 1) {
            sQLiteDatabase.execSQL("ALTER TABLE scribe ADD COLUMN log_type TEXT DEFAULT '" + LogType.a + "';");
            sQLiteDatabase.execSQL("ALTER TABLE scribe ADD COLUMN category TEXT;");
        }
    }

    public void b() {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            writableDatabase.delete("scribe", null, null);
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public static synchronized void b(long j) {
        synchronized (ScribeDatabaseHelper.class) {
            ScribeDatabaseHelper scribeDatabaseHelper = (ScribeDatabaseHelper) c.remove(a(j));
            if (scribeDatabaseHelper != null) {
                scribeDatabaseHelper.close();
            }
        }
    }

    public long a(byte[] bArr) {
        return a(LogType.a, null, bArr);
    }

    public long a(String str, byte[] bArr) {
        return a(LogType.b, str, bArr);
    }

    private long a(LogType logType, String str, byte[] bArr) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("log_type", logType.toString());
        if (str != null) {
            contentValues.put("category", str);
        }
        contentValues.put("log", bArr);
        contentValues.put("request_id", String.valueOf(0));
        long valueOf = Integer.valueOf(0);
        contentValues.put("retry_count", valueOf);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            valueOf = writableDatabase.insert("scribe", null, contentValues);
            writableDatabase.setTransactionSuccessful();
            return valueOf;
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void a(String str) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            writableDatabase.delete("scribe", "request_id=?", new String[]{str});
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void bl_() {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            writableDatabase.delete("scribe", "retry_count=?", new String[]{String.valueOf(5)});
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void b(String str) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            writableDatabase.execSQL("UPDATE scribe SET retry_count = retry_count + 1 WHERE request_id=?", new String[]{str});
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void a(String str, String str2, String str3, int i) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            writableDatabase.execSQL("UPDATE scribe SET request_id =?  where _id in (select _id from scribe where request_id =? and log_type =? order by _id LIMIT ?);", new String[]{str2, str, str3, String.valueOf(i)});
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void a(String str, String str2, String str3) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("request_id", str2);
            writableDatabase.update("scribe", contentValues, "log_type=? AND request_id=?", new String[]{str3, str});
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    private void c() {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("request_id", String.valueOf(0));
            writableDatabase.update("scribe", contentValues, "request_id!=\"0\"", null);
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public Cursor c(String str) {
        return getReadableDatabase().query("scribe", a, "request_id=?", new String[]{str}, null, null, null);
    }
}
