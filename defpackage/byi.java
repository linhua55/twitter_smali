package defpackage;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.support.annotation.VisibleForTesting;
import ayg;
import ayh;
import byj;
import byk;
import byl;
import byn;
import byt;
import cks;
import ckv;
import ckw;
import cky;
import ckz;
import clc;
import clf;
import clj;
import cll;
import clx;
import com.twitter.android.bu;
import com.twitter.database.model.j;
import com.twitter.library.provider.bt;
import com.twitter.library.provider.bv;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.dd;
import com.twitter.library.provider.di;
import com.twitter.library.provider.e;
import com.twitter.model.core.cm;
import com.twitter.model.moments.DisplayStyle;
import com.twitter.model.moments.MomentGuideSectionType;
import com.twitter.model.moments.a;
import com.twitter.model.moments.ab;
import com.twitter.model.moments.ad;
import com.twitter.model.moments.k;
import com.twitter.model.moments.o;
import com.twitter.model.moments.q;
import com.twitter.model.moments.s;
import com.twitter.model.moments.t;
import com.twitter.platform.PlatformContext;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.n;
import com.twitter.util.collection.r;
import com.twitter.util.math.Size;
import com.twitter.util.serialization.m;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
/* renamed from: byi */
public class byi {
    private final Context a;
    private final di b;
    private final byt c;
    private final byn d;
    private final long e;

    public byi(Context context, di diVar, long j) {
        this(context, diVar, j, byn.a(diVar), byt.a(diVar));
    }

    @VisibleForTesting
    byi(Context context, di diVar, long j, byn byn, byt byt) {
        this.a = context;
        this.b = diVar;
        this.e = j;
        this.d = byn;
        this.c = byt;
    }

    public void a(long j, Collection<cm> collection) {
        e eVar = new e(this.a.getContentResolver());
        if (this.b.a(new ArrayList(collection), this.e, 33, j, false, false, false, null, false, eVar, false).size() > 0) {
            eVar.a(bv.a(j));
            eVar.a();
        }
    }

    public bu a(long j) {
        return new bu(this.a, c(j), cdg.a, null, null, null);
    }

    public bu a() {
        return new bu(this.a, ck.a(bt.a, this.e), bt.b, null, null, null);
    }

    public static cll a(Cursor cursor) {
        if ("SPORTS".equals(cursor.getString(cursor.getColumnIndex("moments_event_type")))) {
            return (cll) m.a(cursor.getBlob(cursor.getColumnIndex("moment_sports_events_value")), cll.a);
        }
        return null;
    }

    public bu a(String str) {
        return new bu(this.a, ck.a(com.twitter.library.provider.bu.a(str), this.e), com.twitter.library.provider.bu.J, null, null, "moments_guide_section_id ASC, _id");
    }

    public static ab b(Cursor cursor) {
        long j = cursor.getLong(cursor.getColumnIndex("moments_guide_moment_id"));
        String string = cursor.getString(cursor.getColumnIndex("moments_title"));
        boolean z = cursor.getInt(cursor.getColumnIndex("moments_can_subscribe")) == 1;
        boolean z2 = cursor.getInt(cursor.getColumnIndex("moments_is_live")) == 1;
        boolean z3 = cursor.getInt(cursor.getColumnIndex("moments_is_sensitive")) == 1;
        String string2 = cursor.getString(cursor.getColumnIndex("moments_subcategory_string"));
        String string3 = cursor.getString(cursor.getColumnIndex("moments_subcategory_favicon_url"));
        String string4 = cursor.getString(cursor.getColumnIndex("moments_time_string"));
        String string5 = cursor.getString(cursor.getColumnIndex("moments_duration_string"));
        return (ab) new ad().a(j).a(string).a(z).b(z2).c(z3).b(string2).c(string3).d(string4).e(string5).d(cursor.getInt(cursor.getColumnIndex("moments_is_subscribed")) == 1).f(cursor.getString(cursor.getColumnIndex("moments_description"))).g(cursor.getString(cursor.getColumnIndex("moments_moment_url"))).a(cursor.getInt(cursor.getColumnIndex("moments_num_subscribers"))).a((a) m.a(cursor.getBlob(cursor.getColumnIndex("moments_author_info")), a.a)).a((cni) m.a(cursor.getBlob(cursor.getColumnIndex("moments_promoted_content")), cni.a)).a((o) new q().a(cursor.getString(cursor.getColumnIndex("moments_event_id"))).b(cursor.getString(cursor.getColumnIndex("moments_event_type"))).r()).q();
    }

    private Uri c(long j) {
        return ck.a(dd.r.buildUpon().appendPath(String.valueOf(j)).build(), this.e);
    }

    public void a(Map<Long, Boolean> map) {
        for (Entry entry : map.entrySet()) {
            long longValue = ((Long) entry.getKey()).longValue();
            boolean booleanValue = ((Boolean) entry.getValue()).booleanValue();
            ContentValues contentValues = new ContentValues();
            contentValues.put("_id", Long.valueOf(longValue));
            contentValues.put("is_subscribed", Boolean.valueOf(booleanValue));
            this.b.a("moments", contentValues, longValue);
        }
    }

    public void a(ckv ckv, String str) {
        SQLiteDatabase writableDatabase = this.b.getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            a(2, str);
            a(ckv, 2, str, com.twitter.library.provider.bu.a(str));
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void b(ckv ckv, String str) {
        a(ckv, 2, str, com.twitter.library.provider.bu.a(str));
    }

    private void a(int i, String str) {
        String str2 = "section_group_type=? AND section_group_id=?";
        this.b.getWritableDatabase().delete("moments_sections", "section_group_type=? AND section_group_id=?", new String[]{String.valueOf(i), str});
    }

    private void a(ckv ckv, int i, String str, Uri uri) {
        SQLiteDatabase writableDatabase = this.b.getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            if (!ckv.a.b()) {
                a(ckv.a);
            }
            Map b = b();
            for (Entry entry : a(ckv.c, i, str).entrySet()) {
                a(((Long) entry.getKey()).longValue(), (ckw) entry.getValue(), b, ckv.f);
            }
            writableDatabase.setTransactionSuccessful();
            a(ckv.d);
            e eVar = new e(this.a.getContentResolver());
            eVar.a(uri);
            eVar.a();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void a(s sVar) {
        SQLiteDatabase writableDatabase = this.b.getWritableDatabase();
        long a = PlatformContext.f().a().a();
        List<t> list = sVar.c;
        writableDatabase.beginTransaction();
        try {
            this.b.b("moments_guide_categories");
            n a2 = n.a(list.size());
            for (t tVar : list) {
                Object contentValues = new ContentValues();
                contentValues.put("category_id", tVar.a);
                contentValues.put("is_default_category", Boolean.valueOf(aj.a(tVar.a, sVar.b)));
                contentValues.put("category_name", tVar.b);
                contentValues.put("fetch_timestamp", Long.valueOf(a));
                a2.c(contentValues);
            }
            this.b.a("moments_guide_categories", (Collection) a2.q());
            writableDatabase.setTransactionSuccessful();
            e eVar = new e(this.a.getContentResolver());
            eVar.a(bt.a);
            eVar.a();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void a(clx clx) {
        for (cll cll : clx.b) {
            this.c.b(String.valueOf(cll.b), cll);
        }
    }

    public void a(long j, clj clj) {
        ckw ckw = (ckw) new cky().a(MomentGuideSectionType.c).a(clj.a).q();
        SQLiteDatabase writableDatabase = this.b.getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            Map b = b();
            this.b.a("moments_sections", "section_group_id", Long.valueOf(j));
            this.d.a(j, clj.b);
            Long l = (Long) CollectionUtils.b(a(n.b((Object) ckw), 1, String.valueOf(j)).keySet());
            if (l != null) {
                a(l.longValue(), ckw, b, clj.b);
                writableDatabase.setTransactionSuccessful();
                writableDatabase.endTransaction();
                e eVar = new e(this.a.getContentResolver());
                eVar.a(com.twitter.library.provider.bu.a(j));
                eVar.a();
            }
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void a(clc clc) {
        a(clc, d(clc.a.b));
    }

    public void b(long j) {
        this.b.b(j);
    }

    private void a(clc clc, Map<String, byk> map) {
        SQLiteDatabase writableDatabase = this.b.getWritableDatabase();
        ab abVar = clc.a;
        writableDatabase.beginTransaction();
        try {
            this.b.a("moments", "_id", Long.valueOf(abVar.b));
            this.b.a("moments", (Collection) n.d().c(byi.a(abVar)).q());
            b(clc, (Map) map);
            a(clc.a.b, new ArrayList(clc.b.values()));
            this.b.a(clc.f.values(), this.e, -1, 0, null, null, true, null);
            writableDatabase.setTransactionSuccessful();
            e eVar = new e(this.a.getContentResolver());
            eVar.a(bv.a(abVar.b));
            eVar.a();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void a(long j, String str, long j2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("last_read_timestamp", Long.valueOf(j2));
        this.b.a(contentValues, j, str);
    }

    public void a(long j, boolean z) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("is_updated", Boolean.valueOf(z));
        this.b.a(contentValues, j);
    }

    public void b(long j, boolean z) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("is_read", Boolean.valueOf(z));
        this.b.a(contentValues, j);
    }

    @VisibleForTesting
    Map<Long, byj> b() {
        Cursor m = this.b.m();
        r d = r.d();
        try {
            if (m.moveToFirst()) {
                while (true) {
                    long j = m.getLong(m.getColumnIndex("moment_id"));
                    d.b(Long.valueOf(j), new byj(j, m.getInt(m.getColumnIndex("is_updated")) == 1));
                    if (!m.moveToNext()) {
                        break;
                    }
                }
            }
            Map<Long, byj> map = (Map) d.q();
            return map;
        } finally {
            m.close();
        }
    }

    private Map<String, byk> d(long j) {
        r d = r.d();
        j a = ((ayg) this.b.b().a(ayg.class)).f().a(auc.b("moment_id", Long.valueOf(j)), new String[0]);
        try {
            if (a.b()) {
                do {
                    String b = ((ayh) a.a).b();
                    d.b(b, new byk(j, b, ((Long) com.twitter.util.object.e.b(((ayh) a.a).c(), Long.valueOf(0))).longValue(), ((ayh) a.a).d()));
                } while (a.c());
            }
            a.close();
            return (Map) d.q();
        } catch (Throwable th) {
            a.close();
        }
    }

    private static ContentValues a(ab abVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("_id", Long.valueOf(abVar.b));
        contentValues.put("title", abVar.c);
        contentValues.put("can_subscribe", Boolean.valueOf(abVar.d));
        contentValues.put("is_live", Boolean.valueOf(abVar.e));
        contentValues.put("is_sensitive", Boolean.valueOf(abVar.f));
        contentValues.put("subcategory_string", abVar.g);
        contentValues.put("subcategory_favicon_url", abVar.h);
        contentValues.put("time_string", abVar.i);
        contentValues.put("duration_string", abVar.j);
        contentValues.put("is_subscribed", Boolean.valueOf(abVar.k));
        contentValues.put("description", abVar.l);
        contentValues.put("moment_url", abVar.n);
        contentValues.put("num_subscribers", Integer.valueOf(abVar.m));
        contentValues.put("capsule_content_version", Long.valueOf(abVar.r));
        if (abVar.o != null) {
            contentValues.put("author_info", m.a(abVar.o, a.a));
        }
        if (abVar.p != null) {
            contentValues.put("promoted_content", abVar.p.e());
        }
        if (abVar.q != null) {
            contentValues.put("event_id", abVar.q.b);
            contentValues.put("event_type", abVar.q.c);
        }
        return contentValues;
    }

    private ContentValues a(ab abVar, cks cks, Map<String, byk> map) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("moment_id", Long.valueOf(abVar.b));
        contentValues.put("tweet_id", Long.valueOf(cks.b.j));
        contentValues.put("page_id", cks.d);
        contentValues.put("content_version", Long.valueOf(abVar.r));
        byk byk = (byk) map.get(cks.d);
        if (byk != null && byk.c > 0) {
            contentValues.put("last_read_timestamp", Long.valueOf(byk.c));
        }
        contentValues.put("capsule_page_data", m.a((Object) cks, cks.a));
        return contentValues;
    }

    @VisibleForTesting
    byl a(clc clc, Map<String, byk> map, byj byj) {
        boolean z;
        int i;
        int i2;
        if (b(clc.a.b, map.values())) {
            if (!map.isEmpty()) {
                if (clc.a.r > ((byk) ((Entry) com.twitter.util.object.e.a(CollectionUtils.b(map.entrySet()))).getValue()).d) {
                    z = true;
                    i = 1;
                }
            }
            z = true;
            i = 0;
        } else {
            z = false;
            i = 0;
        }
        if (byj == null || !byj.b) {
            i2 = 0;
        } else {
            i2 = 1;
        }
        return new byl(z, i2 | i);
    }

    private ContentValues a(clc clc, long j, long j2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("section_id", Long.valueOf(j));
        contentValues.put("moment_id", Long.valueOf(clc.a.b));
        contentValues.put("impression_id", Long.valueOf(j2));
        clf clf = clc.d;
        if (clf != null) {
            ckz ckz = clf.g;
            if (ckz != null) {
                contentValues.put("media_id", Long.valueOf(ckz.b));
                contentValues.put("media_url", ckz.d);
                contentValues.put("media_size", m.a(ckz.c, Size.a));
            }
            contentValues.put("crop_data", m.a(clf.e, k.a));
            contentValues.put("tweet_id", Long.valueOf(clf.j));
            contentValues.put("display_type", m.a(clc.e, com.twitter.util.serialization.s.a(DisplayStyle.class)));
        }
        contentValues.put("context_string", clc.g);
        contentValues.put("context_scribe_info", m.a(clc.h, com.twitter.model.moments.aj.a));
        return contentValues;
    }

    private boolean b(long j, Collection<byk> collection) {
        for (byk byk : collection) {
            if (byk.a == j && byk.c > 0) {
                return true;
            }
        }
        return false;
    }

    private void b(clc clc, Map<String, byk> map) {
        this.b.a("moments_pages", "moment_id", Long.valueOf(clc.a.b));
        n d = n.d();
        int i = 0;
        for (cks a : clc.c) {
            Object a2 = a(clc.a, a, (Map) map);
            a2.put("page_number", Integer.valueOf(i));
            d.c(a2);
            i++;
        }
        this.b.a("moments_pages", (Collection) d.q());
    }

    private void a(long j, ckw ckw, Map<Long, byj> map, long j2) {
        Map hashMap = new HashMap();
        n d = n.d();
        for (clc clc : ckw.c) {
            ab abVar = clc.a;
            if (!hashMap.containsKey(Long.valueOf(abVar.b))) {
                this.b.a("moments", "_id", Long.valueOf(abVar.b));
                hashMap.put(Long.valueOf(abVar.b), byi.a(abVar));
            }
            Map d2 = d(abVar.b);
            byl a = a(clc, d2, (byj) map.get(Long.valueOf(abVar.b)));
            d.c(a(clc, j, j2));
            b(clc, d2);
            a(abVar.b, a);
            a(abVar.b, clc.b.values());
        }
        this.b.a("moments", hashMap.values());
        this.b.a("moments_guide", (Collection) d.q());
    }

    private void a(long j, byl byl) {
        this.b.a("moments_guide_user_states", "moment_id", Long.valueOf(j));
        Object contentValues = new ContentValues();
        contentValues.put("moment_id", Long.valueOf(j));
        contentValues.put("is_updated", Boolean.valueOf(byl.b));
        contentValues.put("is_read", Boolean.valueOf(byl.a));
        this.b.a("moments_guide_user_states", n.b(contentValues));
    }

    private LinkedHashMap<Long, ckw> a(List<ckw> list, int i, String str) {
        n d = n.d();
        for (ckw ckw : list) {
            Object contentValues = new ContentValues();
            contentValues.put("section_title", ckw.a);
            contentValues.put("section_type", m.a(ckw.b, com.twitter.util.serialization.s.a(MomentGuideSectionType.class)));
            contentValues.put("section_group_type", Integer.valueOf(i));
            contentValues.put("section_group_id", str);
            contentValues.put("section_category_id", ckw.d);
            contentValues.put("section_footer", ckw.e);
            contentValues.put("section_footer_deeplink", ckw.f);
            d.c(contentValues);
        }
        List a = this.b.a("moments_sections", (Collection) d.q());
        LinkedHashMap<Long, ckw> linkedHashMap = new LinkedHashMap();
        for (int i2 = 0; i2 < a.size(); i2++) {
            linkedHashMap.put(a.get(i2), list.get(i2));
        }
        return linkedHashMap;
    }
}
