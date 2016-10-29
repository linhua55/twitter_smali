package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.CursorWindow;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Build.VERSION;
import android.support.annotation.WorkerThread;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.google.android.gms.internal.wg;
import com.google.android.gms.internal.wh;
import com.google.android.gms.internal.wk;
import com.google.android.gms.internal.ws;
import com.google.android.gms.internal.wt;
import com.google.android.gms.internal.wv;
import com.google.android.gms.internal.ww;
import com.google.android.gms.internal.xm;
import com.google.android.gms.internal.zzsn;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

class ak extends cl {
    private static final Map<String, String> a;
    private final an b;
    private final ac c;

    static {
        a = new ArrayMap(13);
        a.put("app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;");
        a.put("app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;");
        a.put("gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;");
        a.put("dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;");
        a.put("measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;");
        a.put("last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;");
        a.put("day", "ALTER TABLE apps ADD COLUMN day INTEGER;");
        a.put("daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;");
        a.put("daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;");
        a.put("daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;");
        a.put("remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;");
        a.put("config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;");
        a.put("failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;");
    }

    ak(bx bxVar) {
        super(bxVar);
        this.c = new ac(l());
        this.b = new an(this, m(), I());
    }

    private String I() {
        if (!u().N()) {
            return u().K();
        }
        if (u().O()) {
            return u().K();
        }
        s().v().a("Using secondary database");
        return u().L();
    }

    private boolean J() {
        return m().getDatabasePath(I()).exists();
    }

    @TargetApi(11)
    @WorkerThread
    static int a(Cursor cursor, int i) {
        if (VERSION.SDK_INT >= 11) {
            return cursor.getType(i);
        }
        CursorWindow window = ((SQLiteCursor) cursor).getWindow();
        int position = cursor.getPosition();
        return window.isNull(position, i) ? 0 : window.isLong(position, i) ? 1 : window.isFloat(position, i) ? 2 : window.isString(position, i) ? 3 : window.isBlob(position, i) ? 4 : -1;
    }

    @WorkerThread
    private long a(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            cursor = w().rawQuery(str, strArr);
            if (cursor.moveToFirst()) {
                long j = cursor.getLong(0);
                if (cursor != null) {
                    cursor.close();
                }
                return j;
            }
            throw new SQLiteException("Database returned empty set");
        } catch (SQLiteException e) {
            s().b().a("Database error", str, e);
            throw e;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    @WorkerThread
    private long a(String str, String[] strArr, long j) {
        Cursor cursor = null;
        try {
            cursor = w().rawQuery(str, strArr);
            if (cursor.moveToFirst()) {
                j = cursor.getLong(0);
                if (cursor != null) {
                    cursor.close();
                }
            } else if (cursor != null) {
                cursor.close();
            }
            return j;
        } catch (SQLiteException e) {
            s().b().a("Database error", str, e);
            throw e;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    @WorkerThread
    private void a(String str, wg wgVar) {
        Object obj = null;
        G();
        f();
        bm.a(str);
        bm.a(wgVar);
        bm.a(wgVar.c);
        bm.a(wgVar.b);
        if (wgVar.a == null) {
            s().c().a("Audience with no ID");
            return;
        }
        int intValue = wgVar.a.intValue();
        for (wh whVar : wgVar.c) {
            if (whVar.a == null) {
                s().c().a("Event filter with no ID. Audience definition ignored. appId, audienceId", str, wgVar.a);
                return;
            }
        }
        for (wk wkVar : wgVar.b) {
            if (wkVar.a == null) {
                s().c().a("Property filter with no ID. Audience definition ignored. appId, audienceId", str, wgVar.a);
                return;
            }
        }
        Object obj2 = 1;
        for (wh a : wgVar.c) {
            if (!a(str, intValue, a)) {
                obj2 = null;
                break;
            }
        }
        if (obj2 != null) {
            for (wk a2 : wgVar.b) {
                if (!a(str, intValue, a2)) {
                    break;
                }
            }
        }
        obj = obj2;
        if (obj == null) {
            b(str, intValue);
        }
    }

    @WorkerThread
    private boolean a(String str, int i, wh whVar) {
        G();
        f();
        bm.a(str);
        bm.a(whVar);
        if (TextUtils.isEmpty(whVar.b)) {
            s().c().a("Event filter had no event name. Audience definition ignored. audienceId, filterId", Integer.valueOf(i), String.valueOf(whVar.a));
            return false;
        }
        try {
            byte[] bArr = new byte[whVar.e()];
            zzsn a = zzsn.a(bArr);
            whVar.a(a);
            a.b();
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("audience_id", Integer.valueOf(i));
            contentValues.put("filter_id", whVar.a);
            contentValues.put("event_name", whVar.b);
            contentValues.put("data", bArr);
            try {
                if (w().insertWithOnConflict("event_filters", null, contentValues, 5) == -1) {
                    s().b().a("Failed to insert event filter (got -1)");
                }
                return true;
            } catch (SQLiteException e) {
                s().b().a("Error storing event filter", e);
                return false;
            }
        } catch (IOException e2) {
            s().b().a("Configuration loss. Failed to serialize event filter", e2);
            return false;
        }
    }

    @WorkerThread
    private boolean a(String str, int i, wk wkVar) {
        G();
        f();
        bm.a(str);
        bm.a(wkVar);
        if (TextUtils.isEmpty(wkVar.b)) {
            s().c().a("Property filter had no property name. Audience definition ignored. audienceId, filterId", Integer.valueOf(i), String.valueOf(wkVar.a));
            return false;
        }
        try {
            byte[] bArr = new byte[wkVar.e()];
            zzsn a = zzsn.a(bArr);
            wkVar.a(a);
            a.b();
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("audience_id", Integer.valueOf(i));
            contentValues.put("filter_id", wkVar.a);
            contentValues.put("property_name", wkVar.b);
            contentValues.put("data", bArr);
            try {
                if (w().insertWithOnConflict("property_filters", null, contentValues, 5) != -1) {
                    return true;
                }
                s().b().a("Failed to insert property filter (got -1)");
                return false;
            } catch (SQLiteException e) {
                s().b().a("Error storing property filter", e);
                return false;
            }
        } catch (IOException e2) {
            s().b().a("Configuration loss. Failed to serialize property filter", e2);
            return false;
        }
    }

    @WorkerThread
    public long A() {
        return a("select max(bundle_end_timestamp) from queue", null, 0);
    }

    @WorkerThread
    public long B() {
        return a("select max(timestamp) from raw_events", null, 0);
    }

    public boolean C() {
        return a("select count(1) > 0 from raw_events", null) != 0;
    }

    @WorkerThread
    public al a(long j, String str, boolean z, boolean z2) {
        Object e;
        Throwable th;
        bm.a(str);
        f();
        G();
        String[] strArr = new String[]{str};
        al alVar = new al();
        Cursor query;
        try {
            SQLiteDatabase w = w();
            query = w.query("apps", new String[]{"day", "daily_events_count", "daily_public_events_count", "daily_conversions_count"}, "app_id=?", new String[]{str}, null, null, null);
            try {
                if (query.moveToFirst()) {
                    if (query.getLong(0) == j) {
                        alVar.b = query.getLong(1);
                        alVar.a = query.getLong(2);
                        alVar.c = query.getLong(3);
                    }
                    alVar.b++;
                    if (z) {
                        alVar.a++;
                    }
                    if (z2) {
                        alVar.c++;
                    }
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("day", Long.valueOf(j));
                    contentValues.put("daily_public_events_count", Long.valueOf(alVar.a));
                    contentValues.put("daily_events_count", Long.valueOf(alVar.b));
                    contentValues.put("daily_conversions_count", Long.valueOf(alVar.c));
                    w.update("apps", contentValues, "app_id=?", strArr);
                    if (query != null) {
                        query.close();
                    }
                    return alVar;
                }
                s().c().a("Not updating daily counts, app is not known", str);
                if (query != null) {
                    query.close();
                }
                return alVar;
            } catch (SQLiteException e2) {
                e = e2;
                try {
                    s().b().a("Error updating daily counts", e);
                    if (query != null) {
                        query.close();
                    }
                    return alVar;
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
            s().b().a("Error updating daily counts", e);
            if (query != null) {
                query.close();
            }
            return alVar;
        } catch (Throwable th3) {
            th = th3;
            query = null;
            if (query != null) {
                query.close();
            }
            throw th;
        }
    }

    @WorkerThread
    public as a(String str, String str2) {
        Object e;
        Cursor cursor;
        Throwable th;
        Cursor cursor2 = null;
        bm.a(str);
        bm.a(str2);
        f();
        G();
        try {
            Cursor query = w().query("events", new String[]{"lifetime_count", "current_bundle_count", "last_fire_timestamp"}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
            try {
                if (query.moveToFirst()) {
                    as asVar = new as(str, str2, query.getLong(0), query.getLong(1), query.getLong(2));
                    if (query.moveToNext()) {
                        s().b().a("Got multiple records for event aggregates, expected one");
                    }
                    if (query == null) {
                        return asVar;
                    }
                    query.close();
                    return asVar;
                }
                if (query != null) {
                    query.close();
                }
                return null;
            } catch (SQLiteException e2) {
                e = e2;
                cursor = query;
                try {
                    s().b().a("Error querying events", str, str2, e);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    cursor2 = cursor;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                cursor2 = query;
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursor = null;
            s().b().a("Error querying events", str, str2, e);
            if (cursor != null) {
                cursor.close();
            }
            return null;
        } catch (Throwable th4) {
            th = th4;
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
    }

    @WorkerThread
    public List<af> a(String str) {
        Object e;
        Cursor cursor;
        Throwable th;
        Cursor cursor2 = null;
        bm.a(str);
        f();
        G();
        List<af> arrayList = new ArrayList();
        try {
            Cursor query = w().query("user_attributes", new String[]{"name", "set_timestamp", "value"}, "app_id=?", new String[]{str}, null, null, "rowid", String.valueOf(u().F()));
            try {
                if (query.moveToFirst()) {
                    do {
                        String string = query.getString(0);
                        long j = query.getLong(1);
                        Object b = b(query, 2);
                        if (b == null) {
                            s().b().a("Read invalid user property value, ignoring it");
                        } else {
                            arrayList.add(new af(str, string, j, b));
                        }
                    } while (query.moveToNext());
                    if (query != null) {
                        query.close();
                    }
                    return arrayList;
                }
                if (query != null) {
                    query.close();
                }
                return arrayList;
            } catch (SQLiteException e2) {
                e = e2;
                cursor = query;
            } catch (Throwable th2) {
                th = th2;
                cursor2 = query;
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursor = null;
            try {
                s().b().a("Error querying user properties", str, e);
                if (cursor != null) {
                    cursor.close();
                }
                return null;
            } catch (Throwable th3) {
                th = th3;
                cursor2 = cursor;
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    @android.support.annotation.WorkerThread
    public java.util.List<android.util.Pair<com.google.android.gms.internal.wv, java.lang.Long>> a(java.lang.String r12, int r13, int r14) {
        /*
        r11 = this;
        r10 = 0;
        r1 = 1;
        r9 = 0;
        r11.f();
        r11.G();
        if (r13 <= 0) goto L_0x0053;
    L_0x000b:
        r0 = r1;
    L_0x000c:
        com.google.android.gms.common.internal.bm.b(r0);
        if (r14 <= 0) goto L_0x0055;
    L_0x0011:
        com.google.android.gms.common.internal.bm.b(r1);
        com.google.android.gms.common.internal.bm.a(r12);
        r0 = r11.w();	 Catch:{ SQLiteException -> 0x00eb, all -> 0x00de }
        r1 = "queue";
        r2 = 2;
        r2 = new java.lang.String[r2];	 Catch:{ SQLiteException -> 0x00eb, all -> 0x00de }
        r3 = 0;
        r4 = "rowid";
        r2[r3] = r4;	 Catch:{ SQLiteException -> 0x00eb, all -> 0x00de }
        r3 = 1;
        r4 = "data";
        r2[r3] = r4;	 Catch:{ SQLiteException -> 0x00eb, all -> 0x00de }
        r3 = "app_id=?";
        r4 = 1;
        r4 = new java.lang.String[r4];	 Catch:{ SQLiteException -> 0x00eb, all -> 0x00de }
        r5 = 0;
        r4[r5] = r12;	 Catch:{ SQLiteException -> 0x00eb, all -> 0x00de }
        r5 = 0;
        r6 = 0;
        r7 = "rowid";
        r8 = java.lang.String.valueOf(r13);	 Catch:{ SQLiteException -> 0x00eb, all -> 0x00de }
        r2 = r0.query(r1, r2, r3, r4, r5, r6, r7, r8);	 Catch:{ SQLiteException -> 0x00eb, all -> 0x00de }
        r0 = r2.moveToFirst();	 Catch:{ SQLiteException -> 0x00b3, all -> 0x00e6 }
        if (r0 != 0) goto L_0x0057;
    L_0x0049:
        r0 = java.util.Collections.emptyList();	 Catch:{ SQLiteException -> 0x00b3, all -> 0x00e6 }
        if (r2 == 0) goto L_0x0052;
    L_0x004f:
        r2.close();
    L_0x0052:
        return r0;
    L_0x0053:
        r0 = r9;
        goto L_0x000c;
    L_0x0055:
        r1 = r9;
        goto L_0x0011;
    L_0x0057:
        r0 = new java.util.ArrayList;	 Catch:{ SQLiteException -> 0x00b3, all -> 0x00e6 }
        r0.<init>();	 Catch:{ SQLiteException -> 0x00b3, all -> 0x00e6 }
        r3 = r9;
    L_0x005d:
        r1 = 0;
        r4 = r2.getLong(r1);	 Catch:{ SQLiteException -> 0x00b3, all -> 0x00e6 }
        r1 = 1;
        r1 = r2.getBlob(r1);	 Catch:{ IOException -> 0x007f }
        r6 = r11.o();	 Catch:{ IOException -> 0x007f }
        r1 = r6.b(r1);	 Catch:{ IOException -> 0x007f }
        r6 = r0.isEmpty();	 Catch:{ SQLiteException -> 0x00b3, all -> 0x00e6 }
        if (r6 != 0) goto L_0x0099;
    L_0x0075:
        r6 = r1.length;	 Catch:{ SQLiteException -> 0x00b3, all -> 0x00e6 }
        r6 = r6 + r3;
        if (r6 <= r14) goto L_0x0099;
    L_0x0079:
        if (r2 == 0) goto L_0x0052;
    L_0x007b:
        r2.close();
        goto L_0x0052;
    L_0x007f:
        r1 = move-exception;
        r4 = r11.s();	 Catch:{ SQLiteException -> 0x00b3, all -> 0x00e6 }
        r4 = r4.b();	 Catch:{ SQLiteException -> 0x00b3, all -> 0x00e6 }
        r5 = "Failed to unzip queued bundle";
        r4.a(r5, r12, r1);	 Catch:{ SQLiteException -> 0x00b3, all -> 0x00e6 }
        r1 = r3;
    L_0x008f:
        r3 = r2.moveToNext();	 Catch:{ SQLiteException -> 0x00b3, all -> 0x00e6 }
        if (r3 == 0) goto L_0x0079;
    L_0x0095:
        if (r1 > r14) goto L_0x0079;
    L_0x0097:
        r3 = r1;
        goto L_0x005d;
    L_0x0099:
        r6 = com.google.android.gms.internal.xm.a(r1);	 Catch:{ SQLiteException -> 0x00b3, all -> 0x00e6 }
        r7 = new com.google.android.gms.internal.wv;	 Catch:{ SQLiteException -> 0x00b3, all -> 0x00e6 }
        r7.<init>();	 Catch:{ SQLiteException -> 0x00b3, all -> 0x00e6 }
        r7.a(r6);	 Catch:{ IOException -> 0x00cd }
        r1 = r1.length;	 Catch:{ SQLiteException -> 0x00b3, all -> 0x00e6 }
        r1 = r1 + r3;
        r3 = java.lang.Long.valueOf(r4);	 Catch:{ SQLiteException -> 0x00b3, all -> 0x00e6 }
        r3 = android.util.Pair.create(r7, r3);	 Catch:{ SQLiteException -> 0x00b3, all -> 0x00e6 }
        r0.add(r3);	 Catch:{ SQLiteException -> 0x00b3, all -> 0x00e6 }
        goto L_0x008f;
    L_0x00b3:
        r0 = move-exception;
        r1 = r2;
    L_0x00b5:
        r2 = r11.s();	 Catch:{ all -> 0x00e8 }
        r2 = r2.b();	 Catch:{ all -> 0x00e8 }
        r3 = "Error querying bundles";
        r2.a(r3, r12, r0);	 Catch:{ all -> 0x00e8 }
        r0 = java.util.Collections.emptyList();	 Catch:{ all -> 0x00e8 }
        if (r1 == 0) goto L_0x0052;
    L_0x00c9:
        r1.close();
        goto L_0x0052;
    L_0x00cd:
        r1 = move-exception;
        r4 = r11.s();	 Catch:{ SQLiteException -> 0x00b3, all -> 0x00e6 }
        r4 = r4.b();	 Catch:{ SQLiteException -> 0x00b3, all -> 0x00e6 }
        r5 = "Failed to merge queued bundle";
        r4.a(r5, r12, r1);	 Catch:{ SQLiteException -> 0x00b3, all -> 0x00e6 }
        r1 = r3;
        goto L_0x008f;
    L_0x00de:
        r0 = move-exception;
        r2 = r10;
    L_0x00e0:
        if (r2 == 0) goto L_0x00e5;
    L_0x00e2:
        r2.close();
    L_0x00e5:
        throw r0;
    L_0x00e6:
        r0 = move-exception;
        goto L_0x00e0;
    L_0x00e8:
        r0 = move-exception;
        r2 = r1;
        goto L_0x00e0;
    L_0x00eb:
        r0 = move-exception;
        r1 = r10;
        goto L_0x00b5;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.ak.a(java.lang.String, int, int):java.util.List<android.util.Pair<com.google.android.gms.internal.wv, java.lang.Long>>");
    }

    protected void a() {
    }

    @WorkerThread
    public void a(long j) {
        f();
        G();
        if (w().delete("queue", "rowid=?", new String[]{String.valueOf(j)}) != 1) {
            s().b().a("Deleted fewer rows from queue than expected");
        }
    }

    @WorkerThread
    void a(ContentValues contentValues, String str, Object obj) {
        bm.a(str);
        bm.a(obj);
        if (obj instanceof String) {
            contentValues.put(str, (String) obj);
        } else if (obj instanceof Long) {
            contentValues.put(str, (Long) obj);
        } else if (obj instanceof Float) {
            contentValues.put(str, (Float) obj);
        } else {
            throw new IllegalArgumentException("Invalid value type");
        }
    }

    @WorkerThread
    public void a(wv wvVar) {
        f();
        G();
        bm.a(wvVar);
        bm.a(wvVar.o);
        bm.a(wvVar.f);
        y();
        long a = l().a();
        if (wvVar.f.longValue() < a - u().P() || wvVar.f.longValue() > u().P() + a) {
            s().c().a("Storing bundle outside of the max uploading time span. now, timestamp", Long.valueOf(a), wvVar.f);
        }
        try {
            byte[] bArr = new byte[wvVar.e()];
            zzsn a2 = zzsn.a(bArr);
            wvVar.a(a2);
            a2.b();
            bArr = o().a(bArr);
            s().z().a("Saving bundle, size", Integer.valueOf(bArr.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", wvVar.o);
            contentValues.put("bundle_end_timestamp", wvVar.f);
            contentValues.put("data", bArr);
            try {
                if (w().insert("queue", null, contentValues) == -1) {
                    s().b().a("Failed to insert bundle (got -1)");
                }
            } catch (SQLiteException e) {
                s().b().a("Error storing bundle", e);
            }
        } catch (IOException e2) {
            s().b().a("Data loss. Failed to serialize bundle", e2);
        }
    }

    public void a(ar arVar, long j) {
        f();
        G();
        bm.a(arVar);
        bm.a(arVar.a);
        ws wsVar = new ws();
        wsVar.d = Long.valueOf(arVar.e);
        wsVar.a = new wt[arVar.f.a()];
        Iterator it = arVar.f.iterator();
        int i = 0;
        while (it.hasNext()) {
            String str = (String) it.next();
            wt wtVar = new wt();
            int i2 = i + 1;
            wsVar.a[i] = wtVar;
            wtVar.a = str;
            o().a(wtVar, arVar.f.a(str));
            i = i2;
        }
        try {
            byte[] bArr = new byte[wsVar.e()];
            zzsn a = zzsn.a(bArr);
            wsVar.a(a);
            a.b();
            s().z().a("Saving event, name, data size", arVar.b, Integer.valueOf(bArr.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", arVar.a);
            contentValues.put("name", arVar.b);
            contentValues.put("timestamp", Long.valueOf(arVar.d));
            contentValues.put("metadata_fingerprint", Long.valueOf(j));
            contentValues.put("data", bArr);
            try {
                if (w().insert("raw_events", null, contentValues) == -1) {
                    s().b().a("Failed to insert raw event (got -1)");
                }
            } catch (SQLiteException e) {
                s().b().a("Error storing raw event", e);
            }
        } catch (IOException e2) {
            s().b().a("Data loss. Failed to serialize event params/data", e2);
        }
    }

    @WorkerThread
    public void a(as asVar) {
        bm.a(asVar);
        f();
        G();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", asVar.a);
        contentValues.put("name", asVar.b);
        contentValues.put("lifetime_count", Long.valueOf(asVar.c));
        contentValues.put("current_bundle_count", Long.valueOf(asVar.d));
        contentValues.put("last_fire_timestamp", Long.valueOf(asVar.e));
        try {
            if (w().insertWithOnConflict("events", null, contentValues, 5) == -1) {
                s().b().a("Failed to insert/update event aggregates (got -1)");
            }
        } catch (SQLiteException e) {
            s().b().a("Error storing event aggregates", e);
        }
    }

    @WorkerThread
    public void a(b bVar) {
        bm.a(bVar);
        f();
        G();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", bVar.b());
        contentValues.put("app_instance_id", bVar.c());
        contentValues.put("gmp_app_id", bVar.d());
        contentValues.put("resettable_device_id_hash", bVar.e());
        contentValues.put("last_bundle_index", Long.valueOf(bVar.m()));
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(bVar.f()));
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(bVar.g()));
        contentValues.put("app_version", bVar.h());
        contentValues.put("app_store", bVar.i());
        contentValues.put("gmp_version", Long.valueOf(bVar.j()));
        contentValues.put("dev_cert_hash", Long.valueOf(bVar.k()));
        contentValues.put("measurement_enabled", Boolean.valueOf(bVar.l()));
        contentValues.put("day", Long.valueOf(bVar.q()));
        contentValues.put("daily_public_events_count", Long.valueOf(bVar.r()));
        contentValues.put("daily_events_count", Long.valueOf(bVar.s()));
        contentValues.put("daily_conversions_count", Long.valueOf(bVar.t()));
        contentValues.put("config_fetched_time", Long.valueOf(bVar.n()));
        contentValues.put("failed_config_fetch_time", Long.valueOf(bVar.o()));
        try {
            if (w().insertWithOnConflict("apps", null, contentValues, 5) == -1) {
                s().b().a("Failed to insert/update app (got -1)");
            }
        } catch (SQLiteException e) {
            s().b().a("Error storing app", e);
        }
    }

    @WorkerThread
    public void a(String str, int i) {
        bm.a(str);
        f();
        G();
        try {
            w().execSQL("delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like '_ltv_%' order by set_timestamp desc limit ?,10);", new String[]{str, str, String.valueOf(i)});
        } catch (SQLiteException e) {
            s().b().a("Error pruning currencies", str, e);
        }
    }

    void a(String str, int i, ww wwVar) {
        G();
        f();
        bm.a(str);
        bm.a(wwVar);
        try {
            byte[] bArr = new byte[wwVar.e()];
            zzsn a = zzsn.a(bArr);
            wwVar.a(a);
            a.b();
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("audience_id", Integer.valueOf(i));
            contentValues.put("current_results", bArr);
            try {
                if (w().insertWithOnConflict("audience_filter_values", null, contentValues, 5) == -1) {
                    s().b().a("Failed to insert filter results (got -1)");
                }
            } catch (SQLiteException e) {
                s().b().a("Error storing filter results", e);
            }
        } catch (IOException e2) {
            s().b().a("Configuration loss. Failed to serialize filter results", e2);
        }
    }

    public void a(String str, long j, am amVar) {
        Cursor cursor;
        Object e;
        Throwable th;
        Cursor cursor2 = null;
        bm.a(amVar);
        f();
        G();
        try {
            Object string;
            String str2;
            SQLiteDatabase w = w();
            String string2;
            if (TextUtils.isEmpty(str)) {
                cursor2 = w.rawQuery("select app_id, metadata_fingerprint from raw_events where app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;", new String[]{String.valueOf(j)});
                if (cursor2.moveToFirst()) {
                    string = cursor2.getString(0);
                    string2 = cursor2.getString(1);
                    cursor2.close();
                    str2 = string2;
                    cursor = cursor2;
                } else if (cursor2 != null) {
                    cursor2.close();
                    return;
                } else {
                    return;
                }
            }
            cursor2 = w.rawQuery("select metadata_fingerprint from raw_events where app_id = ? order by rowid limit 1;", new String[]{str});
            if (cursor2.moveToFirst()) {
                string2 = cursor2.getString(0);
                cursor2.close();
                str2 = string2;
                cursor = cursor2;
            } else if (cursor2 != null) {
                cursor2.close();
                return;
            } else {
                return;
            }
            try {
                cursor = w.query("raw_events_metadata", new String[]{TtmlNode.TAG_METADATA}, "app_id=? and metadata_fingerprint=?", new String[]{string, str2}, null, null, "rowid", "2");
                if (cursor.moveToFirst()) {
                    xm a = xm.a(cursor.getBlob(0));
                    wv wvVar = new wv();
                    try {
                        wvVar.a(a);
                        if (cursor.moveToNext()) {
                            s().c().a("Get multiple raw event metadata records, expected one");
                        }
                        cursor.close();
                        amVar.a(wvVar);
                        cursor2 = w.query("raw_events", new String[]{"rowid", "name", "timestamp", "data"}, "app_id=? and metadata_fingerprint=?", new String[]{string, str2}, null, null, "rowid", null);
                        if (cursor2.moveToFirst()) {
                            do {
                                try {
                                    long j2 = cursor2.getLong(0);
                                    xm a2 = xm.a(cursor2.getBlob(3));
                                    ws wsVar = new ws();
                                    try {
                                        wsVar.a(a2);
                                        wsVar.b = cursor2.getString(1);
                                        wsVar.c = Long.valueOf(cursor2.getLong(2));
                                        if (!amVar.a(j2, wsVar)) {
                                            if (cursor2 != null) {
                                                cursor2.close();
                                                return;
                                            }
                                            return;
                                        }
                                    } catch (IOException e2) {
                                        s().b().a("Data loss. Failed to merge raw event", string, e2);
                                    }
                                } catch (SQLiteException e3) {
                                    e = e3;
                                }
                            } while (cursor2.moveToNext());
                            if (cursor2 != null) {
                                cursor2.close();
                                return;
                            }
                            return;
                        }
                        s().c().a("Raw event data disappeared while in transaction");
                        if (cursor2 != null) {
                            cursor2.close();
                            return;
                        }
                        return;
                    } catch (IOException e22) {
                        s().b().a("Data loss. Failed to merge raw event metadata", string, e22);
                        if (cursor != null) {
                            cursor.close();
                            return;
                        }
                        return;
                    }
                }
                s().b().a("Raw event metadata record is missing");
                if (cursor != null) {
                    cursor.close();
                }
            } catch (SQLiteException e4) {
                e = e4;
                cursor2 = cursor;
                try {
                    s().b().a("Data loss. Error selecting raw event", e);
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cursor = cursor2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLiteException e32) {
            e = e32;
        } catch (Throwable th4) {
            th = th4;
            cursor = cursor2;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    @WorkerThread
    public void a(String str, byte[] bArr) {
        bm.a(str);
        f();
        G();
        ContentValues contentValues = new ContentValues();
        contentValues.put("remote_config", bArr);
        try {
            if (((long) w().update("apps", contentValues, "app_id = ?", new String[]{str})) == 0) {
                s().b().a("Failed to update remote config (got 0)");
            }
        } catch (SQLiteException e) {
            s().b().a("Error storing remote config", e);
        }
    }

    @WorkerThread
    void a(String str, wg[] wgVarArr) {
        G();
        f();
        bm.a(str);
        bm.a(wgVarArr);
        SQLiteDatabase w = w();
        w.beginTransaction();
        try {
            e(str);
            for (wg a : wgVarArr) {
                a(str, a);
            }
            w.setTransactionSuccessful();
        } finally {
            w.endTransaction();
        }
    }

    public void a(List<Long> list) {
        bm.a(list);
        f();
        G();
        StringBuilder stringBuilder = new StringBuilder("rowid in (");
        for (int i = 0; i < list.size(); i++) {
            if (i != 0) {
                stringBuilder.append(",");
            }
            stringBuilder.append(((Long) list.get(i)).longValue());
        }
        stringBuilder.append(")");
        int delete = w().delete("raw_events", stringBuilder.toString(), null);
        if (delete != list.size()) {
            s().b().a("Deleted fewer rows from raw events table than expected", Integer.valueOf(delete), Integer.valueOf(list.size()));
        }
    }

    @WorkerThread
    public boolean a(af afVar) {
        bm.a(afVar);
        f();
        G();
        if (c(afVar.a, afVar.b) == null) {
            if (ag.a(afVar.b)) {
                if (a("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{afVar.a}) >= ((long) u().E())) {
                    return false;
                }
            }
            if (a("select count(1) from user_attributes where app_id=?", new String[]{afVar.a}) >= ((long) u().F())) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", afVar.a);
        contentValues.put("name", afVar.b);
        contentValues.put("set_timestamp", Long.valueOf(afVar.c));
        a(contentValues, "value", afVar.d);
        try {
            if (w().insertWithOnConflict("user_attributes", null, contentValues, 5) == -1) {
                s().b().a("Failed to insert/update user property (got -1)");
            }
        } catch (SQLiteException e) {
            s().b().a("Error storing user property", e);
        }
        return true;
    }

    public long b(wv wvVar) throws IOException {
        f();
        G();
        bm.a(wvVar);
        bm.a(wvVar.o);
        try {
            byte[] bArr = new byte[wvVar.e()];
            zzsn a = zzsn.a(bArr);
            wvVar.a(a);
            a.b();
            long d = o().d(bArr);
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", wvVar.o);
            contentValues.put("metadata_fingerprint", Long.valueOf(d));
            contentValues.put(TtmlNode.TAG_METADATA, bArr);
            try {
                w().insertWithOnConflict("raw_events_metadata", null, contentValues, 4);
                return d;
            } catch (SQLiteException e) {
                s().b().a("Error storing raw event metadata", e);
                throw e;
            }
        } catch (IOException e2) {
            s().b().a("Data loss. Failed to serialize event metadata", e2);
            throw e2;
        }
    }

    @WorkerThread
    public b b(String str) {
        Object e;
        Throwable th;
        bm.a(str);
        f();
        G();
        Cursor query;
        try {
            query = w().query("apps", new String[]{"app_instance_id", "gmp_app_id", "resettable_device_id_hash", "last_bundle_index", "last_bundle_start_timestamp", "last_bundle_end_timestamp", "app_version", "app_store", "gmp_version", "dev_cert_hash", "measurement_enabled", "day", "daily_public_events_count", "daily_events_count", "daily_conversions_count", "config_fetched_time", "failed_config_fetch_time"}, "app_id=?", new String[]{str}, null, null, null);
            try {
                if (query.moveToFirst()) {
                    b bVar = new b(this.n, str);
                    bVar.a(query.getString(0));
                    bVar.b(query.getString(1));
                    bVar.c(query.getString(2));
                    bVar.e(query.getLong(3));
                    bVar.a(query.getLong(4));
                    bVar.b(query.getLong(5));
                    bVar.d(query.getString(6));
                    bVar.e(query.getString(7));
                    bVar.c(query.getLong(8));
                    bVar.d(query.getLong(9));
                    bVar.a((query.isNull(10) ? 1 : query.getInt(10)) != 0);
                    bVar.h(query.getLong(11));
                    bVar.i(query.getLong(12));
                    bVar.j(query.getLong(13));
                    bVar.k(query.getLong(14));
                    bVar.f(query.getLong(15));
                    bVar.g(query.getLong(16));
                    bVar.a();
                    if (query.moveToNext()) {
                        s().b().a("Got multiple records for app, expected one");
                    }
                    if (query == null) {
                        return bVar;
                    }
                    query.close();
                    return bVar;
                }
                if (query != null) {
                    query.close();
                }
                return null;
            } catch (SQLiteException e2) {
                e = e2;
                try {
                    s().b().a("Error querying app", str, e);
                    if (query != null) {
                        query.close();
                    }
                    return null;
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
            s().b().a("Error querying app", str, e);
            if (query != null) {
                query.close();
            }
            return null;
        } catch (Throwable th3) {
            th = th3;
            query = null;
            if (query != null) {
                query.close();
            }
            throw th;
        }
    }

    @WorkerThread
    Object b(Cursor cursor, int i) {
        int a = a(cursor, i);
        switch (a) {
            case Util.TYPE_DASH /*0*/:
                s().b().a("Loaded invalid null value from database");
                return null;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return Long.valueOf(cursor.getLong(i));
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return Float.valueOf(cursor.getFloat(i));
            case Util.TYPE_OTHER /*3*/:
                return cursor.getString(i);
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                s().b().a("Loaded invalid blob type value, ignoring it");
                return null;
            default:
                s().b().a("Loaded invalid unknown value type, ignoring it", Integer.valueOf(a));
                return null;
        }
    }

    public String b(long j) {
        Cursor rawQuery;
        Object e;
        Throwable th;
        String str = null;
        f();
        G();
        try {
            rawQuery = w().rawQuery("select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;", new String[]{String.valueOf(j)});
            try {
                if (rawQuery.moveToFirst()) {
                    str = rawQuery.getString(0);
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                } else {
                    s().z().a("No expired configs for apps with pending events");
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                }
            } catch (SQLiteException e2) {
                e = e2;
                try {
                    s().b().a("Error selecting expired configs", e);
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    return str;
                } catch (Throwable th2) {
                    th = th2;
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    throw th;
                }
            }
        } catch (SQLiteException e3) {
            e = e3;
            rawQuery = str;
            s().b().a("Error selecting expired configs", e);
            if (rawQuery != null) {
                rawQuery.close();
            }
            return str;
        } catch (Throwable th3) {
            rawQuery = str;
            th = th3;
            if (rawQuery != null) {
                rawQuery.close();
            }
            throw th;
        }
        return str;
    }

    @WorkerThread
    public void b() {
        G();
        w().beginTransaction();
    }

    void b(String str, int i) {
        G();
        f();
        bm.a(str);
        SQLiteDatabase w = w();
        w.delete("property_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(i)});
        w.delete("event_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(i)});
    }

    @WorkerThread
    public void b(String str, String str2) {
        bm.a(str);
        bm.a(str2);
        f();
        G();
        try {
            s().z().a("Deleted user attribute rows:", Integer.valueOf(w().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2})));
        } catch (SQLiteException e) {
            s().b().a("Error deleting user attribute", str, str2, e);
        }
    }

    public long c(String str) {
        bm.a(str);
        f();
        G();
        try {
            SQLiteDatabase w = w();
            String valueOf = String.valueOf(u().e(str));
            return (long) w.delete("raw_events", "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)", new String[]{str, valueOf});
        } catch (SQLiteException e) {
            s().b().a("Error deleting over the limit events", e);
            return 0;
        }
    }

    ww c(String str, int i) {
        Object e;
        Throwable th;
        G();
        f();
        bm.a(str);
        Cursor query;
        try {
            query = w().query("audience_filter_values", new String[]{"current_results"}, "app_id=? AND audience_id=?", new String[]{str, String.valueOf(i)}, null, null, null);
            try {
                if (query.moveToFirst()) {
                    xm a = xm.a(query.getBlob(0));
                    ww wwVar = new ww();
                    try {
                        wwVar.a(a);
                    } catch (IOException e2) {
                        s().b().a("Failed to merge filter results", str, e2);
                    }
                    if (query == null) {
                        return wwVar;
                    }
                    query.close();
                    return wwVar;
                }
                if (query != null) {
                    query.close();
                }
                return null;
            } catch (SQLiteException e3) {
                e = e3;
                try {
                    s().b().a("Database error querying filter results", e);
                    if (query != null) {
                        query.close();
                    }
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    if (query != null) {
                        query.close();
                    }
                    throw th;
                }
            }
        } catch (SQLiteException e4) {
            e = e4;
            query = null;
            s().b().a("Database error querying filter results", e);
            if (query != null) {
                query.close();
            }
            return null;
        } catch (Throwable th3) {
            th = th3;
            query = null;
            if (query != null) {
                query.close();
            }
            throw th;
        }
    }

    @WorkerThread
    public af c(String str, String str2) {
        Object e;
        Cursor cursor;
        Throwable th;
        Cursor cursor2 = null;
        bm.a(str);
        bm.a(str2);
        f();
        G();
        try {
            Cursor query = w().query("user_attributes", new String[]{"set_timestamp", "value"}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
            try {
                if (query.moveToFirst()) {
                    af afVar = new af(str, str2, query.getLong(0), b(query, 1));
                    if (query.moveToNext()) {
                        s().b().a("Got multiple records for user property, expected one");
                    }
                    if (query == null) {
                        return afVar;
                    }
                    query.close();
                    return afVar;
                }
                if (query != null) {
                    query.close();
                }
                return null;
            } catch (SQLiteException e2) {
                e = e2;
                cursor = query;
                try {
                    s().b().a("Error querying user property", str, str2, e);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    cursor2 = cursor;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                cursor2 = query;
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursor = null;
            s().b().a("Error querying user property", str, str2, e);
            if (cursor != null) {
                cursor.close();
            }
            return null;
        } catch (Throwable th4) {
            th = th4;
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
    }

    @WorkerThread
    public void c() {
        G();
        w().setTransactionSuccessful();
    }

    Map<Integer, List<wh>> d(String str, String str2) {
        Cursor query;
        Object e;
        Throwable th;
        G();
        f();
        bm.a(str);
        bm.a(str2);
        ArrayMap arrayMap = new ArrayMap();
        try {
            query = w().query("event_filters", new String[]{"audience_id", "data"}, "app_id=? AND event_name=?", new String[]{str, str2}, null, null, null);
            if (query.moveToFirst()) {
                do {
                    xm a = xm.a(query.getBlob(1));
                    wh whVar = new wh();
                    try {
                        whVar.a(a);
                        int i = query.getInt(0);
                        List list = (List) arrayMap.get(Integer.valueOf(i));
                        if (list == null) {
                            list = new ArrayList();
                            arrayMap.put(Integer.valueOf(i), list);
                        }
                        list.add(whVar);
                    } catch (IOException e2) {
                        try {
                            s().b().a("Failed to merge filter", str, e2);
                        } catch (SQLiteException e3) {
                            e = e3;
                        }
                    }
                } while (query.moveToNext());
                if (query != null) {
                    query.close();
                }
                return arrayMap;
            }
            Map<Integer, List<wh>> emptyMap = Collections.emptyMap();
            if (query == null) {
                return emptyMap;
            }
            query.close();
            return emptyMap;
        } catch (SQLiteException e4) {
            e = e4;
            query = null;
            try {
                s().b().a("Database error querying filters", e);
                if (query != null) {
                    query.close();
                }
                return null;
            } catch (Throwable th2) {
                th = th2;
                if (query != null) {
                    query.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            query = null;
            if (query != null) {
                query.close();
            }
            throw th;
        }
    }

    @WorkerThread
    public byte[] d(String str) {
        Object e;
        Throwable th;
        bm.a(str);
        f();
        G();
        Cursor query;
        try {
            query = w().query("apps", new String[]{"remote_config"}, "app_id=?", new String[]{str}, null, null, null);
            try {
                if (query.moveToFirst()) {
                    byte[] blob = query.getBlob(0);
                    if (query.moveToNext()) {
                        s().b().a("Got multiple records for app config, expected one");
                    }
                    if (query == null) {
                        return blob;
                    }
                    query.close();
                    return blob;
                }
                if (query != null) {
                    query.close();
                }
                return null;
            } catch (SQLiteException e2) {
                e = e2;
                try {
                    s().b().a("Error querying remote config", str, e);
                    if (query != null) {
                        query.close();
                    }
                    return null;
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
            s().b().a("Error querying remote config", str, e);
            if (query != null) {
                query.close();
            }
            return null;
        } catch (Throwable th3) {
            th = th3;
            query = null;
            if (query != null) {
                query.close();
            }
            throw th;
        }
    }

    Map<Integer, List<wk>> e(String str, String str2) {
        Object e;
        Throwable th;
        G();
        f();
        bm.a(str);
        bm.a(str2);
        ArrayMap arrayMap = new ArrayMap();
        Cursor query;
        try {
            query = w().query("property_filters", new String[]{"audience_id", "data"}, "app_id=? AND property_name=?", new String[]{str, str2}, null, null, null);
            if (query.moveToFirst()) {
                do {
                    xm a = xm.a(query.getBlob(1));
                    wk wkVar = new wk();
                    try {
                        wkVar.a(a);
                        int i = query.getInt(0);
                        List list = (List) arrayMap.get(Integer.valueOf(i));
                        if (list == null) {
                            list = new ArrayList();
                            arrayMap.put(Integer.valueOf(i), list);
                        }
                        list.add(wkVar);
                    } catch (IOException e2) {
                        try {
                            s().b().a("Failed to merge filter", str, e2);
                        } catch (SQLiteException e3) {
                            e = e3;
                        }
                    }
                } while (query.moveToNext());
                if (query != null) {
                    query.close();
                }
                return arrayMap;
            }
            Map<Integer, List<wk>> emptyMap = Collections.emptyMap();
            if (query == null) {
                return emptyMap;
            }
            query.close();
            return emptyMap;
        } catch (SQLiteException e4) {
            e = e4;
            query = null;
            try {
                s().b().a("Database error querying filters", e);
                if (query != null) {
                    query.close();
                }
                return null;
            } catch (Throwable th2) {
                th = th2;
                if (query != null) {
                    query.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            query = null;
            if (query != null) {
                query.close();
            }
            throw th;
        }
    }

    @WorkerThread
    void e(String str) {
        G();
        f();
        bm.a(str);
        SQLiteDatabase w = w();
        w.delete("property_filters", "app_id=?", new String[]{str});
        w.delete("event_filters", "app_id=?", new String[]{str});
    }

    public void f(String str) {
        try {
            w().execSQL("delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)", new String[]{str, str});
        } catch (SQLiteException e) {
            s().b().a("Failed to remove unused event metadata", e);
        }
    }

    public long g(String str) {
        bm.a(str);
        return a("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0);
    }

    @WorkerThread
    public void v() {
        G();
        w().endTransaction();
    }

    @WorkerThread
    SQLiteDatabase w() {
        f();
        try {
            return this.b.getWritableDatabase();
        } catch (SQLiteException e) {
            s().c().a("Error opening database", e);
            throw e;
        }
    }

    @WorkerThread
    public String x() {
        Object e;
        Throwable th;
        String str = null;
        Cursor rawQuery;
        try {
            rawQuery = w().rawQuery("select app_id from queue where app_id not in (select app_id from apps where measurement_enabled=0) order by rowid limit 1;", null);
            try {
                if (rawQuery.moveToFirst()) {
                    str = rawQuery.getString(0);
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                } else if (rawQuery != null) {
                    rawQuery.close();
                }
            } catch (SQLiteException e2) {
                e = e2;
                try {
                    s().b().a("Database error getting next bundle app id", e);
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    return str;
                } catch (Throwable th2) {
                    th = th2;
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    throw th;
                }
            }
        } catch (SQLiteException e3) {
            e = e3;
            rawQuery = null;
            s().b().a("Database error getting next bundle app id", e);
            if (rawQuery != null) {
                rawQuery.close();
            }
            return str;
        } catch (Throwable th3) {
            rawQuery = null;
            th = th3;
            if (rawQuery != null) {
                rawQuery.close();
            }
            throw th;
        }
        return str;
    }

    @WorkerThread
    void y() {
        f();
        G();
        if (J()) {
            long a = t().f.a();
            long b = l().b();
            if (Math.abs(b - a) > u().Q()) {
                t().f.a(b);
                z();
            }
        }
    }

    @WorkerThread
    void z() {
        f();
        G();
        if (J()) {
            int delete = w().delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(l().a()), String.valueOf(u().P())});
            if (delete > 0) {
                s().z().a("Deleted stale rows. rowsDeleted", Integer.valueOf(delete));
            }
        }
    }
}
