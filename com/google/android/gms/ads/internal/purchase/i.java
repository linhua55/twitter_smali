package com.google.android.gms.ads.internal.purchase;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.SystemClock;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.oi;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;

@oi
public class i {
    private static final String a;
    private static final Object c;
    private static i d;
    private final j b;

    static {
        a = String.format(Locale.US, "CREATE TABLE IF NOT EXISTS %s ( %s INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL, %s INTEGER)", new Object[]{"InAppPurchase", "purchase_id", "product_id", "developer_payload", "record_time"});
        c = new Object();
    }

    i(Context context) {
        this.b = new j(this, context, "google_inapp_purchase.db");
    }

    public static i a(Context context) {
        i iVar;
        synchronized (c) {
            if (d == null) {
                d = new i(context);
            }
            iVar = d;
        }
        return iVar;
    }

    public SQLiteDatabase a() {
        try {
            return this.b.getWritableDatabase();
        } catch (SQLiteException e) {
            b.d("Error opening writable conversion tracking database");
            return null;
        }
    }

    public g a(Cursor cursor) {
        return cursor == null ? null : new g(cursor.getLong(0), cursor.getString(1), cursor.getString(2));
    }

    public List<g> a(long j) {
        SQLiteException e;
        Throwable th;
        synchronized (c) {
            List<g> linkedList = new LinkedList();
            if (j <= 0) {
                return linkedList;
            }
            SQLiteDatabase a = a();
            if (a == null) {
                return linkedList;
            }
            Cursor query;
            try {
                query = a.query("InAppPurchase", null, null, null, null, null, "record_time ASC", String.valueOf(j));
                try {
                    if (query.moveToFirst()) {
                        do {
                            linkedList.add(a(query));
                        } while (query.moveToNext());
                    }
                    if (query != null) {
                        query.close();
                    }
                } catch (SQLiteException e2) {
                    e = e2;
                    try {
                        b.d("Error extracing purchase info: " + e.getMessage());
                        if (query != null) {
                            query.close();
                        }
                        return linkedList;
                    } catch (Throwable th2) {
                        th = th2;
                        if (query != null) {
                            query.close();
                        }
                        throw th;
                    }
                }
            } catch (SQLiteException e3) {
                e = e3;
                query = null;
                b.d("Error extracing purchase info: " + e.getMessage());
                if (query != null) {
                    query.close();
                }
                return linkedList;
            } catch (Throwable th3) {
                th = th3;
                query = null;
                if (query != null) {
                    query.close();
                }
                throw th;
            }
            return linkedList;
        }
    }

    public void a(g gVar) {
        if (gVar != null) {
            synchronized (c) {
                SQLiteDatabase a = a();
                if (a == null) {
                    return;
                }
                a.delete("InAppPurchase", String.format(Locale.US, "%s = %d", new Object[]{"purchase_id", Long.valueOf(gVar.a)}), null);
            }
        }
    }

    public int b() {
        Cursor cursor = null;
        int i = 0;
        synchronized (c) {
            SQLiteDatabase a = a();
            if (a == null) {
            } else {
                try {
                    cursor = a.rawQuery("select count(*) from InAppPurchase", null);
                    if (cursor.moveToFirst()) {
                        i = cursor.getInt(0);
                        if (cursor != null) {
                            cursor.close();
                        }
                    } else {
                        if (cursor != null) {
                            cursor.close();
                        }
                    }
                } catch (SQLiteException e) {
                    b.d("Error getting record count" + e.getMessage());
                    if (cursor != null) {
                        cursor.close();
                    }
                } catch (Throwable th) {
                    if (cursor != null) {
                        cursor.close();
                    }
                }
            }
        }
        return i;
    }

    public void b(g gVar) {
        if (gVar != null) {
            synchronized (c) {
                SQLiteDatabase a = a();
                if (a == null) {
                    return;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("product_id", gVar.c);
                contentValues.put("developer_payload", gVar.b);
                contentValues.put("record_time", Long.valueOf(SystemClock.elapsedRealtime()));
                gVar.a = a.insert("InAppPurchase", null, contentValues);
                if (((long) b()) > 20000) {
                    c();
                }
            }
        }
    }

    public void c() {
        Cursor query;
        SQLiteException e;
        synchronized (c) {
            SQLiteDatabase a = a();
            if (a == null) {
                return;
            }
            try {
                query = a.query("InAppPurchase", null, null, null, null, null, "record_time ASC", "1");
                if (query != null) {
                    try {
                        if (query.moveToFirst()) {
                            a(a(query));
                        }
                    } catch (SQLiteException e2) {
                        e = e2;
                        try {
                            b.d("Error remove oldest record" + e.getMessage());
                            if (query != null) {
                                query.close();
                            }
                        } catch (Throwable th) {
                            Throwable th2 = th;
                            if (query != null) {
                                query.close();
                            }
                            throw th2;
                        }
                    }
                }
                if (query != null) {
                    query.close();
                }
            } catch (SQLiteException e3) {
                e = e3;
                query = null;
                b.d("Error remove oldest record" + e.getMessage());
                if (query != null) {
                    query.close();
                }
            } catch (Throwable th3) {
                th2 = th3;
                query = null;
                if (query != null) {
                    query.close();
                }
                throw th2;
            }
        }
    }
}
