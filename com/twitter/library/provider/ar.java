package com.twitter.library.provider;

import android.accounts.Account;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import aue;
import com.twitter.app.common.account.a;
import com.twitter.app.common.account.d;
import com.twitter.database.model.i;
import com.twitter.database.model.m;
import com.twitter.database.model.o;
import com.twitter.database.model.q;
import com.twitter.database.schema.GlobalSchema;
import com.twitter.database.schema.g;
import com.twitter.database.schema.h;
import com.twitter.library.platform.notifications.PushRegistration;
import com.twitter.util.concurrent.n;
import com.twitter.util.j;
import com.twitter.util.object.e;
import defpackage.atv;
import defpackage.auc;
import defpackage.bbl;
import defpackage.bbn;
import defpackage.cfb;
import defpackage.cne;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
public class ar extends atv {
    private static ar a;
    private final Context b;
    private GlobalSchema c;

    private ar(Context context) {
        super(context, "global.db", 30);
        this.b = context;
        a();
    }

    public static synchronized ar a(Context context) {
        ar arVar;
        synchronized (ar.class) {
            if (a == null) {
                a = new ar(context.getApplicationContext());
            }
            arVar = a;
        }
        return arVar;
    }

    public GlobalSchema b() {
        if (this.c == null) {
            this.c = (GlobalSchema) j.a((n) new as(this));
        }
        return (GlobalSchema) e.a(this.c);
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        m.a(GlobalSchema.class, new aue(sQLiteDatabase)).e();
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        Map hashMap = new HashMap();
        for (a aVar : d.a().c()) {
            hashMap.put(aVar.d(), aVar.a());
        }
        a(sQLiteDatabase, i, i2, hashMap);
        new au(o.a(GlobalSchema.class, new aue(sQLiteDatabase)), sQLiteDatabase, hashMap, this.b).a(i, i2);
    }

    private static void a(SQLiteDatabase sQLiteDatabase, int i, int i2, Map<String, Account> map) {
        SQLiteDatabase sQLiteDatabase2;
        Cursor query;
        int i3;
        int i4;
        if (i > 5) {
            sQLiteDatabase2 = sQLiteDatabase;
            query = sQLiteDatabase2.query("account_settings", new String[]{"account_name"}, null, null, null, null, null);
            if (query != null) {
                i3 = 0;
                while (query.moveToNext()) {
                    try {
                        if (!map.containsKey(query.getString(0))) {
                            i3++;
                            sQLiteDatabase.delete("account_settings", "account_name=?", new String[]{query.getString(0)});
                        }
                    } finally {
                        query.close();
                    }
                }
                i4 = i3;
                sQLiteDatabase2 = sQLiteDatabase;
                query = sQLiteDatabase2.query("activity_states", new String[]{"account_name"}, null, null, null, null, null);
                if (query != null) {
                    i3 = i4;
                    while (query.moveToNext()) {
                        try {
                            if (!map.containsKey(query.getString(0))) {
                                i3++;
                                sQLiteDatabase.delete("activity_states", "account_name=?", new String[]{query.getString(0)});
                            }
                        } finally {
                            query.close();
                        }
                    }
                    i4 = i3;
                }
                if (i >= 14 && i4 > 0) {
                    bbn.a(new bbl().a("Old DB version", Integer.valueOf(i)).a("New DB version", Integer.valueOf(i2)).a("Num accounts missing", Integer.valueOf(i4)).a(new IllegalStateException("GlobalDatabaseHelper had missing accounts.")));
                    return;
                }
            }
        }
        i4 = 0;
        sQLiteDatabase2 = sQLiteDatabase;
        query = sQLiteDatabase2.query("activity_states", new String[]{"account_name"}, null, null, null, null, null);
        if (query != null) {
            i3 = i4;
            while (query.moveToNext()) {
                if (!map.containsKey(query.getString(0))) {
                    i3++;
                    sQLiteDatabase.delete("activity_states", "account_name=?", new String[]{query.getString(0)});
                }
            }
            i4 = i3;
        }
        if (i >= 14) {
        }
    }

    public int a(String str, int i, boolean z, e eVar) {
        ContentValues contentValues = new ContentValues(1);
        contentValues.put("push_flags", Integer.valueOf(i));
        return a(str, contentValues, z, eVar);
    }

    public int a(String str, bx bxVar, boolean z, e eVar) {
        int a = NotificationSetting.a(bxVar.m, bxVar.d, bxVar.e, bxVar.f, bxVar.h, bxVar.n, bxVar.i, bxVar.o, bxVar.p, bxVar.q, bxVar.r, bxVar.s, bxVar.j, bxVar.k, bxVar.l, bxVar.t, bxVar.u, bxVar.v, false, bxVar.g);
        ContentValues contentValues = new ContentValues(4);
        contentValues.put("push_flags", Integer.valueOf(a));
        contentValues.put("vibrate", Boolean.valueOf(bxVar.a));
        contentValues.put("ringtone", bxVar.b);
        contentValues.put("light", Boolean.valueOf(bxVar.c));
        return a(str, contentValues, z, eVar);
    }

    public int a(String str) {
        int i = cne.a;
        com.twitter.database.model.j a = ((g) b().a(g.class)).f().a("account_name=?", str);
        try {
            int d;
            if (a.b()) {
                d = ((h) a.a).d();
            } else {
                d = i;
            }
            a.close();
            return d;
        } catch (Throwable th) {
            a.close();
        }
    }

    public bx b(String str) {
        bz bzVar = new bz();
        com.twitter.database.model.j a = ((g) b().a(g.class)).f().a("account_name=?", str);
        try {
            if (a.b()) {
                bzVar.a(((h) a.a).d());
                bzVar.a(((h) a.a).e());
                String f = ((h) a.a).f();
                if (f == null) {
                    f = bk.b;
                }
                bzVar.a(f);
                bzVar.b(((h) a.a).h());
            }
            a.close();
            return bzVar.a();
        } catch (Throwable th) {
            a.close();
        }
    }

    public int a(String str, ContentValues contentValues, boolean z, e eVar) {
        if (str == null) {
            return 0;
        }
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            int a = a(writableDatabase, str, contentValues, z, eVar);
            writableDatabase.setTransactionSuccessful();
            return a;
        } finally {
            writableDatabase.endTransaction();
        }
    }

    static int a(SQLiteDatabase sQLiteDatabase, String str, ContentValues contentValues, boolean z, e eVar) {
        int i;
        int update = 0 + sQLiteDatabase.update("account_settings", contentValues, "account_name=?", new String[]{str});
        if (update == 0) {
            contentValues.put("account_name", str);
            if (!contentValues.containsKey("push_flags")) {
                contentValues.put("push_flags", Integer.valueOf(cne.a));
            }
            if (!contentValues.containsKey("interval")) {
                contentValues.put("interval", Integer.valueOf(z ? 1440 : 15));
            }
            if (!contentValues.containsKey("vibrate")) {
                contentValues.put("vibrate", Boolean.valueOf(true));
            }
            if (!contentValues.containsKey("light")) {
                contentValues.put("light", Boolean.valueOf(true));
            }
            if (!contentValues.containsKey("ringtone")) {
                contentValues.put("ringtone", bk.b);
            }
            if (sQLiteDatabase.insert("account_settings", "account_name", contentValues) > 0) {
                i = update + 1;
                if (i > 0 && eVar != null) {
                    eVar.a(bk.a);
                }
                return i;
            }
        }
        i = update;
        eVar.a(bk.a);
        return i;
    }

    public int c(String str) {
        int i = 0;
        int i2 = -1;
        if (str == null) {
            return -1;
        }
        q f = ((g) b().a(g.class)).f();
        com.twitter.database.model.j a = f.a("account_name=?", str);
        try {
            Integer be_;
            if (a.b()) {
                be_ = ((h) a.a).be_();
                if (be_ != null) {
                    i2 = be_.intValue();
                    return i2;
                }
            }
            a.close();
            com.twitter.database.model.j a2 = f.a(new i().a(auc.b("notif_id")).b("notif_id ASC").a());
            try {
                int i3;
                if (a2.a() == 0) {
                    i3 = 0;
                } else {
                    while (a2.c()) {
                        be_ = ((h) a2.a).be_();
                        if (be_ != null) {
                            if (be_.intValue() - i > 1000) {
                                break;
                            }
                            i = be_.intValue();
                        }
                    }
                    i3 = i + 1000;
                }
                a2.close();
                if (i3 != -1) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("notif_id", Integer.valueOf(i3));
                    if (a(str, contentValues, PushRegistration.c(this.b), null) == 0) {
                        cfb.d("GlobalDatabaseHelper", "Failed to save notification id");
                        i3 = -1;
                    }
                }
                return i3;
            } catch (Throwable th) {
                a2.close();
            }
        } finally {
            a.close();
        }
    }

    public int a(String str, String str2, int i, e eVar) {
        if (str == null) {
            return 0;
        }
        ContentValues contentValues = new ContentValues();
        Integer valueOf = Integer.valueOf(i);
        contentValues.put(str2, valueOf);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            valueOf = writableDatabase.update("activity_states", contentValues, "account_name=?", new String[]{str}) + null;
            if (valueOf == null) {
                contentValues.put("account_name", str);
                if (writableDatabase.insert("activity_states", "account_name", contentValues) > 0) {
                    valueOf++;
                }
            }
            writableDatabase.setTransactionSuccessful();
            if (valueOf > null && eVar != null) {
                eVar.a(Uri.withAppendedPath(bl.a, str));
            }
            return valueOf;
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public int a(String str, String str2) {
        int i;
        if ("tweet".equals(str2)) {
            i = 1;
        } else if ("mention".equals(str2)) {
            i = 2;
        } else if ("unread_interactions".equals(str2)) {
            i = 3;
        } else if ("message".equals(str2)) {
            i = 4;
        } else {
            throw new IllegalArgumentException("Invalid activity type: " + str2);
        }
        Cursor query = getReadableDatabase().query("activity_states", at.a, "account_name=?", new String[]{str}, null, null, null, null);
        if (query == null) {
            return 0;
        }
        try {
            int i2;
            if (query.moveToFirst()) {
                i2 = query.getInt(i);
            } else {
                i2 = 0;
            }
            query.close();
            return i2;
        } catch (Throwable th) {
            query.close();
        }
    }

    public int a(String str, int i, e eVar) {
        if (str == null) {
            return 0;
        }
        return a(str, "mention", a(str, "mention") | i, eVar);
    }

    public int d(String str) {
        int i = 0;
        if (str != null) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                i = writableDatabase.delete("account_settings", "account_name=?", new String[]{str});
                writableDatabase.setTransactionSuccessful();
            } finally {
                writableDatabase.endTransaction();
            }
        }
        return i;
    }

    public int e(String str) {
        int i = 0;
        if (str != null) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                i = writableDatabase.delete("activity_states", "account_name=?", new String[]{str});
                writableDatabase.setTransactionSuccessful();
            } finally {
                writableDatabase.endTransaction();
            }
        }
        return i;
    }

    public int a(int i, int i2, String str, int i3) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("widget_type", Integer.valueOf(i2));
        contentValues.put("account_name", str);
        contentValues.put("content_type", Integer.valueOf(i3));
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            int update = writableDatabase.update("widget_settings", contentValues, "widget_id=?", new String[]{String.valueOf(i)}) + 0;
            if (update == 0) {
                contentValues.put("widget_id", Integer.valueOf(i));
                if (writableDatabase.insert("widget_settings", "widget_id", contentValues) > 0) {
                    update++;
                }
            }
            writableDatabase.setTransactionSuccessful();
            return update;
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public int a(int[] iArr) {
        int i = 0;
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            int i2 = 0;
            while (i < iArr.length) {
                i2 += writableDatabase.delete("widget_settings", "widget_id=?", new String[]{String.valueOf(iArr[i])});
                i++;
            }
            writableDatabase.setTransactionSuccessful();
            return i2;
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public int b(String str, String str2) {
        int i = 0;
        if (str != null) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("account_name", str2);
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                i = writableDatabase.update("widget_settings", contentValues, "account_name=?", new String[]{str});
                writableDatabase.setTransactionSuccessful();
            } finally {
                writableDatabase.endTransaction();
            }
        }
        return i;
    }

    public int a(String str, boolean z) {
        if (str != null) {
            com.twitter.database.model.j a = ((g) b().a(g.class)).f().a("account_name=?", str);
            try {
                if (a.b()) {
                    int g = ((h) a.a).g();
                    return g;
                }
                a.close();
            } finally {
                a.close();
            }
        }
        if (z) {
            return 1440;
        }
        return 15;
    }
}
