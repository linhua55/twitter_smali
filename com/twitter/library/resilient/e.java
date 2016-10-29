package com.twitter.library.resilient;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.twitter.library.client.bg;
import defpackage.atv;
import defpackage.bbn;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class e extends atv {
    private static e a;
    private final g b;

    protected e(Context context) {
        super(context, "persistent_jobs.db", 1);
        this.b = new g(context);
        bg.a().a(this.b);
        a();
    }

    public static synchronized e a(Context context) {
        e eVar;
        synchronized (e.class) {
            if (a == null) {
                a = new e(context.getApplicationContext());
            }
            eVar = a;
        }
        return eVar;
    }

    public int b() {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            int delete = writableDatabase.delete("persistent_jobs", "created_at < (SELECT MIN( created_at ) FROM (SELECT created_at FROM persistent_jobs ORDER BY created_at DESC LIMIT 500 ));", null);
            writableDatabase.setTransactionSuccessful();
            return delete;
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE persistent_jobs (_id INTEGER PRIMARY KEY,job_id TEXT,type TEXT,job_version INT,user_id INT,created_at INT,executed_at INT,content TEXT);");
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    public synchronized int c() {
        return a(null, new String[0]);
    }

    public synchronized int a(long j) {
        return a("user_id=?", Long.toString(j));
    }

    private synchronized int a(String str, String... strArr) {
        int i;
        Cursor query = getReadableDatabase().query("persistent_jobs", new String[]{"COUNT(*)"}, str, strArr, null, null, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    i = query.getInt(0);
                } else {
                    i = 0;
                }
                query.close();
            } catch (Throwable th) {
                query.close();
            }
        } else {
            i = 0;
        }
        return i;
    }

    public synchronized List<d> d() {
        return b(null, null);
    }

    public synchronized List<d> a(long j, String str) {
        return b("user_id=? AND type=?", new String[]{Long.toString(j), str});
    }

    private synchronized List<d> b(String str, String[] strArr) {
        List<d> arrayList;
        arrayList = new ArrayList();
        Cursor query = getReadableDatabase().query("persistent_jobs", f.a, str, strArr, null, null, null);
        if (query != null) {
            while (query.moveToNext()) {
                try {
                    arrayList.add(new d(query.getString(0), query.getString(1), query.getInt(2), query.getLong(3), query.getLong(4), query.getLong(5), query.getString(6)));
                } catch (Throwable e) {
                    bbn.a(e);
                } catch (Throwable th) {
                    query.close();
                }
            }
            query.close();
        }
        return arrayList;
    }

    public synchronized void a(Context context, b bVar) {
        a(context, bVar, true);
    }

    public synchronized void a(Context context, b bVar, boolean z) {
        d j = bVar.j();
        if (j == null) {
            throw new UnsupportedOperationException("Persistent Job Info not provided for: " + bVar.getClass().getName());
        }
        a(context, j, z);
    }

    public synchronized void a(Context context, d dVar, boolean z) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("job_id", dVar.a);
            contentValues.put("type", dVar.b);
            contentValues.put("job_version", Integer.valueOf(dVar.c));
            contentValues.put("user_id", Long.valueOf(dVar.d));
            contentValues.put("created_at", Long.valueOf(dVar.c()));
            contentValues.put("executed_at", Long.valueOf(dVar.d()));
            contentValues.put("content", dVar.b());
            if (writableDatabase.update("persistent_jobs", contentValues, "job_id =? ", new String[]{dVar.a}) == 0) {
                writableDatabase.insert("persistent_jobs", null, contentValues);
            }
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
            if (z) {
                int b = b();
                if (b > 0) {
                    bbn.a(new Exception("The persistent job queue overflowed by: " + b));
                }
            }
            b(context);
        } catch (Throwable th) {
            writableDatabase.endTransaction();
        }
    }

    public synchronized boolean a(Context context, d dVar) {
        return a(context, dVar.a);
    }

    public synchronized boolean a(Context context, String str) {
        boolean z = true;
        synchronized (this) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                int delete = writableDatabase.delete("persistent_jobs", "job_id=?", new String[]{str});
                writableDatabase.setTransactionSuccessful();
                writableDatabase.endTransaction();
                b(context);
                if (delete <= 0) {
                    z = false;
                }
            } catch (Throwable th) {
                writableDatabase.endTransaction();
            }
        }
        return z;
    }

    public synchronized int a(Context context, long j) {
        int delete;
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            delete = writableDatabase.delete("persistent_jobs", "user_id=?", new String[]{Long.toString(j)});
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
            b(context);
        } catch (Throwable th) {
            writableDatabase.endTransaction();
        }
        return delete;
    }

    protected synchronized void b(Context context) {
        Intent intent = new Intent(context, PersistentJobsStickyService.class);
        intent.putExtra("startCondition", 1);
        context.startService(intent);
    }
}
