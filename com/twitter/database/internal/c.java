package com.twitter.database.internal;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.twitter.database.model.b;
import com.twitter.util.aj;
import com.twitter.util.collection.n;
import com.twitter.util.j;
import defpackage.aua;
import java.util.List;

/* compiled from: Twttr */
public abstract class c implements b<Cursor, ContentValues> {
    protected abstract SQLiteDatabase d();

    protected abstract SQLiteDatabase e();

    public /* synthetic */ Object a(String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6) {
        return b(str, strArr, str2, strArr2, str3, str4, str5, str6);
    }

    public void a(String str) {
        j.c();
        e().execSQL(str);
    }

    public Cursor b(String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6) {
        j.c();
        Cursor query = d().query(str, strArr, str2, strArr2, str3, str4, str5, str6);
        return query != null ? query : new aua(strArr);
    }

    public int a(String str, String str2, String[] strArr) {
        j.c();
        Cursor rawQuery = d().rawQuery("SELECT COUNT(*) FROM " + str + (aj.a(str2) ? TtmlNode.ANONYMOUS_REGION_ID : " WHERE " + str2), strArr);
        if (rawQuery != null) {
            try {
                if (rawQuery.moveToFirst()) {
                    int i = rawQuery.getInt(0);
                    return i;
                }
                rawQuery.close();
            } finally {
                rawQuery.close();
            }
        }
        return 0;
    }

    public long a(String str, ContentValues contentValues) {
        j.c();
        return e().insert(str, null, contentValues);
    }

    public long b(String str, ContentValues contentValues) {
        j.c();
        return e().replace(str, null, contentValues);
    }

    public int a(String str, ContentValues contentValues, String str2, String[] strArr) {
        j.c();
        return e().update(str, contentValues, str2, strArr);
    }

    public int b(String str, String str2, String[] strArr) {
        j.c();
        return e().delete(str, str2, strArr);
    }

    public void a() {
        e().beginTransaction();
    }

    public void b() {
        e().endTransaction();
    }

    public void c() {
        e().setTransactionSuccessful();
    }

    public void a(boolean z) {
        j.c();
        e().execSQL("PRAGMA foreign_keys = " + (z ? "ON" : "OFF") + ';');
    }

    public List<String> b(String str) {
        n d = n.d();
        Cursor rawQuery = d().rawQuery("pragma table_info(" + str + ");", null);
        if (rawQuery != null) {
            try {
                int columnIndex = rawQuery.getColumnIndex("name");
                while (rawQuery.moveToNext()) {
                    d.c(rawQuery.getString(columnIndex));
                }
            } finally {
                rawQuery.close();
            }
        }
        return (List) d.q();
    }
}
