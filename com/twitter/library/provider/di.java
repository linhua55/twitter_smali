package com.twitter.library.provider;

import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.MergeCursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.database.sqlite.SQLiteQueryBuilder;
import android.database.sqlite.SQLiteStatement;
import android.net.Uri;
import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v7.recyclerview.BuildConfig;
import android.text.TextUtils;
import android.util.Pair;
import aue;
import ays;
import ayt;
import ayu;
import ayv;
import ayw;
import ayx;
import aze;
import azf;
import azg;
import azh;
import azm;
import azn;
import azy;
import azz;
import baa;
import bab;
import bia;
import bic;
import bie;
import bii;
import bik;
import bim;
import bin;
import bit;
import biu;
import bjv;
import bjw;
import bkq;
import bkr;
import blh;
import cbk;
import ccd;
import cce;
import cci;
import ccj;
import cck;
import ccl;
import ccm;
import ccn;
import ccq;
import ccr;
import ccs;
import cct;
import ccv;
import ccw;
import ccx;
import ccy;
import ccz;
import cda;
import cdd;
import cde;
import cdf;
import cdh;
import cdi;
import cdj;
import cdl;
import cfl;
import cok;
import com.twitter.android.mx;
import com.twitter.config.AppConfig;
import com.twitter.database.model.k;
import com.twitter.database.model.m;
import com.twitter.database.model.o;
import com.twitter.database.model.r;
import com.twitter.database.schema.TwitterSchema;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.api.TwitterLocation;
import com.twitter.library.api.ab;
import com.twitter.library.api.ai;
import com.twitter.library.api.search.TwitterSearchQuery;
import com.twitter.library.api.search.TwitterTypeAhead;
import com.twitter.library.api.search.h;
import com.twitter.library.api.z;
import com.twitter.library.commerce.model.v;
import com.twitter.library.util.aq;
import com.twitter.library.util.y;
import com.twitter.model.ads.AdvertiserType;
import com.twitter.model.businessprofiles.BusinessProfileState;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TwitterSocialProof;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.as;
import com.twitter.model.core.bg;
import com.twitter.model.core.bi;
import com.twitter.model.core.cg;
import com.twitter.model.core.ck;
import com.twitter.model.core.cm;
import com.twitter.model.core.cn;
import com.twitter.model.core.cp;
import com.twitter.model.core.cx;
import com.twitter.model.core.p;
import com.twitter.model.core.t;
import com.twitter.model.dms.a;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.model.geo.g;
import com.twitter.model.media.EditableMedia;
import com.twitter.model.moments.an;
import com.twitter.model.moments.ba;
import com.twitter.model.profile.ExtendedProfile;
import com.twitter.model.search.TwitterUserMetadata;
import com.twitter.model.search.q;
import com.twitter.model.timeline.aa;
import com.twitter.model.timeline.aj;
import com.twitter.model.timeline.at;
import com.twitter.model.timeline.au;
import com.twitter.model.timeline.av;
import com.twitter.model.timeline.bc;
import com.twitter.model.timeline.bd;
import com.twitter.model.timeline.bq;
import com.twitter.model.timeline.bs;
import com.twitter.model.timeline.bw;
import com.twitter.model.timeline.by;
import com.twitter.model.timeline.c;
import com.twitter.model.timeline.ce;
import com.twitter.model.timeline.cj;
import com.twitter.model.topic.TwitterTopic;
import com.twitter.model.topic.d;
import com.twitter.model.topic.i;
import com.twitter.model.topic.l;
import com.twitter.util.ao;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.ImmutableList;
import com.twitter.util.collection.MutableList;
import com.twitter.util.collection.MutableSet;
import com.twitter.util.collection.ar;
import com.twitter.util.collection.x;
import com.twitter.util.concurrent.n;
import com.twitter.util.j;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import com.twitter.util.serialization.s;
import cox;
import cpg;
import cpi;
import cpj;
import defpackage.atv;
import defpackage.auc;
import defpackage.bbl;
import defpackage.bbn;
import defpackage.bgv;
import defpackage.bih;
import defpackage.bip;
import defpackage.boo;
import defpackage.cca;
import defpackage.ccc;
import defpackage.cdg;
import defpackage.cfb;
import defpackage.cfz;
import defpackage.cga;
import defpackage.cgl;
import defpackage.cly;
import defpackage.cni;
import defpackage.cnk;
import defpackage.cnm;
import defpackage.cnq;
import defpackage.cpf;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class di extends atv implements ek, j {
    private static final int[] a;
    private static final Uri[] b;
    private static final Uri[] c;
    private static final Map<String, di> d;
    private final Context e;
    private final long f;
    private TwitterSchema g;
    private final Set<Long> h;

    static {
        a = new int[]{10, 6, 11, 12, 20};
        b = new Uri[]{dd.a, dc.a, db.a, cl.a};
        c = new Uri[]{df.a, de.a, de.b, cx.b};
        d = new HashMap();
    }

    public static di a(Context context, long j) {
        di diVar;
        String k = k(j, 46);
        synchronized (d) {
            diVar = (di) d.get(k);
            if (diVar == null) {
                diVar = new di(context.getApplicationContext(), k, j);
                d.put(k, diVar);
            }
        }
        return diVar;
    }

    public TwitterSchema b() {
        if (this.g == null) {
            this.g = (TwitterSchema) j.a((n) new dj(this));
        }
        return (TwitterSchema) e.a(this.g);
    }

    private di(Context context, String str, long j) {
        super(context, str, 18);
        this.h = Collections.synchronizedSet(MutableSet.a());
        this.e = context;
        this.f = j;
        a();
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        m.a(TwitterSchema.class, new aue(sQLiteDatabase)).e();
        for (String execSQL : d()) {
            sQLiteDatabase.execSQL(execSQL);
        }
        b(sQLiteDatabase);
    }

    public SQLiteDatabase getWritableDatabase() {
        SQLiteDatabase writableDatabase;
        synchronized (this) {
            try {
                writableDatabase = super.getWritableDatabase();
            } catch (SQLiteDatabaseCorruptException e) {
                SQLiteException e2 = e;
                a(e2);
                writableDatabase = super.getWritableDatabase();
                return writableDatabase;
            } catch (SQLiteFullException e3) {
                e2 = e3;
                a(e2);
                writableDatabase = super.getWritableDatabase();
                return writableDatabase;
            }
        }
        return writableDatabase;
    }

    public SQLiteDatabase getReadableDatabase() {
        SQLiteDatabase readableDatabase;
        synchronized (this) {
            try {
                readableDatabase = super.getReadableDatabase();
            } catch (SQLiteDatabaseCorruptException e) {
                SQLiteException e2 = e;
                a(e2);
                readableDatabase = super.getReadableDatabase();
                return readableDatabase;
            } catch (SQLiteFullException e3) {
                e2 = e3;
                a(e2);
                readableDatabase = super.getReadableDatabase();
                return readableDatabase;
            }
        }
        return readableDatabase;
    }

    private void a(SQLiteException sQLiteException) {
        bbl bbl = new bbl(this.f);
        try {
            close();
        } catch (SQLiteException e) {
        }
        String path = this.e.getDatabasePath(getDatabaseName()).getPath();
        bbl.a("path", path).a("deleted", Boolean.valueOf(new File(path).delete())).a(sQLiteException);
        bbn.a(bbl);
    }

    private void b(SQLiteDatabase sQLiteDatabase) {
        String valueOf = String.valueOf(this.f);
        String str = valueOf + ".db";
        String str2 = ((this.f + 45) + 2) + ".db";
        String str3 = valueOf + "-";
        int i = 0;
        for (String valueOf2 : Arrays.asList(this.e.databaseList())) {
            if ("twitter.db".equals(valueOf2)) {
                valueOf2 = "twitter.db";
                break;
            } else if (valueOf2.equals(str)) {
                valueOf2 = str;
                break;
            } else if (valueOf2.equals(str2)) {
                valueOf2 = str2;
                break;
            } else {
                int parseInt;
                if (!(!valueOf2.startsWith(str3) || valueOf2.contains("drafts") || valueOf2.contains("scribe.db") || valueOf2.contains("-dm.db") || valueOf2.contains("lru_key_value"))) {
                    parseInt = Integer.parseInt(valueOf2.substring(valueOf2.indexOf("-") + 1, valueOf2.indexOf(46)));
                    if (parseInt > i && parseInt < 46) {
                        i = parseInt;
                    }
                }
                parseInt = i;
                i = parseInt;
            }
        }
        valueOf2 = null;
        if (valueOf2 == null && i > 0 && i < 46) {
            valueOf2 = k(this.f, i);
        }
        if (valueOf2 != null) {
            try {
                this.e.deleteDatabase(valueOf2);
            } catch (SQLiteException e) {
            }
        }
    }

    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        Throwable sQLiteException = new SQLiteException("Can't downgrade database from version " + i + " to " + i2);
        if (AppConfig.m().a()) {
            throw sQLiteException;
        }
        bbn.a(sQLiteException);
        o.a(TwitterSchema.class, new aue(sQLiteDatabase)).b();
        for (String execSQL : d()) {
            sQLiteDatabase.execSQL(execSQL);
        }
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        new dr(o.a(TwitterSchema.class, new aue(sQLiteDatabase)), sQLiteDatabase, this.f).a(i, i2);
    }

    static int a(SQLiteDatabase sQLiteDatabase, long j, int i, Collection<av> collection, long j2) {
        if (collection.isEmpty()) {
            return 0;
        }
        ContentValues contentValues = new ContentValues(2);
        String str = "owner_id=? AND type=? AND entity_id=?";
        String[] strArr = new String[3];
        strArr[0] = String.valueOf(j);
        strArr[1] = String.valueOf(i);
        contentValues.put("timeline_group_id", Long.valueOf(j2));
        int i2 = 0;
        for (av avVar : collection) {
            strArr[2] = String.valueOf(avVar.bf_());
            if (avVar.e > 0) {
                contentValues.put("sort_index", Long.valueOf(avVar.e));
            } else {
                contentValues.remove("sort_index");
            }
            i2 = sQLiteDatabase.update("timeline", contentValues, "owner_id=? AND type=? AND entity_id=?", strArr) + i2;
        }
        return i2;
    }

    public void c() {
        a(getWritableDatabase());
    }

    static void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.beginTransaction();
        try {
            sQLiteDatabase.execSQL("DELETE FROM statuses;");
            sQLiteDatabase.execSQL("DELETE FROM timeline");
            sQLiteDatabase.execSQL("DELETE FROM activities;");
            sQLiteDatabase.execSQL("DELETE FROM search_results;");
            sQLiteDatabase.execSQL("DELETE FROM stories;");
            sQLiteDatabase.execSQL("DELETE FROM cursors WHERE kind IN (4,8,3,15);");
            sQLiteDatabase.execSQL("DELETE FROM status_groups;");
            sQLiteDatabase.setTransactionSuccessful();
        } finally {
            sQLiteDatabase.endTransaction();
        }
    }

    private static String[] n() {
        return new String[]{"user_groups", "cursors", "users", "search_queries", "activities", "tokens", "locations", "timeline", "topics", "one_click", "ads_account_permissions", "business_profiles"};
    }

    static String[] d() {
        return new String[]{"CREATE TRIGGER user_tokens_delete_trigger AFTER DELETE ON users FOR EACH ROW BEGIN DELETE FROM tokens WHERE tokens.type=4 AND tokens.ref_id=OLD.user_id;END;", "CREATE TRIGGER search_results_delete_trigger BEFORE DELETE ON search_results FOR EACH ROW WHEN (SELECT COUNT(*) FROM search_results WHERE search_results.data_id=OLD.data_id AND search_results.search_id=OLD.search_id AND search_results.s_type=OLD.s_type AND search_results.data_type=OLD.data_type)=1 BEGIN DELETE FROM status_groups WHERE OLD.data_type=1 AND type=13 AND tag=OLD.search_id AND g_status_id=OLD.data_id;DELETE FROM user_groups WHERE OLD.data_type=2 AND type=3 AND tag=OLD.search_id AND user_id=OLD.data_id;END;", "CREATE TRIGGER status_metadata_delete_trigger AFTER DELETE ON status_groups FOR EACH ROW BEGIN DELETE FROM status_metadata WHERE owner_id=OLD.owner_id AND status_id=OLD.g_status_id AND status_group=OLD.type AND status_group_tag=OLD.tag;END;", "CREATE TRIGGER user_metadata_delete_trigger AFTER DELETE ON user_groups FOR EACH ROW BEGIN DELETE FROM user_metadata WHERE owner_id=OLD.owner_id AND user_id=OLD.user_id AND user_group_type=OLD.type AND user_group_tag=OLD.tag;END;", "CREATE TRIGGER user_group_update_trigger AFTER UPDATE OF user_id ON user_groups FOR EACH ROW BEGIN DELETE FROM user_metadata WHERE owner_id=OLD.owner_id AND user_id=OLD.user_id AND user_group_type=OLD.type AND user_group_tag=OLD.tag;END;", "CREATE TRIGGER activity_statuses_delete_trigger AFTER DELETE ON activities FOR EACH ROW BEGIN DELETE FROM status_groups WHERE type IN(12,14) AND tag=OLD.max_position;END;", "CREATE TRIGGER activity_users_delete_trigger AFTER DELETE ON activities FOR EACH ROW BEGIN DELETE FROM user_groups WHERE type IN(8,13) AND tag=OLD.max_position;END;", "CREATE TRIGGER timeline_is_read_trigger AFTER UPDATE OF is_read ON timeline FOR EACH ROW BEGIN UPDATE status_groups SET is_read=NEW.is_read WHERE OLD.data_type=1 AND owner_id=OLD.owner_id AND g_status_id=OLD.data_id AND type=OLD.data_type_group AND tag=OLD.data_type_tag;END;", "CREATE TRIGGER stories_delete_trigger AFTER DELETE ON stories FOR EACH ROW BEGIN DELETE FROM status_groups WHERE OLD.data_type=4 AND type=29 AND OLD.story_order=tag;DELETE FROM user_groups WHERE OLD.data_type IN(2,3) AND type=34 AND OLD.story_order=tag;END;", "CREATE TRIGGER news_delete_trigger AFTER DELETE ON news FOR EACH ROW BEGIN DELETE FROM status_groups WHERE type=32 AND tag=OLD.news_id_hash;DELETE FROM user_groups WHERE type=35 AND tag=OLD.news_id_hash;END;", ej.a, "CREATE TRIGGER moments_guide_delete_trigger AFTER DELETE ON moments_sections FOR EACH ROW BEGIN DELETE FROM moments_guide WHERE section_id=OLD._id;END;", "CREATE TRIGGER dismiss_info_delete_trigger BEFORE DELETE ON dismiss_info FOR EACH ROW WHEN (SELECT COUNT(*) FROM dismiss_info WHERE dismiss_info.feedback_action_id=OLD.feedback_action_id)=1 BEGIN DELETE FROM feedback_action WHERE feedback_action._id=OLD.feedback_action_id; END;", "CREATE TRIGGER timeline_delete_trigger BEFORE DELETE ON timeline FOR EACH ROW BEGIN DELETE FROM dismiss_info WHERE dismiss_info.timeline_id=OLD._id; END;", "CREATE TRIGGER timeline_message_delete_trigger AFTER DELETE ON timeline WHEN OLD.data_type = 10 BEGIN DELETE FROM prompts WHERE prompts.p_id = OLD.data_id; END;", "CREATE TRIGGER notifications_tab_delete_trigger AFTER DELETE ON activities FOR EACH ROW BEGIN DELETE FROM notifications_tab WHERE data_type = 0 AND data_id = OLD.max_position;END;"};
    }

    private static void a(TwitterTopic twitterTopic, byte[] bArr) {
        if (twitterTopic.d().b == 4) {
            com.twitter.model.topic.e eVar = (com.twitter.model.topic.e) twitterTopic.a(com.twitter.model.topic.e.class);
            eVar.g = Math.max(eVar.g, ((com.twitter.model.topic.e) com.twitter.util.serialization.m.a(bArr, d.a)).g);
        }
    }

    private static void a(TwitterTopic twitterTopic, ContentValues contentValues) {
        l d = twitterTopic.d();
        contentValues.put("ev_id", d.c);
        contentValues.put("ev_type", Integer.valueOf(d.b));
        contentValues.put("ev_title", twitterTopic.e());
        contentValues.put("ev_subtitle", twitterTopic.g());
        contentValues.put("ev_query", twitterTopic.f());
        contentValues.put("ev_seed_hashtag", twitterTopic.h());
        contentValues.put("ev_view_url", twitterTopic.k());
        contentValues.put("ev_status", twitterTopic.l());
        contentValues.put("ev_image_url", twitterTopic.i());
        contentValues.put("ev_explanation", twitterTopic.j());
        contentValues.put("ev_tweet_count", Long.valueOf(twitterTopic.m()));
        contentValues.put("ev_start_time", Long.valueOf(twitterTopic.n()));
        contentValues.put("ev_owner_id", Long.valueOf(twitterTopic.o()));
        if (twitterTopic.q() != null) {
            contentValues.put("ev_pc", a(twitterTopic.q(), cni.a));
        }
        Object a = twitterTopic.a(d.class);
        if (a != null) {
            contentValues.put("ev_content", a(a, d.a));
        }
    }

    public Collection<TwitterTopic> a(Collection<TwitterTopic> collection, e eVar) {
        Cursor a;
        cfb.b("DatabaseHelper", "Merge topics: " + collection.size());
        Map hashMap = new HashMap();
        if (!collection.isEmpty()) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                int i;
                TwitterTopic twitterTopic;
                int i2;
                a = a(writableDatabase, "topics", cdf.a, "ev_id", null, null, (Collection) collection, null, hashMap);
                if (a != null) {
                    ContentValues contentValues = new ContentValues();
                    i = 0;
                    while (a.moveToNext()) {
                        contentValues.clear();
                        twitterTopic = (TwitterTopic) hashMap.remove(a.getString(1));
                        if (twitterTopic != null) {
                            a(twitterTopic, a.getBlob(2));
                            a(twitterTopic, contentValues);
                            long j = a.getLong(0);
                            cfb.b("DatabaseHelper", "Updating topic at row id: " + j);
                            writableDatabase.update("topics", contentValues, "_id=?", new String[]{String.valueOf(j)});
                            i++;
                            twitterTopic.a(j);
                        }
                        i = i;
                    }
                    a.close();
                    i2 = i;
                } else {
                    i2 = 0;
                }
                if (!hashMap.isEmpty()) {
                    ContentValues contentValues2 = new ContentValues();
                    i = i2;
                    for (TwitterTopic twitterTopic2 : hashMap.values()) {
                        contentValues2.clear();
                        a(twitterTopic2, contentValues2);
                        twitterTopic2.a(writableDatabase.insert("topics", "ev_id", contentValues2));
                        i++;
                    }
                    i2 = i;
                }
                writableDatabase.setTransactionSuccessful();
                writableDatabase.endTransaction();
                if (eVar != null && r1 > 0) {
                    eVar.a(cw.a);
                }
            } catch (Throwable th) {
                writableDatabase.endTransaction();
            }
        }
        return hashMap.values();
    }

    public List<TwitterTopic> b(boolean z) {
        Cursor query = getReadableDatabase().query("timeline_view", new String[]{"ev_id", "ev_title", "ev_subtitle", "ev_content", "timeline_is_read"}, "timeline_type=6 AND " + (z ? "(timeline_flags&?)!=0" : "NOT ((timeline_flags&?)!=0)"), new String[]{String.valueOf(AccessibilityNodeInfoCompat.ACTION_DISMISS)}, null, null, "status_groups_preview_draft_id DESC, timeline_updated_at DESC, _id ASC", null);
        if (query == null) {
            return null;
        }
        List<TwitterTopic> arrayList = new ArrayList();
        while (query.moveToNext()) {
            try {
                String string = query.getString(0);
                String string2 = query.getString(1);
                String string3 = query.getString(2);
                i iVar = (i) com.twitter.util.serialization.m.a(query.getBlob(3), d.a);
                boolean z2 = query.getInt(4) == 1;
                if (iVar != null) {
                    cok cok = iVar.c;
                    cox cox = iVar.d;
                    l lVar = new l(3, string, false);
                    string = cox.b;
                    long j = (cok == null || cok.e == null) ? 0 : cok.e.c;
                    TwitterTopic twitterTopic = new TwitterTopic(lVar, string2, string3, string, null, null, null, null, j, 0, 0, null, null, iVar, null, null);
                    twitterTopic.a(z2);
                    arrayList.add(twitterTopic);
                }
            } finally {
                query.close();
            }
        }
        return arrayList;
    }

    public int a(e eVar) {
        int i;
        SQLiteDatabase writableDatabase = getWritableDatabase();
        Cursor query = writableDatabase.query("timeline", new String[]{"_id", "flags"}, "type=6 AND (flags&?)!=0", new String[]{String.valueOf(AccessibilityNodeInfoCompat.ACTION_DISMISS)}, null, null, null);
        if (query != null) {
            writableDatabase.beginTransaction();
            try {
                ContentValues contentValues = new ContentValues(2);
                int i2 = 0;
                while (query.moveToNext()) {
                    contentValues.clear();
                    long j = query.getLong(0);
                    contentValues.put("flags", Integer.valueOf(query.getInt(1) & -1048577));
                    i2 += writableDatabase.update("timeline", contentValues, "_id=?", new String[]{String.valueOf(j)});
                }
                writableDatabase.setTransactionSuccessful();
                i = i2;
            } finally {
                query.close();
                writableDatabase.endTransaction();
            }
        } else {
            i = 0;
        }
        if (i > 0 && eVar != null) {
            eVar.a(df.d);
        }
        return i;
    }

    public int a(long j, List<TwitterTopic> list, boolean z, e eVar, boolean z2) {
        boolean z3 = true;
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            long b = com.twitter.util.m.b();
            List b2 = b(false);
            if (z) {
                a(6, "TRENDSPLUS", z, null);
            } else {
                a(6, "TRENDSPLUS", z, eVar);
                String str = "TRENDSPLUS";
                if (z) {
                    z3 = false;
                }
                a(6, str, z3, eVar);
            }
            if (z2) {
                List<TwitterTopic> list2 = list;
            } else {
                List a = a(b2, (List) list);
            }
            int size = list.size();
            com.twitter.util.collection.n a2 = com.twitter.util.collection.n.a(size);
            int i = size;
            for (TwitterTopic twitterTopic : r1) {
                a2.c(((ce) ((ce) new ce().a(twitterTopic).b(twitterTopic.f())).b(b)).q());
                i--;
            }
            size = a((ch) new cj().a((List) a2.q()).a(j).a(6).a("TRENDSPLUS").d(true).a(eVar).e(z).q());
            writableDatabase.setTransactionSuccessful();
            return size;
        } finally {
            writableDatabase.endTransaction();
        }
    }

    private List<TwitterTopic> a(List<TwitterTopic> list, List<TwitterTopic> list2) {
        List<TwitterTopic> arrayList = new ArrayList(list2.size());
        Map hashMap = new HashMap(list.size());
        for (TwitterTopic twitterTopic : list) {
            hashMap.put(twitterTopic.bg_(), twitterTopic);
        }
        for (TwitterTopic twitterTopic2 : list2) {
            TwitterTopic twitterTopic3 = (TwitterTopic) hashMap.get(twitterTopic2.bg_());
            if (cpj.a(twitterTopic3, twitterTopic2)) {
                arrayList.add(twitterTopic2);
            } else {
                arrayList.add(twitterTopic3);
            }
        }
        return arrayList;
    }

    public int a(Collection<TwitterUser> collection, long j, int i, long j2, String str, String str2, boolean z, e eVar) {
        if (j >= 0 || i == -1) {
            Cursor a;
            int i2;
            if (cfb.a()) {
                cfb.b("DatabaseHelper", "Merge users: " + collection.size() + ", of type: " + i + ", owned by: " + j + ", tag: " + j2 + ", prevCursor: " + str + ", nextCursor: " + str2);
            }
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.beginTransaction();
            if (str != null) {
                try {
                    if (str.equals("-1")) {
                        cfb.b("DatabaseHelper", "Removed (due to refresh): " + writableDatabase.delete("user_groups", "owner_id=? AND type=?", new String[]{String.valueOf(j), String.valueOf(i)}) + ", owned by: " + j + ", of type: " + i);
                        a(writableDatabase, j, i, 1, 0);
                    }
                } catch (Throwable th) {
                    writableDatabase.endTransaction();
                }
            }
            if (collection.isEmpty()) {
                i2 = 0;
            } else {
                TwitterUser twitterUser;
                HashMap hashMap = new HashMap();
                for (TwitterUser twitterUser2 : collection) {
                    hashMap.put(Long.valueOf(twitterUser2.c), twitterUser2);
                }
                a = a(writableDatabase, "users", cdi.a, "user_id", null, null, hashMap.values(), null, null);
                if (a == null) {
                    writableDatabase.setTransactionSuccessful();
                    writableDatabase.endTransaction();
                    return 0;
                }
                long j3;
                int i3;
                Map hashMap2 = new HashMap();
                Map hashMap3 = new HashMap();
                Set hashSet = new HashSet();
                Set hashSet2 = new HashSet();
                HashSet hashSet3 = new HashSet();
                while (a.moveToNext()) {
                    j3 = a.getLong(0);
                    twitterUser2 = (TwitterUser) hashMap.remove(Long.valueOf(j3));
                    if (!(twitterUser2 == null || twitterUser2.k == null || twitterUser2.hashCode() == a.getInt(1))) {
                        bg bgVar;
                        String string = a.getString(2);
                        if (!ao.c(string, twitterUser2.e)) {
                            cfb.b("DatabaseHelper", "Invalidating avatar for user id: " + twitterUser2.c);
                            hashMap3.put(Long.valueOf(j3), string);
                        }
                        if (twitterUser2.D == null) {
                            bgVar = (bg) com.twitter.util.serialization.m.a(a.getBlob(4), bg.b);
                            if (bgVar != null) {
                                if (!a(a.getString(3), bgVar, twitterUser2.g)) {
                                    hashSet.add(Long.valueOf(j3));
                                }
                            }
                        }
                        if (twitterUser2.E == null) {
                            bgVar = (bg) com.twitter.util.serialization.m.a(a.getBlob(6), bg.b);
                            if (bgVar != null) {
                                if (!a(a.getString(5), bgVar, twitterUser2.h)) {
                                    hashSet2.add(Long.valueOf(j3));
                                }
                            }
                        }
                        if (p.g(a.getInt(7))) {
                            hashSet3.add(Long.valueOf(j3));
                        }
                        hashMap2.put(Long.valueOf(j3), twitterUser2);
                    }
                }
                a.close();
                cfb.b("DatabaseHelper", "Inserting new users: " + hashMap.size() + ", updating users: " + hashMap2.size());
                if (hashMap.isEmpty()) {
                    i3 = 0;
                } else {
                    ContentValues contentValues = new ContentValues();
                    i3 = 0;
                    for (TwitterUser twitterUser22 : hashMap.values()) {
                        contentValues.clear();
                        a(twitterUser22, contentValues, i, true);
                        if (writableDatabase.insert("users", "user_id", contentValues) > 0) {
                            i2 = i3 + 1;
                        } else {
                            i2 = i3;
                        }
                        i3 = i2;
                    }
                }
                if (z && !hashMap2.isEmpty()) {
                    boolean z2;
                    Object obj;
                    switch (i) {
                        case mx.View_android_theme /*0*/:
                        case WireMessage.WIRE_CHAT /*1*/:
                        case WireMessage.WIRE_CONTROL /*2*/:
                        case WireMessage.WIRE_AUTH /*3*/:
                        case mx.TwitterButton_nodpiBaseIconName /*16*/:
                        case mx.TweetView_previewFlags /*26*/:
                        case mx.TweetView_tweetViewLayoutId /*29*/:
                        case mx.AppCompatTheme_actionModePasteDrawable /*34*/:
                        case mx.AppCompatTheme_actionModeFindDrawable /*37*/:
                        case mx.AppCompatTheme_actionModeWebSearchDrawable /*38*/:
                        case mx.AppCompatTheme_textAppearanceLargePopupMenu /*40*/:
                            z2 = true;
                            obj = null;
                            break;
                        case mx.TwitterButton_strokeWidth /*15*/:
                            z2 = false;
                            int i4 = 1;
                            break;
                        default:
                            z2 = false;
                            obj = null;
                            break;
                    }
                    ContentValues contentValues2 = new ContentValues();
                    int i5 = 0;
                    for (TwitterUser twitterUser222 : hashMap2.values()) {
                        contentValues2.clear();
                        if (obj == null) {
                            if (hashSet3.contains(Long.valueOf(twitterUser222.c))) {
                                twitterUser222.S |= 8;
                            }
                        }
                        a(twitterUser222, contentValues2, i, z2);
                        if (twitterUser222.x == -1) {
                            contentValues2.remove("media_count");
                        }
                        if (hashSet.contains(Long.valueOf(twitterUser222.c))) {
                            contentValues2.remove("description");
                            contentValues2.remove("description_entities");
                        }
                        if (hashSet2.contains(Long.valueOf(twitterUser222.c))) {
                            contentValues2.remove("web_url");
                            contentValues2.remove("url_entities");
                        }
                        String[] strArr = new String[1];
                        strArr[0] = String.valueOf(twitterUser222.c);
                        i5 = writableDatabase.update("users", contentValues2, "user_id=?", strArr) + i5;
                    }
                    i3 += i5;
                    if (i5 > 0 && !hashMap3.isEmpty()) {
                        String[] strArr2 = new String[hashMap3.size()];
                        hashMap3.values().toArray(strArr2);
                        this.e.sendOrderedBroadcast(new Intent(ck.b).putExtra("url", strArr2), ck.a);
                    }
                }
                if (eVar != null && i3 > 0) {
                    j3 = ((TwitterUser) collection.iterator().next()).c;
                    eVar.a(dh.a);
                    if (i3 == 1) {
                        eVar.a(ContentUris.withAppendedId(dh.b, j3));
                    }
                    if (!hashMap3.isEmpty()) {
                        eVar.a(ContentUris.withAppendedId(dc.b, j3));
                    }
                }
                i2 = i3;
            }
            if (i != -1) {
                a((Collection) collection, j, i, j2, str2, eVar);
            }
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
            return i2;
        }
        throw new IllegalArgumentException("null owner id not allowed for type: " + i);
    }

    public TwitterUser a(long j) {
        TwitterUser twitterUser = null;
        Cursor query = getReadableDatabase().query("users", cdj.a, "user_id=?", new String[]{String.valueOf(j)}, null, null, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    twitterUser = a(query);
                } else {
                    query.close();
                }
            } finally {
                query.close();
            }
        }
        return twitterUser;
    }

    public List<TwitterUser> a(String[] strArr) {
        return (strArr == null || strArr.length == 0) ? new ArrayList() : d(UsernameError.USERNAME_ERROR_FIELD, strArr);
    }

    public List<TwitterUser> a(long[] jArr) {
        if (jArr == null || jArr.length == 0) {
            return new ArrayList();
        }
        String[] strArr = new String[jArr.length];
        for (int i = 0; i < jArr.length; i++) {
            strArr[i] = String.valueOf(jArr[i]);
        }
        return d("user_id", strArr);
    }

    private List<TwitterUser> d(String str, String[] strArr) {
        String str2 = str + a((Object[]) strArr);
        StringBuilder stringBuilder = new StringBuilder(" CASE " + str + ' ');
        for (int i = 0; i < strArr.length; i++) {
            stringBuilder.append(" WHEN '").append(strArr[i]).append("' THEN ").append(i + 1);
        }
        stringBuilder.append(" END");
        Cursor query = getReadableDatabase().query("users", cdj.a, str2, null, null, null, stringBuilder.toString());
        List<TwitterUser> arrayList = new ArrayList();
        if (query != null) {
            while (query.moveToNext()) {
                try {
                    arrayList.add(a(query));
                } finally {
                    query.close();
                }
            }
        }
        return arrayList;
    }

    private boolean a(String str, bg bgVar, String str2) {
        if (str == null || str2 == null || !bg.a(new StringBuilder(str), bgVar).equals(str2.replaceAll("http://", BuildConfig.VERSION_NAME).replaceAll("https://", BuildConfig.VERSION_NAME).replaceAll("(?i)www\\.", BuildConfig.VERSION_NAME))) {
            return true;
        }
        return false;
    }

    public List<TwitterUser> a(String str, int i, int i2) {
        int i3 = 0;
        String trim = str.trim();
        SQLiteDatabase readableDatabase = getReadableDatabase();
        StringBuilder stringBuilder = new StringBuilder();
        if (!TextUtils.isEmpty(trim)) {
            if (trim.charAt(0) != '@') {
                i3 = 1;
            }
            trim = aq.a(trim) + '%';
            String sqlEscapeString = DatabaseUtils.sqlEscapeString(trim);
            stringBuilder.append("(username LIKE " + sqlEscapeString);
            if (i3 != 0) {
                stringBuilder.append(" OR name LIKE " + sqlEscapeString + " OR " + "name" + " LIKE " + DatabaseUtils.sqlEscapeString("% " + trim));
            }
            stringBuilder.append(')');
        }
        if (i != 0) {
            if (stringBuilder.length() != 0) {
                stringBuilder.append(" AND ");
            }
            stringBuilder.append("(friendship&" + i + '=' + i);
            stringBuilder.append(')');
        }
        Cursor query = readableDatabase.query("weighted_users", cdj.a, stringBuilder.length() > 0 ? stringBuilder.toString() : null, null, null, null, "tokens_weight DESC, name ASC", String.valueOf(i2));
        List<TwitterUser> arrayList = new ArrayList();
        if (query != null) {
            while (query.moveToNext()) {
                try {
                    arrayList.add(a(query));
                } finally {
                    query.close();
                }
            }
        }
        return arrayList;
    }

    public Map<Long, TwitterUser> a(List<Long> list) {
        SQLiteDatabase readableDatabase = getReadableDatabase();
        Map<Long, TwitterUser> hashMap = new HashMap();
        if (!CollectionUtils.b((Collection) list)) {
            Cursor query = readableDatabase.query("users", cdj.a, "user_id" + a((Iterable) list), null, null, null, null);
            if (query != null) {
                while (query.moveToNext()) {
                    try {
                        TwitterUser a = a(query);
                        hashMap.put(Long.valueOf(a.c), a);
                    } finally {
                        query.close();
                    }
                }
            }
        }
        return hashMap;
    }

    public void b(long j) {
        Object a = a(j);
        if (a != null) {
            a.S = p.a(a.S, 4);
            e eVar = new e(this.e.getContentResolver());
            b(this.f, a.c, eVar);
            a(com.twitter.util.collection.n.b(a), this.f, 2, -1, null, null, true, eVar);
            eVar.a();
        }
    }

    public static TwitterUser a(Cursor cursor) {
        boolean z = true;
        int i = cursor.getInt(5);
        cp h = new cp().a(cursor.getLong(1)).a(cursor.getString(2)).f(cursor.getString(3)).b(cursor.getString(4)).h(cursor.getString(19)).d(cursor.getString(8)).e(cursor.getString(10)).a(cursor.getInt(17)).b(cursor.getInt(23)).a(bg.a(cursor.getBlob(20))).b(bg.a(cursor.getBlob(21))).b(cursor.getLong(12)).a(false).b((i & 1) != 0).c((i & 2) != 0).d((i & 4) != 0).e((i & 8) != 0).c(cursor.getInt(9)).d(cursor.getInt(24)).e(cursor.getInt(11)).h(cursor.getInt(16)).f(cursor.getInt(13)).g(cursor.getInt(22)).g((i & 16) != 0).f((i & AccessibilityNodeInfoCompat.ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY) != 0).g(cursor.getString(6)).a((x) com.twitter.util.serialization.m.a(cursor.getBlob(7), x.a(TwitterPlace.a))).a((ExtendedProfile) com.twitter.util.serialization.m.a(cursor.getBlob(25), ExtendedProfile.a)).e(cursor.getLong(26)).a((AdvertiserType) new com.twitter.model.json.common.o(AdvertiserType.values(), AdvertiserType.NONE).getFromString(cursor.getString(27))).a((BusinessProfileState) new com.twitter.model.json.common.o(BusinessProfileState.values(), BusinessProfileState.NONE).getFromString(cursor.getString(28))).j((i & AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT) != 0).i(cursor.getInt(14)).c(cursor.getLong(18)).d(cursor.getLong(15)).h(false);
        if ((i & 32) == 0) {
            z = false;
        }
        return (TwitterUser) h.i(z).j(i).q();
    }

    public long[] a(Uri uri, String str, String str2, String[] strArr) {
        Collection arrayList = new ArrayList();
        Cursor query = this.e.getContentResolver().query(uri, new String[]{str}, str2, strArr, null);
        if (query != null) {
            while (query.moveToNext()) {
                try {
                    arrayList.add(Long.valueOf(query.getLong(0)));
                } finally {
                    query.close();
                }
            }
        }
        return CollectionUtils.e(arrayList);
    }

    public TwitterUser a(String str) {
        Cursor query = getReadableDatabase().query("users", new String[]{"user_id", "name"}, "LOWER(username)=?", new String[]{str.toLowerCase()}, null, null, null, "1");
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    TwitterUser twitterUser = (TwitterUser) new cp().f(str).a(query.getLong(0)).a(query.getString(1)).q();
                    return twitterUser;
                }
                query.close();
            } finally {
                query.close();
            }
        }
        return null;
    }

    public int a(long j, e eVar) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            String valueOf = String.valueOf(j);
            String[] strArr = new String[]{valueOf};
            String[] strArr2 = new String[]{valueOf, String.valueOf(21), valueOf};
            valueOf = "g_status_id=? OR (type=? AND tag=?)";
            valueOf = "data_type=1 AND data_id=?";
            int e = e(writableDatabase, j) + 0;
            int a = a("timeline_data_type=1 AND timeline_data_id=?", strArr) + 0;
            int delete = writableDatabase.delete("search_results", "data_type=1 AND data_id=?", strArr) + (writableDatabase.delete("status_groups", "g_status_id=? OR (type=? AND tag=?)", strArr2) + (a(writableDatabase, "status_id=?", strArr) + 0));
            writableDatabase.setTransactionSuccessful();
            if (eVar != null) {
                if (e > 0) {
                    eVar.a(cl.a);
                }
                if (a > 0) {
                    eVar.a(df.a, df.b, df.c, df.d, df.f);
                }
                if (delete > 0) {
                    eVar.a(dd.a, dc.a, db.a);
                }
            }
            return (e + a) + delete;
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public boolean a(long j, long j2) {
        return a("timeline_owner_id=? AND status_groups_sender_id=? AND status_groups_ref_id=?", "owner_id=? AND sender_id=? AND ref_id=?", new String[]{String.valueOf(j2), String.valueOf(j2), String.valueOf(j)}, true) > 0;
    }

    private int a(String str, String str2, String[] strArr, boolean z) {
        int b;
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        if (z) {
            try {
                b = b(str, strArr);
            } catch (Throwable th) {
                writableDatabase.endTransaction();
            }
        } else {
            b = a(str, strArr);
        }
        b += writableDatabase.delete("status_groups", str2, strArr);
        writableDatabase.setTransactionSuccessful();
        writableDatabase.endTransaction();
        return b;
    }

    public cm c(long j) {
        return b(getReadableDatabase(), j);
    }

    private cm b(SQLiteDatabase sQLiteDatabase, long j) {
        com.twitter.model.geo.d dVar = null;
        Cursor query = sQLiteDatabase.query("statuses", ccw.a, "status_id=?", new String[]{String.valueOf(j)}, null, null, null);
        if (query == null) {
            return null;
        }
        try {
            if (query.moveToFirst()) {
                TwitterUser a = a(query.getLong(1));
                if (a == null) {
                    cfb.b("DatabaseHelper", "findStatus: User not found: " + query.getLong(1));
                    return null;
                }
                boolean z;
                if (!(query.isNull(5) || query.isNull(6))) {
                    dVar = new com.twitter.model.geo.d(Double.parseDouble(query.getString(5)), Double.parseDouble(query.getString(6)));
                }
                bg a2 = bg.a(query.getBlob(20));
                cn d = new cn().a(query.getLong(0)).b(query.getLong(2)).c(query.getString(7)).b(query.getString(3)).c(query.getLong(9)).d(query.getLong(8)).d(query.getString(10));
                if (query.getInt(19) == 1) {
                    z = true;
                } else {
                    z = false;
                }
                cm cmVar = (cm) d.a(z).b(query.getInt(4) == 1).a(dVar).a((TwitterPlace) com.twitter.util.serialization.m.a(query.getBlob(16), TwitterPlace.a)).b(a).a(query.getInt(11)).b(query.getInt(12)).f((long) query.getInt(15)).e(query.getString(13)).f(query.getString(14)).a(a2).q();
                query.close();
                return cmVar;
            }
            query.close();
            return null;
        } finally {
            query.close();
        }
    }

    private List<z> e(String str, String[] strArr) {
        com.twitter.database.model.j a = ((aze) b().a(aze.class)).f().a(str, strArr);
        com.twitter.util.collection.n d = com.twitter.util.collection.n.d();
        while (a.c()) {
            try {
                d.c(new ab().a(((azf) a.a).a()).b(((azf) a.a).b()).a(((azf) a.a).d()).c(((azf) a.a).f()).a(((azf) a.a).c()).d(((azf) a.a).g()).e(((azf) a.a).h()).f(((azf) a.a).i()).g(((azf) a.a).j()).h(((azf) a.a).k()).i(((azf) a.a).l()).j(((azf) a.a).m()).k(((azf) a.a).n()).a(((azf) a.a).e()).a());
            } finally {
                a.close();
            }
        }
        return (List) d.q();
    }

    public List<z> e() {
        return e(null, null);
    }

    public void a(PromotedEvent promotedEvent, String str, long j, String str2, boolean z, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10) {
        try {
            a(false, promotedEvent, str, j, str2, z, str3, str4, str5, str6, str7, str8, str9, str10);
        } catch (Throwable e) {
            bbn.a(new bbl(e).a(NotificationCompatApi21.CATEGORY_EVENT, promotedEvent).a("impression_id", str).a("trend_id", Long.valueOf(j)).a("is_earned", Boolean.valueOf(z)));
        }
    }

    public void b(PromotedEvent promotedEvent, String str, long j, String str2, boolean z, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10) {
        a(true, promotedEvent, str, j, str2, z, str3, str4, str5, str6, str7, str8, str9, str10);
    }

    private void a(boolean z, PromotedEvent promotedEvent, String str, long j, String str2, boolean z2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10) {
        String[] strArr;
        String str11;
        z zVar;
        cfb.b("DatabaseHelper", "Promoted Content Status: " + z + " Event: " + promotedEvent + ", impressionId: " + str + ", trendId: " + j + " earned:" + z2);
        String[] strArr2;
        if (str == null) {
            strArr2 = new String[2];
            strArr2[0] = promotedEvent.toString();
            strArr2[1] = z2 ? "1" : "0";
            strArr = strArr2;
            str11 = "event=? AND is_earned=?";
        } else {
            strArr2 = new String[3];
            strArr2[0] = str;
            strArr2[1] = promotedEvent.toString();
            strArr2[2] = z2 ? "1" : "0";
            strArr = strArr2;
            str11 = "impression_id=? AND event=? AND is_earned=?";
        }
        List e = e(str11, strArr);
        if (e.isEmpty()) {
            zVar = null;
        } else {
            zVar = (z) e.get(0);
        }
        if (!z || zVar != null) {
            r c = b().c(azg.class);
            k b = c.b();
            if (zVar == null) {
                ((azh) b.d).a(str).b(promotedEvent.toString()).a(z2).a(0).a(j).c(str2).d(str3).e(str4).f(str5).g(str6).h(str7).i(str8).j(str9).k(str10);
                b.b();
            } else if (z || zVar.f >= 3) {
                c.a(str11, strArr);
            } else {
                ((azh) b.d).a(zVar.f + 1);
                b.a(str11, strArr);
            }
        }
    }

    public int f() {
        Cursor query = getReadableDatabase().query("status_groups", new String[]{"COUNT(_id)"}, "preview_draft_id IS NOT NULL", null, null, null, null);
        if (query != null) {
            try {
                if (query.moveToNext()) {
                    int i = query.getInt(0);
                    return i;
                }
                query.close();
            } finally {
                query.close();
            }
        }
        return 0;
    }

    public int g() {
        int i;
        long[] jArr;
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        Cursor query = writableDatabase.query("status_groups", new String[]{"g_status_id"}, "preview_draft_id IS NOT NULL", null, null, null, null, null);
        if (query != null) {
            try {
                long[] jArr2;
                int i2;
                if (query.moveToFirst()) {
                    jArr2 = new long[query.getCount()];
                    i = 0;
                    while (true) {
                        i2 = i + 1;
                        jArr2[i] = query.getLong(0);
                        if (query.moveToNext()) {
                            i = i2;
                        }
                    }
                    query.close();
                    i = i2;
                    jArr = jArr2;
                } else {
                    jArr2 = null;
                    i2 = 0;
                }
                break;
                query.close();
                i = i2;
                jArr = jArr2;
            } catch (Throwable th) {
                writableDatabase.endTransaction();
            }
        } else {
            jArr = null;
            i = 0;
        }
        if (jArr != null) {
            for (long a : jArr) {
                a(a, null);
            }
        }
        writableDatabase.delete("status_groups", "preview_draft_id IS NOT NULL", null);
        writableDatabase.setTransactionSuccessful();
        writableDatabase.endTransaction();
        return i;
    }

    public synchronized Tweet a(TwitterUser twitterUser, com.twitter.model.drafts.d dVar) {
        Tweet d;
        long j = 0;
        TwitterPlace twitterPlace = null;
        synchronized (this) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                cm c;
                com.twitter.model.geo.d b;
                g gVar = dVar.g;
                if (dVar.i != null) {
                    j = dVar.i.e;
                    c = c(j);
                } else {
                    c = null;
                }
                ImmutableList.a(Integer.valueOf(0), Integer.valueOf(dVar.c.trim().length()));
                cn d2 = new cn().a(a(writableDatabase, 2954391679L, 2954491679L)).c("Twitter for Android Preview").b(com.twitter.util.m.b()).b(r1).c(0).d(dVar.e);
                if (gVar != null) {
                    b = gVar.b();
                } else {
                    b = null;
                }
                cn a = d2.a(b);
                if (gVar != null) {
                    twitterPlace = gVar.a();
                }
                cm cmVar = (cm) a.a(twitterPlace).b(twitterUser).a(dVar.h).e("en").b(c).g(j).q();
                a(cmVar, twitterUser.c, null);
                ContentValues contentValues = new ContentValues();
                contentValues.put("preview_draft_id", Long.valueOf(dVar.b));
                com.twitter.util.collection.n d3 = com.twitter.util.collection.n.d();
                for (DraftAttachment draftAttachment : dVar.d) {
                    if (draftAttachment.d == 0) {
                        d3.c(draftAttachment.a(1));
                    }
                }
                if (!d3.h()) {
                    contentValues.put("preview_media", a(d3.q(), s.a(EditableMedia.j)));
                }
                writableDatabase.update("status_groups", contentValues, "g_status_id=?", new String[]{String.valueOf(cmVar.b)});
                writableDatabase.setTransactionSuccessful();
                d = d(cmVar.b);
                writableDatabase.endTransaction();
            } catch (Throwable th) {
                writableDatabase.endTransaction();
            }
        }
        return d;
    }

    public Tweet d(long j) {
        return a(getReadableDatabase(), j);
    }

    public Tweet a(SQLiteDatabase sQLiteDatabase, long j) {
        Tweet tweet = null;
        String str = "status_groups_g_status_id=?";
        SQLiteDatabase sQLiteDatabase2 = sQLiteDatabase;
        Cursor query = sQLiteDatabase2.query("status_groups_view", cdg.a, "status_groups_g_status_id=?", new String[]{String.valueOf(j)}, null, null, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    tweet = ccc.a.a(query);
                } else {
                    query.close();
                }
            } finally {
                query.close();
            }
        }
        return tweet;
    }

    public Collection<cm> a(Collection<cm> collection, long j, int i, long j2, boolean z, boolean z2, boolean z3, String str, boolean z4, e eVar, boolean z5) {
        return a(collection, j, i, j2, z, z2, z3, str, z4, eVar, z5, false);
    }

    public Collection<cm> a(Collection<cm> collection, long j, int i, long j2, boolean z, boolean z2, boolean z3, String str, boolean z4, e eVar, boolean z5, boolean z6) {
        cfb.b("DatabaseHelper", "Merge statuses: " + collection.size() + ", of type: " + i + ", owned by: " + j + ", last page: " + z2);
        if (i == -1 || j >= 0) {
            com.twitter.util.collection.n.g();
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.beginTransaction();
            Cursor a;
            try {
                Set emptySet;
                if (collection.isEmpty()) {
                    if (z2) {
                        d(j, i, eVar);
                    }
                    writableDatabase.setTransactionSuccessful();
                    emptySet = Collections.emptySet();
                    writableDatabase.endTransaction();
                    return emptySet;
                }
                if (str != null) {
                    a(3, i, j, 0, str);
                }
                Map hashMap = new HashMap();
                a = a(writableDatabase, "statuses", ccz.a, "status_id", null, null, (Collection) collection, hashMap, null);
                if (a == null) {
                    writableDatabase.setTransactionSuccessful();
                    emptySet = Collections.emptySet();
                    writableDatabase.endTransaction();
                    return emptySet;
                }
                cm cmVar;
                int i2;
                int i3;
                Collection<cm> a2;
                int i4 = 0;
                Set hashSet = new HashSet();
                ContentValues contentValues = new ContentValues();
                while (a.moveToNext()) {
                    int i5;
                    long j3 = a.getLong(3);
                    contentValues.clear();
                    cmVar = (cm) hashMap.remove(Long.valueOf(a.getLong(1)));
                    if (cmVar == null) {
                        i5 = i4;
                    } else if ((256 & j3) > 0) {
                        for (cm bf_ : collection) {
                            if (bf_.bf_() == cmVar.bf_()) {
                                hashSet.add(Long.valueOf(cmVar.bf_()));
                                break;
                            }
                        }
                    } else {
                        long j4;
                        cm c = cmVar.c();
                        a(contentValues, c);
                        contentValues.put("retweeted", Boolean.valueOf(c.m));
                        contentValues.put("favorited", Boolean.valueOf(c.D));
                        contentValues.put("retweet_count", Integer.valueOf(c.p));
                        contentValues.put("favorite_count", Integer.valueOf(c.E));
                        contentValues.put("lang", c.r);
                        contentValues.put("supplemental_language", c.v);
                        contentValues.put("entities", a(c.e, bg.b));
                        if (c.F == null) {
                            contentValues.putNull("quoted_tweet_data");
                        } else {
                            contentValues.put("quoted_tweet_data", a(new as(c.F), as.a));
                        }
                        if (c.s) {
                            j4 = 64 | j3;
                        } else {
                            j4 = -65 & j3;
                        }
                        if (c.q > -1) {
                            contentValues.put("view_count", Long.valueOf(c.q));
                        }
                        if (c.e.d.f()) {
                            j4 |= PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
                        }
                        if (c.z != null) {
                            j4 |= (long) cpi.a(c.z);
                            contentValues.put("card", a(c.z, cgl.a));
                        }
                        if (c.d) {
                            j4 |= 65536;
                        }
                        if (cmVar.h()) {
                            j4 |= 131072;
                        }
                        if (j4 != j3) {
                            contentValues.put("flags", Long.valueOf(j4));
                        }
                        cfb.b("DatabaseHelper", "Updating status at row id: " + a.getLong(0));
                        int update = writableDatabase.update("statuses", contentValues, "_id=?", new String[]{String.valueOf(j4)});
                        i2 = i4 + update;
                        if (update > 0 && cmVar.h() && !cmVar.B.c.isEmpty() && z6) {
                            a(cmVar.B.c, this.f, cmVar.B.a, true);
                        }
                        i5 = i2;
                    }
                    i4 = i5;
                }
                a.close();
                Collection collection2;
                if (hashSet.isEmpty()) {
                    collection2 = collection;
                } else {
                    collection2 = CollectionUtils.a((Iterable) collection, new dk(this, hashSet));
                }
                Map hashMap2 = new HashMap();
                for (cm cmVar2 : r9) {
                    TwitterUser twitterUser = cmVar2.C;
                    hashMap2.put(Long.valueOf(twitterUser.c), twitterUser);
                    cm cmVar3 = cmVar2.o;
                    cmVar2 = cmVar2.F;
                    if (cmVar3 != null) {
                        twitterUser = cmVar3.C;
                        hashMap2.put(Long.valueOf(twitterUser.c), twitterUser);
                    }
                    if (cmVar2 != null) {
                        TwitterUser twitterUser2 = cmVar2.C;
                        hashMap2.put(Long.valueOf(twitterUser2.c), twitterUser2);
                    }
                }
                a(hashMap2.values(), -1, -1, -1, null, null, z5, eVar);
                if (hashMap.isEmpty()) {
                    i3 = 0;
                } else {
                    ContentValues contentValues2 = new ContentValues();
                    i2 = 0;
                    for (cm cmVar22 : hashMap.values()) {
                        contentValues2.clear();
                        if (a(cmVar22.c(), contentValues2, this.f)) {
                            Object obj = (!cmVar22.h() || CollectionUtils.b(cmVar22.B.c)) ? null : 1;
                            if (obj != null) {
                                contentValues2.put("flags", Integer.valueOf(contentValues2.getAsInteger("flags").intValue() | AccessibilityNodeInfoCompat.ACTION_SET_SELECTION));
                            }
                            int i6 = writableDatabase.insert("statuses", "status_id", contentValues2) > 0 ? 1 : 0;
                            i2 += i6;
                            if (i6 > 0 && obj != null && z6) {
                                a(cmVar22.B.c, this.f, cmVar22.B.a, false);
                            }
                        }
                        i2 = i2;
                    }
                    i3 = i2;
                }
                cfb.b("DatabaseHelper", "Inserted new statuses: " + i3 + ", of type: " + i);
                if (i != -1) {
                    a2 = a((Collection) r9, j, i, j2, z, z2, z3, str, z4);
                    if (eVar != null && (i3 + i4) + a2.size() > 0) {
                        eVar.a(b);
                        eVar.a(c);
                    }
                } else {
                    a2 = hashMap.values();
                }
                writableDatabase.setTransactionSuccessful();
                writableDatabase.endTransaction();
                return a2;
            } catch (Throwable th) {
                writableDatabase.endTransaction();
            }
        } else {
            throw new IllegalArgumentException("null owner id not allowed for type: " + i);
        }
    }

    public void a(cm cmVar, long j, e eVar) {
        cm cmVar2 = cmVar.o;
        cm c = cmVar.c();
        cfb.b("DatabaseHelper", "insertStatus: " + c.b);
        int i = 0;
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        Cursor query = writableDatabase.query("statuses", new String[]{"_id"}, "status_id=?", new String[]{String.valueOf(c.b)}, null, null, null);
        int a;
        if (query != null) {
            Cursor query2;
            try {
                if (!query.moveToFirst()) {
                    com.twitter.util.collection.n d = com.twitter.util.collection.n.d();
                    d.c(c.C);
                    if (cmVar2 != null) {
                        d.c(cmVar.C);
                    }
                    a((Collection) d.q(), -1, -1, -1, null, null, true, eVar);
                    ContentValues contentValues = new ContentValues();
                    if (a(c, contentValues, this.f)) {
                        i = 0 + (writableDatabase.insert("statuses", "status_id", contentValues) > 0 ? 1 : 0);
                    }
                }
                query.close();
                if (!(cmVar2 == null || cmVar.w == null)) {
                    cmVar = (cm) new cn(cmVar).a((cni) new cnk(cmVar.w).d().q()).q();
                }
                Collection b = com.twitter.util.collection.n.b((Object) cmVar);
                List b2 = com.twitter.util.collection.n.b((bw) ((by) ((by) ((by) ((by) new by().a(cmVar).a(0)).b(cmVar.J)).a(cmVar.b)).b(cmVar.bg_())).q());
                a = a((ch) new cj().a(b2).a(j).a(1).q()) + i;
                a(j, cmVar);
                int size = a + a(b, j, 1, -1, true, false, true, null, false).size();
                Object obj = null;
                if (cmVar2 != null) {
                    ContentValues contentValues2 = new ContentValues(3);
                    contentValues2.put("tweet_type", Integer.valueOf(1));
                    contentValues2.put("ref_id", Long.valueOf(cmVar.b));
                    contentValues2.put("sender_id", Long.valueOf(cmVar.C.c));
                    contentValues2.put("tweet_pivots", a(cmVar.A, com.twitter.model.core.bw.b));
                    a = writableDatabase.update("status_groups", contentValues2, "owner_id=? AND g_status_id=? AND type NOT IN (7,0,1,17,18)", new String[]{String.valueOf(j), String.valueOf(cmVar2.b)}) + size;
                    contentValues2.clear();
                    contentValues2.put("type", Integer.valueOf(7));
                    String str = "owner_id=? AND type=? AND g_status_id=? AND tweet_type=1";
                    String[] strArr = new String[]{String.valueOf(j), String.valueOf(0), String.valueOf(cmVar2.b)};
                    query2 = writableDatabase.query("status_groups", new String[]{"updated_at"}, "owner_id=? AND type=? AND g_status_id=? AND tweet_type=1", strArr, null, null, null);
                    if (query2 != null) {
                        long j2 = 0;
                        if (query2.moveToFirst()) {
                            j2 = query2.getLong(0);
                        }
                        query2.close();
                        if (j2 > 0) {
                            size = a + writableDatabase.update("status_groups", contentValues2, "owner_id=? AND type=? AND g_status_id=? AND tweet_type=1", strArr);
                            cmVar.J = j2;
                            obj = c(new String[]{String.valueOf(j), String.valueOf(0), String.valueOf(cmVar2.b)}) <= 0 ? 1 : null;
                        }
                    }
                    size = a;
                    if (c(new String[]{String.valueOf(j), String.valueOf(0), String.valueOf(cmVar2.b)}) <= 0) {
                    }
                }
                a = obj == null ? a((ch) new cj().a(b2).a(j).a(0).q()) + size : cmVar2 != null ? a(b, j, 0, -1, false) + size : size;
            } catch (Throwable th) {
                writableDatabase.endTransaction();
            }
        } else {
            a = 0;
        }
        writableDatabase.setTransactionSuccessful();
        writableDatabase.endTransaction();
        if (eVar != null && r5 > 0) {
            eVar.a(b);
            eVar.a(df.a);
        }
    }

    private int a(long j, cm cmVar) {
        if (cmVar.k <= 0 || a(j, 14, String.valueOf(cmVar.k)) <= 0) {
            return 0;
        }
        String str = "conversationThread-" + cmVar.bg_();
        return a((ch) new cj().a(com.twitter.util.collection.n.b((at) ((au) ((au) new au().a(com.twitter.util.collection.n.b((av) ((by) ((by) ((by) ((by) new by().a(cmVar).a(0)).b(cmVar.J)).a(cmVar.b)).b(str)).q())).a(cmVar.b)).b(str)).q())).a(j).a(String.valueOf(cmVar.k)).a(14).q());
    }

    public int a(long j, int i, String str) {
        Cursor query = getReadableDatabase().query("timeline", new String[]{String.valueOf("_id")}, "owner_id=? AND type=? AND timeline_tag=?", new String[]{String.valueOf(j), String.valueOf(i), str}, null, null, null);
        if (query == null) {
            return 0;
        }
        try {
            int count = query.getCount();
            return count;
        } finally {
            query.close();
        }
    }

    private int c(String[] strArr) {
        Cursor query = getReadableDatabase().query("timeline", new String[]{String.valueOf("_id")}, "owner_id=? AND type=? AND data_type=1 AND data_id=?", strArr, null, null, null);
        if (query == null) {
            return 0;
        }
        try {
            int count = query.getCount();
            return count;
        } finally {
            query.close();
        }
    }

    private static void a(ContentValues contentValues, cm cmVar) {
        contentValues.put("content", cmVar.c);
        contentValues.put("r_content", cmVar.f);
    }

    private Collection<cm> a(Collection<cm> collection, long j, int i, long j2, boolean z, boolean z2, boolean z3, String str, boolean z4) {
        if (cfb.a()) {
            cfb.b("DatabaseHelper", "mergeStatusGroups: " + collection.size() + ", owned by: " + j + ", of type: " + i + ", read: " + z + ", last page: " + z2 + ", " + "timeline: " + z4 + ", next: " + str);
        }
        if (i == -1 || j < 0) {
            return Collections.emptySet();
        }
        if (collection.isEmpty()) {
            if (z2) {
                d(j, i, null);
            }
            return Collections.emptySet();
        }
        Map linkedHashMap = new LinkedHashMap();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        Cursor a;
        try {
            cm cmVar;
            for (cm cmVar2 : collection) {
                linkedHashMap.put(new dq(cmVar2.bf_(), cmVar2.w), cmVar2);
            }
            a = a(writableDatabase, "status_groups", ccm.a, "g_status_id", "owner_id=? AND type=? AND tag=?", new String[]{String.valueOf(j), String.valueOf(i), String.valueOf(j2)}, (Collection) collection, null, null);
            if (a == null) {
                writableDatabase.setTransactionSuccessful();
                Set emptySet = Collections.emptySet();
                writableDatabase.endTransaction();
                return emptySet;
            }
            int update;
            int i2;
            ContentValues contentValues = new ContentValues();
            int i3 = 0;
            while (a.moveToNext()) {
                cni cni;
                long j3 = a.getLong(0);
                if (a.isNull(2)) {
                    cni = null;
                } else {
                    cni = (cni) com.twitter.util.serialization.m.a(a.getBlob(2), cni.a);
                }
                cmVar2 = (cm) linkedHashMap.remove(new dq(j3, cni));
                if (cmVar2 != null) {
                    contentValues.clear();
                    if (z4) {
                        contentValues.put("timeline", Boolean.valueOf(true));
                    }
                    if (cmVar2.o != null) {
                        contentValues.put("tweet_type", Integer.valueOf(1));
                    } else if (cmVar2.d()) {
                        contentValues.put("tweet_type", Integer.valueOf(4));
                    } else if (cmVar2.e()) {
                        contentValues.put("tweet_type", Integer.valueOf(7));
                    } else {
                        contentValues.put("tweet_type", Integer.valueOf(0));
                    }
                    contentValues.put("ref_id", Long.valueOf(cmVar2.b));
                    contentValues.put("sender_id", Long.valueOf(cmVar2.C.c));
                    contentValues.put("tweet_pivots", a(cmVar2.A, com.twitter.model.core.bw.b));
                    update = i3 + writableDatabase.update("status_groups", contentValues, "_id=?", new String[]{String.valueOf(a.getLong(1))});
                    if (cmVar2.I != null) {
                        a(writableDatabase, cmVar2, j, i, j2);
                    }
                    i2 = update;
                } else {
                    i2 = i3;
                }
                i3 = i2;
            }
            cfb.b("DatabaseHelper", "Updated " + i3 + " status groups.");
            a.close();
            if (!linkedHashMap.isEmpty()) {
                ContentValues contentValues2 = new ContentValues();
                i3 = 0;
                for (cm cmVar22 : linkedHashMap.values()) {
                    contentValues2.clear();
                    contentValues2.put("owner_id", Long.valueOf(j));
                    contentValues2.put("type", Integer.valueOf(i));
                    contentValues2.put("tag", Long.valueOf(j2));
                    contentValues2.put("is_read", Integer.valueOf(z ? 1 : 0));
                    contentValues2.put("timeline", Boolean.valueOf(z4));
                    if (cmVar22.o != null) {
                        contentValues2.put("tweet_type", Integer.valueOf(1));
                    } else if (cmVar22.d()) {
                        contentValues2.put("tweet_type", Integer.valueOf(4));
                    } else if (cmVar22.e()) {
                        contentValues2.put("tweet_type", Integer.valueOf(7));
                    } else {
                        contentValues2.put("tweet_type", Integer.valueOf(0));
                    }
                    contentValues2.put("g_status_id", Long.valueOf(cmVar22.bf_()));
                    contentValues2.put("updated_at", Long.valueOf(cmVar22.J));
                    contentValues2.put("ref_id", Long.valueOf(cmVar22.b));
                    contentValues2.put("sender_id", Long.valueOf(cmVar22.C.c));
                    contentValues2.put("tweet_pivots", a(cmVar22.A, com.twitter.model.core.bw.b));
                    if (cmVar22.w != null) {
                        contentValues2.put("pc", a(cmVar22.w, cni.a));
                    }
                    int a2 = cpi.a(cmVar22);
                    if (a2 != 0) {
                        contentValues2.put("g_flags", Integer.valueOf(a2));
                    }
                    if (writableDatabase.insert("status_groups", "g_status_id", contentValues2) > 0) {
                        update = i3 + 1;
                        if (cmVar22.I != null) {
                            a(writableDatabase, cmVar22, j, i, j2);
                        }
                        i2 = update;
                    } else {
                        i2 = i3;
                    }
                    i3 = i2;
                }
                cfb.b("DatabaseHelper", "Inserted new status groups: " + i3);
                if (z3) {
                    a(j, i, j2);
                }
            } else if (z2) {
                d(j, i, null);
            }
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
            return linkedHashMap.values();
        } catch (Throwable th) {
            writableDatabase.endTransaction();
        }
    }

    private static int a(SQLiteDatabase sQLiteDatabase, cm cmVar, long j, int i, long j2) {
        int i2 = 1;
        sQLiteDatabase.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("owner_id", Long.valueOf(j));
            contentValues.put("status_group", Integer.valueOf(i));
            contentValues.put("status_group_tag", Long.valueOf(j2));
            contentValues.put("status_id", Long.valueOf(cmVar.bf_()));
            if (cmVar.I != null) {
                a(contentValues, cmVar.I);
            }
            int update = sQLiteDatabase.update("status_metadata", contentValues, "status_id=? AND status_group=? AND status_group_tag=?", new String[]{String.valueOf(r4), String.valueOf(i), String.valueOf(j2)});
            if (update != 0 || sQLiteDatabase.insert("status_metadata", "status_id", contentValues) <= 0) {
                i2 = update;
            }
            sQLiteDatabase.setTransactionSuccessful();
            return i2;
        } finally {
            sQLiteDatabase.endTransaction();
        }
    }

    public void a(Collection<TwitterUser> collection, long j, int i, long j2, String str, e eVar) {
        cfb.b("DatabaseHelper", "mergeUserGroups: " + collection.size() + ", owned by: " + j + ", of type: " + i + ", next: " + str);
        if (collection != null && i != -1 && j >= 0) {
            Cursor query;
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.beginTransaction();
            if (str != null) {
                try {
                    a(1, i, j, 0, str);
                } catch (Throwable th) {
                    writableDatabase.endTransaction();
                }
            }
            if (collection.isEmpty()) {
                if ("0".equals(str) || i == 21) {
                    c(j, i, eVar);
                }
                writableDatabase.setTransactionSuccessful();
                writableDatabase.endTransaction();
                return;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (TwitterUser twitterUser : collection) {
                linkedHashMap.put(Long.valueOf(twitterUser.c), twitterUser);
            }
            query = writableDatabase.query("user_groups", cdh.a, "owner_id=? AND type=? AND tag=?", new String[]{String.valueOf(j), String.valueOf(i), String.valueOf(j2)}, null, null, null);
            if (query == null) {
                writableDatabase.setTransactionSuccessful();
                writableDatabase.endTransaction();
                return;
            }
            while (query.moveToNext()) {
                linkedHashMap.remove(Long.valueOf(query.getLong(0)));
            }
            query.close();
            cfb.b("DatabaseHelper", "Inserting new user groups: " + linkedHashMap.size());
            int size = linkedHashMap.size();
            if (size > 0) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("owner_id", Long.valueOf(j));
                contentValues.put("type", Integer.valueOf(i));
                contentValues.put("tag", Long.valueOf(j2));
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("owner_id", Long.valueOf(j));
                contentValues2.put("user_group_type", Integer.valueOf(i));
                contentValues2.put("user_group_tag", Long.valueOf(j2));
                int i2 = 0;
                for (TwitterUser twitterUser2 : linkedHashMap.values()) {
                    int i3 = i2 + 1;
                    String str2 = "is_last";
                    boolean z = i3 == size && "0".equals(str);
                    contentValues.put(str2, Boolean.valueOf(z));
                    a(contentValues, twitterUser2);
                    if (writableDatabase.insert("user_groups", "user_id", contentValues) > 0 && twitterUser2.R != null) {
                        contentValues2.put("user_id", Long.valueOf(twitterUser2.c));
                        a(contentValues2, twitterUser2.R);
                        writableDatabase.insert("user_metadata", "user_id", contentValues2);
                    }
                    i2 = i3;
                }
                if (eVar != null) {
                    eVar.a(dg.a);
                }
            }
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
        }
    }

    public void a(Collection<TwitterUser> collection, long j, int i, int i2, long j2, String str, e eVar) {
        cfb.b("DatabaseHelper", "mergeRankedUserGroups: " + collection.size() + ", owned by: " + j + ", of type: " + i + ", of rank: " + i2 + ", next: " + str);
        if (collection != null && i != -1 && j >= 0) {
            Cursor query;
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.beginTransaction();
            if (str != null) {
                try {
                    a(1, i, j, 0, str);
                } catch (Throwable th) {
                    writableDatabase.endTransaction();
                }
            }
            if (collection.isEmpty()) {
                if ("0".equals(str)) {
                    c(j, i, eVar);
                }
                writableDatabase.setTransactionSuccessful();
                writableDatabase.endTransaction();
                return;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (TwitterUser twitterUser : collection) {
                linkedHashMap.put(Long.valueOf(twitterUser.c), twitterUser);
            }
            query = writableDatabase.query("user_groups", cdh.a, "owner_id=? AND type=? AND tag=?", new String[]{String.valueOf(j), String.valueOf(i), String.valueOf(j2)}, null, null, null);
            if (query == null) {
                writableDatabase.setTransactionSuccessful();
                writableDatabase.endTransaction();
                return;
            }
            while (query.moveToNext()) {
                linkedHashMap.remove(Long.valueOf(query.getLong(0)));
            }
            query.close();
            cfb.b("DatabaseHelper", "Inserting new user groups: " + linkedHashMap.size());
            int size = linkedHashMap.size();
            if (size > 0) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("owner_id", Long.valueOf(j));
                contentValues.put("type", Integer.valueOf(i));
                contentValues.put("tag", Long.valueOf(j2));
                contentValues.put("rank", Integer.valueOf(i2));
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("owner_id", Long.valueOf(j));
                contentValues2.put("user_group_type", Integer.valueOf(i));
                contentValues2.put("user_group_tag", Long.valueOf(j2));
                int i3 = 0;
                for (TwitterUser twitterUser2 : linkedHashMap.values()) {
                    int i4 = i3 + 1;
                    String str2 = "is_last";
                    boolean z = i4 == size && "0".equals(str);
                    contentValues.put(str2, Boolean.valueOf(z));
                    a(contentValues, twitterUser2);
                    if (writableDatabase.insert("user_groups", "user_id", contentValues) > 0 && twitterUser2.R != null) {
                        contentValues2.put("user_id", Long.valueOf(twitterUser2.c));
                        a(contentValues2, twitterUser2.R);
                        writableDatabase.insert("user_metadata", "user_id", contentValues2);
                    }
                    i3 = i4;
                }
                if (eVar != null) {
                    eVar.a(dg.a);
                }
            }
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
        }
    }

    public boolean a(TwitterUser twitterUser, long j, int i, long j2, long j3, e eVar) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        Cursor query;
        try {
            boolean z;
            query = writableDatabase.query("user_groups", new String[]{"_id"}, "owner_id=? AND type=? AND tag=? AND user_id=?", new String[]{String.valueOf(j), String.valueOf(i), String.valueOf(j2), String.valueOf(twitterUser.c)}, null, null, null);
            if (query != null) {
                int count = query.getCount();
                query.close();
                if (count > 0) {
                    writableDatabase.setTransactionSuccessful();
                    writableDatabase.endTransaction();
                    return false;
                }
            }
            if (a(Collections.singletonList(twitterUser), j, -1, -1, null, null, true, eVar) == 1 || a(twitterUser.c, j, i, j2)) {
                ContentValues contentValues = new ContentValues();
                a(contentValues, twitterUser);
                z = writableDatabase.update("user_groups", contentValues, "owner_id=? AND type=? AND tag=? AND user_id=?", new String[]{String.valueOf(j), String.valueOf(i), String.valueOf(j2), String.valueOf(j3)}) == 1;
                if (z && twitterUser.R != null) {
                    contentValues.clear();
                    contentValues.put("owner_id", Long.valueOf(j));
                    contentValues.put("user_group_type", Integer.valueOf(i));
                    contentValues.put("user_group_tag", Long.valueOf(j2));
                    contentValues.put("user_id", Long.valueOf(twitterUser.c));
                    a(contentValues, twitterUser.R);
                    writableDatabase.insert("user_metadata", "user_id", contentValues);
                }
            } else {
                z = false;
            }
            if (z && eVar != null) {
                eVar.a(dg.a);
            }
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
            return z;
        } catch (Throwable th) {
            writableDatabase.endTransaction();
        }
    }

    public boolean a(long j, long j2, int i, long j3) {
        Cursor query = getReadableDatabase().query("user_groups", null, "owner_id=? AND type=? AND tag=? AND user_id=?", new String[]{String.valueOf(j2), String.valueOf(i), String.valueOf(j3), String.valueOf(j)}, null, null, null, null);
        if (query == null) {
            return false;
        }
        try {
            boolean moveToFirst = query.moveToFirst();
            return moveToFirst;
        } finally {
            query.close();
        }
    }

    public static void a(ContentValues contentValues, TwitterUser twitterUser) {
        contentValues.put("user_id", Long.valueOf(twitterUser.c));
        if (twitterUser.B != null) {
            contentValues.put("pc", a(twitterUser.B, cni.a));
            int i = 1;
            if (twitterUser.B.b()) {
                i = 3;
            }
            contentValues.put("g_flags", Integer.valueOf(i));
            return;
        }
        contentValues.putNull("pc");
        contentValues.putNull("g_flags");
    }

    private void a(ContentValues contentValues, TwitterUserMetadata twitterUserMetadata) {
        TwitterSocialProof twitterSocialProof = twitterUserMetadata.a;
        if (twitterSocialProof != null) {
            contentValues.put("soc_type", Integer.valueOf(twitterSocialProof.b));
            contentValues.put("soc_name", twitterSocialProof.c);
            contentValues.put("soc_follow_count", Integer.valueOf(twitterSocialProof.f));
        } else {
            contentValues.put("soc_type", Integer.valueOf(-1));
            contentValues.putNull("soc_name");
            contentValues.putNull("soc_follow_count");
        }
        contentValues.put("user_title", twitterUserMetadata.c);
        contentValues.put("token", twitterUserMetadata.d);
    }

    public void a(Collection<cg> collection, long j, int i, String str, boolean z, e eVar) {
        a((Collection) collection, j, i, str, z, true, eVar);
    }

    public void a(Collection<cg> collection, long j, int i, String str, boolean z, boolean z2, e eVar) {
        cfb.b("DatabaseHelper", "Merging lists: " + collection.size() + ", owned by: " + j + ", type: " + i + ", next: " + str);
        if (j < 0) {
            throw new IllegalArgumentException("null owner id not allowed for lists");
        }
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        if (str != null) {
            try {
                a(2, i, j, 0, str);
            } catch (Throwable th) {
                writableDatabase.endTransaction();
            }
        }
        if (collection.isEmpty()) {
            if (z2 && "0".equals(str)) {
                g(j, eVar);
            }
            if (z) {
                writableDatabase.delete("list_mapping", "list_mapping_user_id = ? AND list_mapping_type = ?", new String[]{String.valueOf(j), String.valueOf(i)});
                if (i == 0) {
                    writableDatabase.delete("topics", "ev_type=5 AND ev_owner_id=?", new String[]{String.valueOf(j)});
                }
            }
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
            return;
        }
        cg cgVar;
        HashMap hashMap = new HashMap();
        for (cg cgVar2 : collection) {
            hashMap.put(Long.valueOf(cgVar2.bf_()), cgVar2);
        }
        Cursor a = a(writableDatabase, "topics", new String[]{"ev_id", "ev_hash"}, "ev_id", null, null, hashMap.values(), null, null);
        if (a == null) {
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
            return;
        }
        long j2;
        ContentValues contentValues;
        HashMap hashMap2 = new HashMap();
        while (a.moveToNext()) {
            long j3 = a.getLong(0);
            cgVar2 = (cg) hashMap.remove(Long.valueOf(j3));
            if (cgVar2.hashCode() != a.getInt(1)) {
                hashMap2.put(Long.valueOf(j3), cgVar2);
            }
        }
        a.close();
        cfb.b("DatabaseHelper", "Inserting new lists: " + hashMap.size() + ", updating lists: " + hashMap2.size());
        if (hashMap.size() > 0) {
            HashMap hashMap3 = new HashMap();
            for (cg cgVar22 : hashMap.values()) {
                hashMap3.put(Long.valueOf(cgVar22.n.bf_()), cgVar22.n);
            }
            a(hashMap3.values(), -1, -1, -1, null, null, true, eVar);
            int size = hashMap.size();
            ContentValues contentValues2 = new ContentValues();
            int i2 = 0;
            j2 = -1;
            for (cg cgVar222 : hashMap.values()) {
                int i3 = i2 + 1;
                contentValues2.put("ev_type", Integer.valueOf(5));
                contentValues2.put("ev_id", Long.valueOf(cgVar222.bf_()));
                contentValues2.put("ev_title", cgVar222.h);
                contentValues2.put("ev_query", cgVar222.i);
                contentValues2.put("ev_subtitle", cgVar222.j);
                contentValues2.put("ev_owner_id", Long.valueOf(cgVar222.n.bf_()));
                contentValues2.put("ev_hash", Integer.valueOf(cgVar222.hashCode()));
                if (size == i3 && "0".equals(str)) {
                    j3 = cgVar222.bf_();
                } else {
                    j3 = j2;
                }
                Object eVar2 = new com.twitter.model.topic.e();
                eVar2.c = cgVar222.c;
                eVar2.d = cgVar222.d;
                eVar2.f = cgVar222.a ? 1 : 2;
                eVar2.e = cgVar222.b;
                contentValues2.put("ev_content", a(eVar2, com.twitter.model.topic.e.b));
                writableDatabase.insert("topics", "ev_id", contentValues2);
                j2 = j3;
                i2 = i3;
            }
        } else {
            j2 = -1;
        }
        if (!hashMap2.isEmpty()) {
            contentValues = new ContentValues();
            for (cg cgVar2222 : hashMap2.values()) {
                contentValues.clear();
                contentValues.put("ev_title", cgVar2222.h);
                contentValues.put("ev_query", cgVar2222.i);
                contentValues.put("ev_subtitle", cgVar2222.j);
                contentValues.put("ev_owner_id", Long.valueOf(cgVar2222.n.bf_()));
                contentValues.put("ev_hash", Integer.valueOf(cgVar2222.hashCode()));
                contentValues.put("ev_content", a(b(cgVar2222), com.twitter.model.topic.e.b));
                writableDatabase.update("topics", contentValues, "ev_type=5 AND ev_id=?", new String[]{String.valueOf(cgVar2222.bf_())});
            }
        }
        if (!collection.isEmpty()) {
            if (z) {
                writableDatabase.delete("list_mapping", "list_mapping_user_id = ? AND list_mapping_type = ?", new String[]{String.valueOf(j), String.valueOf(i)});
            }
            contentValues = new ContentValues();
            for (cg cgVar22222 : collection) {
                contentValues.clear();
                contentValues.put("list_mapping_list_id", String.valueOf(cgVar22222.bf_()));
                contentValues.put("list_mapping_user_id", Long.valueOf(j));
                contentValues.put("list_mapping_type", Integer.valueOf(i));
                contentValues.put("list_is_last", Boolean.valueOf(cgVar22222.bf_() == j2));
                writableDatabase.replace("list_mapping", null, contentValues);
            }
        }
        if (eVar != null && hashMap.size() + hashMap2.size() > 0) {
            eVar.a(cw.a);
        }
        writableDatabase.setTransactionSuccessful();
        writableDatabase.endTransaction();
    }

    private long b(TwitterSearchQuery twitterSearchQuery, int i) {
        if (twitterSearchQuery == null) {
            return 0;
        }
        String str;
        String[] strArr;
        cfb.b("DatabaseHelper", "findSearchQuery: " + twitterSearchQuery.a + ", of type: " + i);
        if (twitterSearchQuery.c == null || twitterSearchQuery.d == null) {
            str = "LOWER(query)=LOWER(?) AND LOWER(name)=LOWER(?) AND type=? AND latitude IS NULL AND longitude IS NULL";
            strArr = new String[]{twitterSearchQuery.b, twitterSearchQuery.a, String.valueOf(i)};
        } else {
            str = "LOWER(query)=LOWER(?) AND LOWER(name)=LOWER(?) AND type=? AND latitude=? AND longitude=?";
            strArr = new String[]{twitterSearchQuery.b, twitterSearchQuery.a, String.valueOf(i), twitterSearchQuery.c.toString(), twitterSearchQuery.d.toString()};
        }
        return a(ccs.a, str, strArr);
    }

    private long a(String[] strArr, String str, String[] strArr2) {
        Cursor query = getReadableDatabase().query("search_queries", strArr, str, strArr2, null, null, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    long j = (long) query.getInt(0);
                    return j;
                }
                query.close();
            } finally {
                query.close();
            }
        }
        return 0;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public long a(com.twitter.library.api.search.TwitterSearchQuery r7, int r8) {
        /*
        r6 = this;
        r0 = "DatabaseHelper";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "insertSearchQuery: ";
        r1 = r1.append(r2);
        r2 = r7.a;
        r1 = r1.append(r2);
        r2 = ", of type: ";
        r1 = r1.append(r2);
        r1 = r1.append(r8);
        r1 = r1.toString();
        defpackage.cfb.b(r0, r1);
        r1 = r6.getWritableDatabase();
        r1.beginTransaction();
        switch(r8) {
            case 0: goto L_0x009b;
            default: goto L_0x0031;
        };
    L_0x0031:
        r0 = new android.content.ContentValues;	 Catch:{ all -> 0x009f }
        r0.<init>();	 Catch:{ all -> 0x009f }
        r2 = "type";
        r3 = java.lang.Integer.valueOf(r8);	 Catch:{ all -> 0x009f }
        r0.put(r2, r3);	 Catch:{ all -> 0x009f }
        r2 = "query";
        r3 = r7.b;	 Catch:{ all -> 0x009f }
        r0.put(r2, r3);	 Catch:{ all -> 0x009f }
        r2 = "name";
        r3 = r7.a;	 Catch:{ all -> 0x009f }
        r0.put(r2, r3);	 Catch:{ all -> 0x009f }
        r2 = "time";
        r4 = com.twitter.util.m.b();	 Catch:{ all -> 0x009f }
        r3 = java.lang.Long.valueOf(r4);	 Catch:{ all -> 0x009f }
        r0.put(r2, r3);	 Catch:{ all -> 0x009f }
        r2 = "latitude";
        r3 = r7.c;	 Catch:{ all -> 0x009f }
        r0.put(r2, r3);	 Catch:{ all -> 0x009f }
        r2 = "longitude";
        r3 = r7.d;	 Catch:{ all -> 0x009f }
        r0.put(r2, r3);	 Catch:{ all -> 0x009f }
        r2 = "radius";
        r3 = r7.e;	 Catch:{ all -> 0x009f }
        r0.put(r2, r3);	 Catch:{ all -> 0x009f }
        r2 = "location";
        r3 = r7.f;	 Catch:{ all -> 0x009f }
        r0.put(r2, r3);	 Catch:{ all -> 0x009f }
        r2 = "query_id";
        r4 = r7.g;	 Catch:{ all -> 0x009f }
        r3 = java.lang.Long.valueOf(r4);	 Catch:{ all -> 0x009f }
        r0.put(r2, r3);	 Catch:{ all -> 0x009f }
        r2 = "search_queries";
        r3 = "query";
        r2 = r1.insert(r2, r3, r0);	 Catch:{ all -> 0x009f }
        r1.setTransactionSuccessful();	 Catch:{ all -> 0x009f }
        r1.endTransaction();
        return r2;
    L_0x009b:
        r6.a(r8);	 Catch:{ all -> 0x009f }
        goto L_0x0031;
    L_0x009f:
        r0 = move-exception;
        r1.endTransaction();
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.library.provider.di.a(com.twitter.library.api.search.TwitterSearchQuery, int):long");
    }

    public void a(TwitterSearchQuery twitterSearchQuery, long j) {
        cfb.b("DatabaseHelper", "updateSearchQuery: " + twitterSearchQuery.a + ", rowId: " + j);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues();
            if (!(twitterSearchQuery.b == null || twitterSearchQuery.a == null)) {
                contentValues.put("query", twitterSearchQuery.b);
                contentValues.put("name", twitterSearchQuery.a);
                contentValues.put("time", Long.valueOf(com.twitter.util.m.b()));
                contentValues.put("latitude", twitterSearchQuery.c);
                contentValues.put("longitude", twitterSearchQuery.d);
                contentValues.put("radius", twitterSearchQuery.e);
                contentValues.put("location", twitterSearchQuery.f);
                writableDatabase.update("search_queries", contentValues, "_id=?", new String[]{String.valueOf(j)});
            }
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public int a(v vVar, e eVar) {
        Cursor query;
        cfb.b("DatabaseHelper", "Merging order history: " + vVar.a().size());
        if (vVar.a().isEmpty()) {
            return 0;
        }
        HashMap linkedHashMap = new LinkedHashMap();
        for (com.twitter.library.commerce.model.r rVar : vVar.a()) {
            linkedHashMap.put(rVar.g(), rVar);
        }
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            query = writableDatabase.query("order_history", ccq.a, null, null, null, null, null);
            if (query == null) {
                writableDatabase.setTransactionSuccessful();
                writableDatabase.endTransaction();
                return 0;
            }
            Object obj;
            int i = 0;
            while (query.moveToNext()) {
                long j = query.getLong(1);
                long j2 = query.getLong(0);
                obj = (com.twitter.library.commerce.model.r) linkedHashMap.remove(Long.valueOf(j));
                if (obj != null) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("data", a(obj, com.twitter.library.commerce.model.r.a));
                    contentValues.put("ordered_at", Long.valueOf(obj.d().getTimeInMillis()));
                    contentValues.put("order_id", obj.g());
                    i = writableDatabase.update("order_history", contentValues, "_id=?", new String[]{String.valueOf(j2)}) + i;
                }
            }
            query.close();
            cfb.b("DatabaseHelper", "Inserting new Order History: " + linkedHashMap.size());
            if (!linkedHashMap.isEmpty()) {
                ContentValues contentValues2 = new ContentValues();
                for (Object obj2 : linkedHashMap.values()) {
                    contentValues2.put("data", a(obj2, com.twitter.library.commerce.model.r.a));
                    contentValues2.put("ordered_at", Long.valueOf(obj2.d().getTimeInMillis()));
                    contentValues2.put("order_id", obj2.g());
                    writableDatabase.insert("order_history", null, contentValues2);
                }
            }
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
            if (eVar != null) {
                eVar.a(cz.a);
            }
            return linkedHashMap.size() + i;
        } catch (Throwable th) {
            writableDatabase.endTransaction();
        }
    }

    public int a(List<TwitterSearchQuery> list, int i, e eVar) {
        Cursor query;
        int i2 = 0;
        cfb.b("DatabaseHelper", "Merging search queries: " + list.size() + " of type: " + i);
        if (list.isEmpty()) {
            return 0;
        }
        HashMap linkedHashMap = new LinkedHashMap();
        for (TwitterSearchQuery twitterSearchQuery : list) {
            linkedHashMap.put(Integer.valueOf((twitterSearchQuery.a.hashCode() + 17) + (twitterSearchQuery.b.hashCode() * 31)), twitterSearchQuery);
        }
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            query = writableDatabase.query("search_queries", cct.a, "type=?", new String[]{String.valueOf(i)}, null, null, null);
            if (query == null) {
                writableDatabase.setTransactionSuccessful();
                writableDatabase.endTransaction();
                return 0;
            }
            TwitterSearchQuery twitterSearchQuery2;
            while (query.moveToNext()) {
                int hashCode = (query.getString(1).hashCode() + 17) + (query.getString(2).hashCode() * 31);
                long j = query.getLong(0);
                twitterSearchQuery2 = (TwitterSearchQuery) linkedHashMap.remove(Integer.valueOf(hashCode));
                if (twitterSearchQuery2 != null) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("name", twitterSearchQuery2.a);
                    contentValues.put("query", twitterSearchQuery2.b);
                    contentValues.put("time", Long.valueOf(twitterSearchQuery2.h));
                    contentValues.put("latitude", twitterSearchQuery2.c);
                    contentValues.put("longitude", twitterSearchQuery2.d);
                    contentValues.put("radius", twitterSearchQuery2.e);
                    contentValues.put("location", twitterSearchQuery2.f);
                    contentValues.put("query_id", Long.valueOf(twitterSearchQuery2.g));
                    if (twitterSearchQuery2.j != null) {
                        contentValues.put("pc", a(twitterSearchQuery2.j, cni.a));
                    } else {
                        contentValues.putNull("pc");
                    }
                    writableDatabase.update("search_queries", contentValues, "_id=?", new String[]{String.valueOf(j)});
                    i2++;
                } else {
                    writableDatabase.delete("search_queries", "_id=?", new String[]{String.valueOf(j)});
                }
            }
            query.close();
            cfb.b("DatabaseHelper", "Inserting new search queries: " + linkedHashMap.size());
            if (!linkedHashMap.isEmpty()) {
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("type", Integer.valueOf(i));
                for (TwitterSearchQuery twitterSearchQuery22 : linkedHashMap.values()) {
                    contentValues2.put("name", twitterSearchQuery22.a);
                    contentValues2.put("time", Long.valueOf(twitterSearchQuery22.h));
                    contentValues2.put("query", twitterSearchQuery22.b);
                    contentValues2.put("latitude", twitterSearchQuery22.c);
                    contentValues2.put("longitude", twitterSearchQuery22.d);
                    contentValues2.put("radius", twitterSearchQuery22.e);
                    contentValues2.put("location", twitterSearchQuery22.f);
                    contentValues2.put("query_id", Long.valueOf(twitterSearchQuery22.g));
                    if (twitterSearchQuery22.j != null) {
                        contentValues2.put("pc", a(twitterSearchQuery22.j, cni.a));
                    } else {
                        contentValues2.putNull("pc");
                    }
                    writableDatabase.insert("search_queries", "name", contentValues2);
                }
                if (eVar != null) {
                    switch (i) {
                        case WireMessage.WIRE_CHAT /*1*/:
                        case mx.UserView_actionButtonPaddingBottom /*6*/:
                        case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                            eVar.a(da.a, cp.a);
                            break;
                    }
                }
            }
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
            return linkedHashMap.size() + i2;
        } catch (Throwable th) {
            writableDatabase.endTransaction();
        }
    }

    public long a(TwitterSearchQuery twitterSearchQuery, int i, e eVar) {
        long b = b(twitterSearchQuery, i);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        if (b > 0) {
            switch (i) {
                case WireMessage.WIRE_CHAT /*1*/:
                case mx.UserView_actionButtonPaddingBottom /*6*/:
                case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                    break;
                default:
                    try {
                        a(twitterSearchQuery, b);
                        break;
                    } catch (Throwable th) {
                        writableDatabase.endTransaction();
                    }
            }
        } else {
            b = a(twitterSearchQuery, i);
            if (eVar != null) {
                eVar.a(da.a);
            }
        }
        writableDatabase.setTransactionSuccessful();
        writableDatabase.endTransaction();
        return b;
    }

    public int b(long j, e eVar) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            int delete = writableDatabase.delete("search_queries", "query_id=?", new String[]{String.valueOf(j)});
            writableDatabase.setTransactionSuccessful();
            if (delete > 0 && eVar != null) {
                eVar.a(da.a);
            }
            return delete;
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public int a(String str, e eVar) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            int delete = writableDatabase.delete("search_queries", "query=? AND type=?", new String[]{str, String.valueOf(0)});
            writableDatabase.setTransactionSuccessful();
            if (delete > 0 && eVar != null) {
                eVar.a(da.a);
            }
            return delete;
        } finally {
            writableDatabase.endTransaction();
        }
    }

    static int a(SQLiteDatabase sQLiteDatabase, long j, int i, int i2) {
        boolean z = true;
        int i3 = 0;
        j.b(i >= 0);
        if (i2 < 0) {
            z = false;
        }
        j.b(z);
        cfb.b("DatabaseHelper", "deleteOldSearchResults: searchId: " + j);
        sQLiteDatabase.beginTransaction();
        String[] strArr = new String[]{String.valueOf(j)};
        Cursor query = sQLiteDatabase.query("search_results", new String[]{"COUNT(*)"}, "search_id=?", strArr, null, null, null);
        if (query != null) {
            try {
                int i4;
                if (query.moveToFirst()) {
                    i4 = query.getInt(0);
                } else {
                    i4 = 0;
                }
                query.close();
                cfb.b("DatabaseHelper", "deleteOldSearchResults: total count: " + i4);
                if (i4 > i) {
                    query = sQLiteDatabase.query("search_results", new String[]{"_id", "search_id"}, "search_id=?", strArr, null, null, "type_id DESC, _id DESC", String.valueOf(i2));
                    if (query != null) {
                        if (query.moveToFirst()) {
                            String[] strArr2 = new String[1];
                            do {
                                strArr2[0] = String.valueOf(query.getLong(0));
                                i3 += sQLiteDatabase.delete("search_results", "_id=?", strArr2);
                            } while (query.moveToNext());
                            cfb.b("DatabaseHelper", "deleteOldSearchResults: Deleted: " + i3);
                        }
                        query.close();
                    }
                }
            } catch (Throwable th) {
                sQLiteDatabase.endTransaction();
            }
        }
        sQLiteDatabase.setTransactionSuccessful();
        sQLiteDatabase.endTransaction();
        return i3;
    }

    private static ContentValues a(long j, int i, int i2, int i3, cm cmVar, byte[] bArr, boolean z) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("search_id", Long.valueOf(j));
        contentValues.put("s_type", Integer.valueOf(i2));
        contentValues.put("data_type", Integer.valueOf(i3));
        contentValues.put("type_id", Integer.valueOf(i));
        contentValues.put("polled", Integer.valueOf(z ? 1 : 0));
        contentValues.put("data_id", Long.valueOf(cmVar.bf_()));
        if (bArr != null) {
            contentValues.put("related_data", bArr);
        }
        return contentValues;
    }

    private static ContentValues a(long j, int i, int i2, int i3, TwitterUser twitterUser, byte[] bArr, boolean z) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("search_id", Long.valueOf(j));
        contentValues.put("s_type", Integer.valueOf(i2));
        contentValues.put("data_type", Integer.valueOf(i3));
        contentValues.put("type_id", Integer.valueOf(i));
        contentValues.put("polled", Integer.valueOf(z ? 1 : 0));
        contentValues.put("data_id", Long.valueOf(twitterUser.bf_()));
        if (bArr != null) {
            contentValues.put("related_data", bArr);
        }
        return contentValues;
    }

    private static ContentValues a(long j, int i, int i2, int i3, TwitterTopic twitterTopic, byte[] bArr, boolean z) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("search_id", Long.valueOf(j));
        contentValues.put("s_type", Integer.valueOf(i2));
        contentValues.put("data_type", Integer.valueOf(i3));
        contentValues.put("type_id", Integer.valueOf(i));
        contentValues.put("polled", Integer.valueOf(z ? 1 : 0));
        contentValues.put("data_id", Long.valueOf(twitterTopic.bf_()));
        if (bArr != null) {
            contentValues.put("related_data", bArr);
        }
        return contentValues;
    }

    private static ContentValues a(long j, int i, int i2, int i3, byte[] bArr, boolean z) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("search_id", Long.valueOf(j));
        contentValues.put("s_type", Integer.valueOf(i2));
        contentValues.put("data_type", Integer.valueOf(i3));
        contentValues.put("polled", Integer.valueOf(z ? 1 : 0));
        contentValues.put("type_id", Integer.valueOf(i));
        if (bArr != null) {
            contentValues.put("related_data", bArr);
        }
        return contentValues;
    }

    private static void a(com.twitter.library.api.search.i iVar, List<cm> list, List<cm> list2, List<TwitterUser> list3, List<TwitterTopic> list4) {
        int i = iVar.a;
        cfb.b("DatabaseHelper", "extractSearchResultObjects: type = " + i);
        switch (i) {
            case mx.View_android_theme /*0*/:
            case ControlMessage.CONTROL_PRESENCE /*4*/:
            case mx.TwitterEditText_messageSize /*9*/:
                list.add(iVar.b);
            case WireMessage.WIRE_CHAT /*1*/:
                list3.add(iVar.c);
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                list3.addAll(iVar.g);
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
            case mx.TwitterEditText_messageStyle /*10*/:
            case mx.TwitterEditText_characterCounterColor /*12*/:
                if (iVar.d != null) {
                    list2.addAll(iVar.d);
                }
            case mx.TwitterEditText_maxCharacterCount /*11*/:
                if (iVar.k != null) {
                    list4.addAll(iVar.k);
                    for (TwitterTopic p : iVar.k) {
                        TwitterUser p2 = p.p();
                        if (p2 != null) {
                            list3.add(p2);
                        }
                    }
                }
            default:
        }
    }

    private List<ContentValues> a(long j, int i, com.twitter.library.api.search.i iVar, boolean z) {
        int i2 = iVar.a;
        cfb.b("DatabaseHelper", "insertSearchResult: type = " + i2);
        List arrayList = new ArrayList();
        byte[] a;
        switch (i2) {
            case mx.View_android_theme /*0*/:
            case ControlMessage.CONTROL_PRESENCE /*4*/:
            case mx.TwitterEditText_messageSize /*9*/:
                int i3;
                com.twitter.model.search.p pVar = iVar.b.I;
                if (pVar != null) {
                    if (pVar.c) {
                        i = RtlSpacingHelper.UNDEFINED;
                    }
                    if (pVar.d != null) {
                        a = a(pVar.d, com.twitter.model.search.g.a);
                        i3 = i;
                    } else {
                        a = null;
                        i3 = i;
                    }
                } else {
                    a = null;
                    i3 = i;
                }
                arrayList.add(a(j, i3, i2, 1, iVar.b, a, z));
                break;
            case WireMessage.WIRE_CHAT /*1*/:
                arrayList.add(a(j, i, i2, 2, iVar.c, null, z));
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                arrayList.add(a(j, i, i2, 0, a(iVar.e, com.twitter.model.search.j.a), z));
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                for (Object a2 : iVar.f) {
                    arrayList.add(a(j, i, i2, 0, a(a2, s.i), z));
                }
                break;
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                if (!iVar.g.isEmpty()) {
                    for (TwitterUser twitterUser : iVar.g) {
                        boolean z2 = (twitterUser.R != null && twitterUser.R.e) || twitterUser.B != null;
                        arrayList.add(a(j, i, i2, 2, twitterUser, a(Boolean.valueOf(z2), s.b), z));
                    }
                    break;
                }
                arrayList.add(a(j, i, 8, 0, null, z));
                break;
                break;
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
            case mx.TwitterEditText_messageStyle /*10*/:
                if (iVar.h != null) {
                    a = a(iVar.h, com.twitter.model.search.d.a);
                } else {
                    a = null;
                }
                for (cm a3 : iVar.d) {
                    arrayList.add(a(j, i, i2, 1, a3, a, z));
                }
                break;
            case mx.TwitterEditText_maxCharacterCount /*11*/:
                if (iVar.k != null) {
                    for (TwitterTopic a4 : iVar.k) {
                        arrayList.add(a(j, i, i2, 3, a4, null, z));
                    }
                    break;
                }
                break;
            case mx.TwitterEditText_characterCounterColor /*12*/:
                a = a(iVar.i, com.twitter.model.search.m.a);
                if (!iVar.i.b()) {
                    arrayList.add(a(j, i, i2, 0, a, z));
                    break;
                }
                for (cm a32 : iVar.d) {
                    arrayList.add(a(j, i, i2, 1, a32, a, z));
                }
                break;
        }
        return arrayList;
    }

    public int a(long j, h hVar, long j2, int i, boolean z, boolean z2, e eVar) {
        List a = MutableList.a();
        List a2 = MutableList.a();
        List a3 = MutableList.a();
        List a4 = MutableList.a();
        Iterator it = hVar.a.iterator();
        while (it.hasNext()) {
            a((com.twitter.library.api.search.i) it.next(), a, a2, a3, a4);
        }
        a2.removeAll(a);
        a.addAll(a2);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            if (!a.isEmpty()) {
                a(a, j2, 13, j, false, false, false, null, true, null, true);
            }
            if (!a3.isEmpty()) {
                a((Collection) a3, j2, 3, j, null, null, true, eVar);
            }
            if (hVar.j != null) {
                a4.addAll(hVar.j);
            }
            if (!a4.isEmpty()) {
                a((Collection) a4, null);
            }
            Iterator it2 = hVar.a.iterator();
            int i2 = i;
            int i3 = 0;
            while (it2.hasNext()) {
                int i4 = i3;
                for (ContentValues insert : a(j, i2, (com.twitter.library.api.search.i) it2.next(), z2)) {
                    if (writableDatabase.insert("search_results", null, insert) > 0) {
                        i3 = i4 + 1;
                    } else {
                        i3 = i4;
                    }
                    i4 = i3;
                }
                i2++;
                i3 = i4;
            }
            if (z) {
                a(writableDatabase, j, 400, 100);
            }
            writableDatabase.setTransactionSuccessful();
            if (eVar != null) {
                eVar.a(db.a);
                eVar.a(de.b);
            }
            return i3;
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public int e(long j) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            int delete = writableDatabase.delete("search_results", "search_id=?", new String[]{String.valueOf(j)});
            cfb.b("DatabaseHelper", "Deleted search results: " + delete);
            writableDatabase.setTransactionSuccessful();
            return delete;
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public int c(long j, e eVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("polled", Integer.valueOf(0));
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            int update = writableDatabase.update("search_results", contentValues, "polled=1 AND search_id=?", new String[]{String.valueOf(j)});
            cfb.b("DatabaseHelper", "Marked all polled search results as normal: " + update);
            if (update > 0 && eVar != null) {
                eVar.a(db.a);
            }
            writableDatabase.setTransactionSuccessful();
            return update;
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public int a(Collection<Long> collection, e eVar, int i) {
        ContentValues contentValues = new ContentValues(1);
        contentValues.put("is_read", Integer.valueOf(1));
        int a = a(contentValues, (Collection) collection);
        if (a > 0 && eVar != null) {
            eVar.a(ck.a(i));
        }
        return a;
    }

    private int a(ContentValues contentValues, Collection<Long> collection) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        int i = 1;
        try {
            String[] strArr = new String[1];
            i = 0;
            for (Long longValue : collection) {
                strArr[0] = String.valueOf(longValue.longValue());
                i = writableDatabase.update("timeline", contentValues, "entity_id=?", strArr) + i;
            }
            writableDatabase.setTransactionSuccessful();
            return i;
        } finally {
            writableDatabase.endTransaction();
        }
    }

    private int a(String str, ContentValues contentValues, long[] jArr) {
        int i = 0;
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        if (jArr == null) {
            try {
                i = writableDatabase.update(str, contentValues, null, null);
            } catch (Throwable th) {
                writableDatabase.endTransaction();
            }
        } else {
            String[] strArr = new String[1];
            int length = jArr.length;
            int i2 = 0;
            while (i2 < length) {
                strArr[0] = String.valueOf(jArr[i2]);
                i2++;
                i = writableDatabase.update(str, contentValues, "_id=?", strArr) + i;
            }
        }
        writableDatabase.setTransactionSuccessful();
        writableDatabase.endTransaction();
        return i;
    }

    private static void a(byte[] bArr, byte[] bArr2, ContentValues contentValues, boolean z) {
        int i;
        contentValues.put("data_type", Integer.valueOf(13));
        contentValues.putNull("data_type_group");
        contentValues.putNull("data_type_tag");
        contentValues.put("data_id", Integer.valueOf(0));
        String str = "flags";
        if (z) {
            i = AccessibilityNodeInfoCompat.ACTION_DISMISS;
        } else {
            i = 0;
        }
        contentValues.put(str, Integer.valueOf(i));
        contentValues.put("data", bArr);
        contentValues.put("scribe_content", bArr2);
        contentValues.put("pinned_header_state", Integer.valueOf(0));
    }

    private static void a(byte[] bArr, byte[] bArr2, int i, ContentValues contentValues, boolean z) {
        contentValues.put("data_type", Integer.valueOf(2));
        contentValues.putNull("data_type_group");
        contentValues.putNull("data_type_tag");
        contentValues.put("data_id", Integer.valueOf(0));
        contentValues.put("data", bArr);
        String str = "flags";
        if (z) {
            i |= AccessibilityNodeInfoCompat.ACTION_DISMISS;
        }
        contentValues.put(str, Integer.valueOf(i));
        contentValues.put("scribe_content", bArr2);
    }

    private static void a(cm cmVar, int i, byte[] bArr, int i2, ContentValues contentValues, boolean z) {
        if (z) {
            i2 |= AccessibilityNodeInfoCompat.ACTION_DISMISS;
        }
        contentValues.put("data_type", Integer.valueOf(1));
        contentValues.put("data_type_group", Integer.valueOf(i));
        if (cmVar.w != null) {
            contentValues.put("data_type_tag", Integer.valueOf(cmVar.w.a()));
        } else {
            contentValues.put("data_type_tag", Integer.valueOf(-1));
        }
        contentValues.put("data_id", Long.valueOf(cmVar.bf_()));
        contentValues.put("data", bArr);
        contentValues.put("flags", Integer.valueOf(i2));
    }

    private static void a(TwitterUser twitterUser, int i, byte[] bArr, int i2, ContentValues contentValues, boolean z) {
        if (z) {
            i2 |= AccessibilityNodeInfoCompat.ACTION_DISMISS;
        }
        contentValues.put("data_type", Integer.valueOf(8));
        contentValues.put("data_type_group", Integer.valueOf(i));
        if (twitterUser.B != null) {
            contentValues.put("data_type_tag", Integer.valueOf(twitterUser.B.a()));
        } else {
            contentValues.put("data_type_tag", Integer.valueOf(-1));
        }
        contentValues.put("data_id", Long.valueOf(twitterUser.bf_()));
        contentValues.put("data", bArr);
        contentValues.put("flags", Integer.valueOf(i2));
        contentValues.put("scribe_content", a(twitterUser.T, aj.a));
    }

    private static void a(com.twitter.model.moments.au auVar, aj ajVar, ContentValues contentValues, boolean z) {
        com.twitter.model.moments.ab abVar = auVar.b.b;
        int i = z ? AccessibilityNodeInfoCompat.ACTION_DISMISS : 0;
        contentValues.put("data_type", Integer.valueOf(12));
        contentValues.putNull("data_type_group");
        contentValues.putNull("data_type_tag");
        contentValues.put("data_id", Long.valueOf(abVar.b));
        contentValues.put("data", a((Object) auVar, com.twitter.model.moments.au.a));
        contentValues.put("flags", Integer.valueOf(i));
        contentValues.put("scribe_content", a((Object) ajVar, aj.a));
    }

    private static void a(TwitterTopic twitterTopic, byte[] bArr, int i, ContentValues contentValues, boolean z) {
        if (z) {
            i |= AccessibilityNodeInfoCompat.ACTION_DISMISS;
        }
        contentValues.put("data_type", Integer.valueOf(3));
        contentValues.putNull("data_type_group");
        contentValues.putNull("data_type_tag");
        contentValues.put("data_id", Long.valueOf(twitterTopic.bf_()));
        contentValues.put("data", bArr);
        contentValues.put("flags", Integer.valueOf(i));
        contentValues.put("is_read", Integer.valueOf(twitterTopic.c() ? 1 : 0));
    }

    private static void a(ContentValues contentValues, TwitterTopic twitterTopic, byte[] bArr, int i, boolean z) {
        if (z) {
            i |= AccessibilityNodeInfoCompat.ACTION_DISMISS;
        }
        contentValues.put("data_type", Integer.valueOf(7));
        contentValues.putNull("data_type_group");
        contentValues.putNull("data_type_tag");
        contentValues.put("data_id", Long.valueOf(twitterTopic.bf_()));
        contentValues.put("data", bArr);
        contentValues.put("flags", Integer.valueOf(i));
        contentValues.put("is_read", Integer.valueOf(twitterTopic.c() ? 1 : 0));
    }

    private static void a(com.twitter.model.timeline.s sVar, int i, ContentValues contentValues) {
        contentValues.put("data_type", Integer.valueOf(6));
        contentValues.putNull("data_type_group");
        contentValues.putNull("data_type_tag");
        contentValues.put("data_id", Integer.valueOf(sVar.c));
        if (sVar.h()) {
            i |= GravityCompat.RELATIVE_LAYOUT_DIRECTION;
        }
        contentValues.put("flags", Integer.valueOf(i));
    }

    private static void a(int i, ContentValues contentValues, aj ajVar) {
        contentValues.put("data_type", Integer.valueOf(10));
        contentValues.putNull("data_type_group");
        contentValues.putNull("data_type_tag");
        contentValues.put("data_id", Integer.valueOf(i));
        contentValues.put("scribe_content", a((Object) ajVar, aj.a));
    }

    private static void a(ba baVar, ContentValues contentValues) {
        contentValues.put("data_type", Integer.valueOf(9));
        contentValues.putNull("data_type_group");
        contentValues.putNull("data_type_tag");
        contentValues.put("data_id", Long.valueOf(baVar.c.b));
        contentValues.put("timeline_moment_info", a((Object) baVar, ba.a));
        contentValues.put("flags", Integer.valueOf(32));
    }

    private static void a(cnq cnq, int i, ContentValues contentValues) {
        contentValues.put("data_type", Integer.valueOf(11));
        contentValues.put("data_type_group", Integer.valueOf(i));
        contentValues.put("data", cnq.a);
    }

    private static void a(com.twitter.model.timeline.cn cnVar, ContentValues contentValues) {
        contentValues.put("data_type", Integer.valueOf(14));
        contentValues.putNull("data_type_group");
        contentValues.putNull("data_type_tag");
        contentValues.put("data", a(cnVar.a, aa.a));
        contentValues.putNull("timeline_moment_info");
    }

    private void b(int i, e eVar) {
        Uri a = ck.a(i);
        if (eVar != null && a != null) {
            eVar.a(a);
        }
    }

    private int a(List<cm> list, long j, long j2, boolean z) {
        if (CollectionUtils.b((Collection) list)) {
            return 0;
        }
        if (z) {
            a("timeline", "timeline_tag", cpg.a(j2));
        }
        int size = list.size();
        com.twitter.util.collection.n a = com.twitter.util.collection.n.a(list.size());
        long b = com.twitter.util.m.b();
        for (int i = 0; i < size; i++) {
            cm cmVar = (cm) list.get(i);
            a.c(((by) ((by) ((by) ((by) new by().a(cmVar).b(cmVar.bg_())).a(b - ((long) i))).a(0)).b(cmVar.J)).q());
        }
        return a(null, null, (List) a.q(), j, 5, cpg.a(j2), null, null, false, null);
    }

    public int a(TwitterTopic twitterTopic, TwitterUser twitterUser, List<? extends av> list, long j, int i, String str, String str2, String str3, boolean z, e eVar) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        if (!(twitterTopic == null || twitterUser == null)) {
            try {
                a(com.twitter.util.collection.n.b((Object) twitterUser), j, 27, -1, null, null, true, eVar);
                a(com.twitter.util.collection.n.b((Object) twitterTopic), eVar);
            } catch (Throwable th) {
                writableDatabase.endTransaction();
            }
        }
        int a = a((ch) new cj().a(list).a(j).a(i).a(str).a(z).d(true).a(eVar).c(str2).d(str3).q());
        writableDatabase.setTransactionSuccessful();
        writableDatabase.endTransaction();
        return a;
    }

    public int a(long j, int i, String str, e eVar) {
        String str2 = "owner_id=? AND type=? AND timeline_tag=?";
        String[] strArr = new String[]{String.valueOf(j), String.valueOf(i), str};
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            int delete = writableDatabase.delete("timeline", "owner_id=? AND type=? AND timeline_tag=?", strArr);
            writableDatabase.setTransactionSuccessful();
            if (delete > 0 && eVar != null) {
                eVar.a(ck.a(i));
            }
            return delete;
        } finally {
            writableDatabase.endTransaction();
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int a(com.twitter.library.provider.ch r36) {
        /*
        r35 = this;
        r0 = r36;
        r2 = r0.a;
        if (r2 != 0) goto L_0x0018;
    L_0x0006:
        r0 = r36;
        r2 = r0.b;
        if (r2 != 0) goto L_0x0018;
    L_0x000c:
        r2 = "The response and entities params can not both be null!";
        r2 = new java.lang.IllegalArgumentException;
        r3 = "The response and entities params can not both be null!";
        r2.<init>(r3);
        throw r2;
    L_0x0018:
        r0 = r36;
        r2 = r0.a;
        if (r2 == 0) goto L_0x0030;
    L_0x001e:
        r0 = r36;
        r2 = r0.b;
        if (r2 == 0) goto L_0x0030;
    L_0x0024:
        r2 = "Either the response or entities param must be null!";
        r2 = new java.lang.IllegalArgumentException;
        r3 = "Either the response or entities param must be null!";
        r2.<init>(r3);
        throw r2;
    L_0x0030:
        r26 = new bbl;
        r0 = r36;
        r2 = r0.c;
        r0 = r26;
        r0.<init>(r2);
        r0 = r36;
        r2 = r0.d;
        r6 = com.twitter.model.timeline.cj.a(r2);
        r2 = "tweetGroupType";
        r3 = java.lang.Integer.valueOf(r6);
        r0 = r26;
        r0.a(r2, r3);
        r0 = r36;
        r2 = r0.d;
        r27 = com.twitter.model.timeline.cj.b(r2);
        r0 = r36;
        r2 = r0.a;
        if (r2 == 0) goto L_0x00e0;
    L_0x005d:
        r2 = 1;
        r19 = r2;
    L_0x0060:
        r2 = "isCursoringResponse";
        r3 = java.lang.Boolean.valueOf(r19);
        r0 = r26;
        r0.a(r2, r3);
        if (r19 == 0) goto L_0x00e5;
    L_0x006e:
        r0 = r36;
        r2 = r0.a;
        r2 = r2.a;
        r20 = r2;
    L_0x0076:
        r2 = "timelineEntities.size";
        r3 = r20.size();
        r3 = java.lang.Integer.valueOf(r3);
        r0 = r26;
        r0.a(r2, r3);
        r21 = 0;
        r28 = r35.getWritableDatabase();
        r28.beginTransaction();
        if (r19 == 0) goto L_0x00f0;
    L_0x0091:
        r0 = r36;
        r2 = r0.a;	 Catch:{ SQLException -> 0x0223 }
        r2 = r2.b();	 Catch:{ SQLException -> 0x0223 }
        if (r2 == 0) goto L_0x00f0;
    L_0x009b:
        r3 = r2.a;	 Catch:{ SQLException -> 0x0223 }
        r2 = r2.b;	 Catch:{ SQLException -> 0x0223 }
        r2 = r2.c;	 Catch:{ SQLException -> 0x0223 }
        r4 = 3;
        if (r3 != r4) goto L_0x00f0;
    L_0x00a4:
        if (r2 == 0) goto L_0x00f0;
    L_0x00a6:
        r0 = r36;
        r4 = r0.c;	 Catch:{ SQLException -> 0x0223 }
        r3 = 0;
        r0 = r35;
        r1 = r27;
        r3 = r0.b(r1, r4, r3);	 Catch:{ SQLException -> 0x0223 }
        if (r3 == 0) goto L_0x00f0;
    L_0x00b5:
        r4 = r3.equals(r2);	 Catch:{ SQLException -> 0x0223 }
        if (r4 != 0) goto L_0x00f0;
    L_0x00bb:
        r4 = "getOlderDiscarded";
        r5 = 1;
        r5 = java.lang.Boolean.valueOf(r5);	 Catch:{ SQLException -> 0x0223 }
        r0 = r26;
        r0.a(r4, r5);	 Catch:{ SQLException -> 0x0223 }
        r4 = "downCursor";
        r0 = r26;
        r0.a(r4, r2);	 Catch:{ SQLException -> 0x0223 }
        r2 = "bottom";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0223 }
        r28.setTransactionSuccessful();	 Catch:{ SQLException -> 0x0223 }
        r2 = 0;
        r28.endTransaction();
    L_0x00df:
        return r2;
    L_0x00e0:
        r2 = 0;
        r19 = r2;
        goto L_0x0060;
    L_0x00e5:
        r0 = r36;
        r2 = r0.b;
        r2 = com.twitter.util.collection.n.a(r2);
        r20 = r2;
        goto L_0x0076;
    L_0x00f0:
        r0 = r36;
        r2 = r0.o;	 Catch:{ SQLException -> 0x0223 }
        r2 = r2.i;	 Catch:{ SQLException -> 0x0223 }
        if (r2 == 0) goto L_0x0125;
    L_0x00f8:
        r0 = r36;
        r2 = r0.a;	 Catch:{ SQLException -> 0x0223 }
        if (r2 == 0) goto L_0x0125;
    L_0x00fe:
        r2 = "mergeTimelineStatusesFromAdEntities";
        r3 = "BEGIN";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0223 }
        r0 = r36;
        r3 = r0.a;	 Catch:{ SQLException -> 0x0223 }
        r0 = r36;
        r4 = r0.c;	 Catch:{ SQLException -> 0x0223 }
        r0 = r36;
        r7 = r0.j;	 Catch:{ SQLException -> 0x0223 }
        r2 = r35;
        r2.a(r3, r4, r6, r7);	 Catch:{ SQLException -> 0x0223 }
        r2 = "mergeTimelineStatusesFromAdEntities";
        r3 = "END";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0223 }
    L_0x0125:
        r0 = r36;
        r2 = r0.l;	 Catch:{ SQLException -> 0x0223 }
        if (r2 == 0) goto L_0x0155;
    L_0x012b:
        r2 = "saveMinPos";
        r3 = "BEGIN";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0223 }
        r8 = 8;
        r9 = 3;
        r0 = r36;
        r10 = r0.c;	 Catch:{ SQLException -> 0x0223 }
        r0 = r36;
        r12 = r0.e;	 Catch:{ SQLException -> 0x0223 }
        r0 = r36;
        r13 = r0.l;	 Catch:{ SQLException -> 0x0223 }
        r7 = r35;
        r7.a(r8, r9, r10, r12, r13);	 Catch:{ SQLException -> 0x0223 }
        r2 = "saveMinPos";
        r3 = "END";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0223 }
    L_0x0155:
        r0 = r36;
        r2 = r0.m;	 Catch:{ SQLException -> 0x0223 }
        if (r2 == 0) goto L_0x0185;
    L_0x015b:
        r2 = "saveMaxPos";
        r3 = "BEGIN";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0223 }
        r8 = 8;
        r9 = 2;
        r0 = r36;
        r10 = r0.c;	 Catch:{ SQLException -> 0x0223 }
        r0 = r36;
        r12 = r0.e;	 Catch:{ SQLException -> 0x0223 }
        r0 = r36;
        r13 = r0.m;	 Catch:{ SQLException -> 0x0223 }
        r7 = r35;
        r7.a(r8, r9, r10, r12, r13);	 Catch:{ SQLException -> 0x0223 }
        r2 = "saveMaxPos";
        r3 = "END";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0223 }
    L_0x0185:
        r2 = r20.isEmpty();	 Catch:{ SQLException -> 0x0223 }
        if (r2 == 0) goto L_0x01d5;
    L_0x018b:
        r2 = "timelineEntities.empty";
        r3 = 1;
        r3 = java.lang.Boolean.valueOf(r3);	 Catch:{ SQLException -> 0x0223 }
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0223 }
        r2 = "lastPage";
        r0 = r36;
        r3 = r0.f;	 Catch:{ SQLException -> 0x0223 }
        r3 = java.lang.Boolean.valueOf(r3);	 Catch:{ SQLException -> 0x0223 }
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0223 }
        r0 = r36;
        r2 = r0.f;	 Catch:{ SQLException -> 0x0223 }
        if (r2 == 0) goto L_0x01cc;
    L_0x01ae:
        r0 = r36;
        r2 = r0.c;	 Catch:{ SQLException -> 0x0223 }
        r0 = r36;
        r4 = r0.d;	 Catch:{ SQLException -> 0x0223 }
        r0 = r36;
        r5 = r0.e;	 Catch:{ SQLException -> 0x0223 }
        r0 = r35;
        r0.b(r2, r4, r5);	 Catch:{ SQLException -> 0x0223 }
        r0 = r36;
        r2 = r0.d;	 Catch:{ SQLException -> 0x0223 }
        r0 = r36;
        r3 = r0.k;	 Catch:{ SQLException -> 0x0223 }
        r0 = r35;
        r0.b(r2, r3);	 Catch:{ SQLException -> 0x0223 }
    L_0x01cc:
        r28.setTransactionSuccessful();	 Catch:{ SQLException -> 0x0223 }
        r2 = 0;
        r28.endTransaction();
        goto L_0x00df;
    L_0x01d5:
        r24 = new java.util.LinkedHashMap;	 Catch:{ SQLException -> 0x0223 }
        r24.<init>();	 Catch:{ SQLException -> 0x0223 }
        r3 = new java.util.LinkedHashSet;	 Catch:{ SQLException -> 0x0223 }
        r3.<init>();	 Catch:{ SQLException -> 0x0223 }
        r10 = new java.util.LinkedHashSet;	 Catch:{ SQLException -> 0x0223 }
        r10.<init>();	 Catch:{ SQLException -> 0x0223 }
        r22 = new java.util.LinkedHashSet;	 Catch:{ SQLException -> 0x0223 }
        r22.<init>();	 Catch:{ SQLException -> 0x0223 }
        r23 = new java.util.ArrayList;	 Catch:{ SQLException -> 0x0223 }
        r23.<init>();	 Catch:{ SQLException -> 0x0223 }
        r4 = r20.iterator();	 Catch:{ SQLException -> 0x0223 }
    L_0x01f2:
        r2 = r4.hasNext();	 Catch:{ SQLException -> 0x0223 }
        if (r2 == 0) goto L_0x0235;
    L_0x01f8:
        r2 = r4.next();	 Catch:{ SQLException -> 0x0223 }
        r2 = (com.twitter.model.timeline.av) r2;	 Catch:{ SQLException -> 0x0223 }
        r8 = r2.bf_();	 Catch:{ SQLException -> 0x0223 }
        r5 = java.lang.Long.valueOf(r8);	 Catch:{ SQLException -> 0x0223 }
        r0 = r24;
        r0.put(r5, r2);	 Catch:{ SQLException -> 0x0223 }
        r5 = com.twitter.model.timeline.av.a(r2);	 Catch:{ SQLException -> 0x0223 }
        r3.addAll(r5);	 Catch:{ SQLException -> 0x0223 }
        r5 = com.twitter.model.timeline.av.b(r2);	 Catch:{ SQLException -> 0x0223 }
        r0 = r22;
        r0.addAll(r5);	 Catch:{ SQLException -> 0x0223 }
        r2 = com.twitter.model.timeline.av.c(r2);	 Catch:{ SQLException -> 0x0223 }
        r10.addAll(r2);	 Catch:{ SQLException -> 0x0223 }
        goto L_0x01f2;
    L_0x0223:
        r2 = move-exception;
        r3 = r2;
        r2 = r21;
    L_0x0227:
        r0 = r26;
        r3 = r0.a(r3);	 Catch:{ all -> 0x0399 }
        defpackage.bbn.a(r3);	 Catch:{ all -> 0x0399 }
        r28.endTransaction();
        goto L_0x00df;
    L_0x0235:
        r2 = "tweets.size";
        r4 = r3.size();	 Catch:{ SQLException -> 0x0223 }
        r4 = java.lang.Integer.valueOf(r4);	 Catch:{ SQLException -> 0x0223 }
        r0 = r26;
        r0.a(r2, r4);	 Catch:{ SQLException -> 0x0223 }
        r2 = "topics.size";
        r4 = r10.size();	 Catch:{ SQLException -> 0x0223 }
        r4 = java.lang.Integer.valueOf(r4);	 Catch:{ SQLException -> 0x0223 }
        r0 = r26;
        r0.a(r2, r4);	 Catch:{ SQLException -> 0x0223 }
        r2 = "users.size";
        r4 = r22.size();	 Catch:{ SQLException -> 0x0223 }
        r4 = java.lang.Integer.valueOf(r4);	 Catch:{ SQLException -> 0x0223 }
        r0 = r26;
        r0.a(r2, r4);	 Catch:{ SQLException -> 0x0223 }
        r2 = r3.isEmpty();	 Catch:{ SQLException -> 0x0223 }
        if (r2 != 0) goto L_0x0290;
    L_0x026b:
        r2 = "mergeTimelineStatuses";
        r4 = "BEGIN";
        r0 = r26;
        r0.a(r2, r4);	 Catch:{ SQLException -> 0x0223 }
        r0 = r36;
        r4 = r0.c;	 Catch:{ SQLException -> 0x0223 }
        r7 = -1;
        r0 = r36;
        r9 = r0.j;	 Catch:{ SQLException -> 0x0223 }
        r2 = r35;
        r2.a(r3, r4, r6, r7, r9);	 Catch:{ SQLException -> 0x0223 }
        r2 = "mergeTimelineStatuses";
        r3 = "END";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0223 }
    L_0x0290:
        r2 = r10.isEmpty();	 Catch:{ SQLException -> 0x0223 }
        if (r2 != 0) goto L_0x02b2;
    L_0x0296:
        r2 = "mergeTopics";
        r3 = "BEGIN";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0223 }
        r2 = 0;
        r0 = r35;
        r0.a(r10, r2);	 Catch:{ SQLException -> 0x0223 }
        r2 = "mergeTopics";
        r3 = "END";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0223 }
    L_0x02b2:
        r2 = r22.isEmpty();	 Catch:{ SQLException -> 0x0223 }
        if (r2 != 0) goto L_0x02e7;
    L_0x02b8:
        r2 = "mergeUsers";
        r3 = "BEGIN";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0223 }
        r0 = r36;
        r10 = r0.c;	 Catch:{ SQLException -> 0x0223 }
        r12 = -1;
        r13 = -1;
        r15 = 0;
        r16 = 0;
        r17 = 1;
        r0 = r36;
        r0 = r0.k;	 Catch:{ SQLException -> 0x0223 }
        r18 = r0;
        r8 = r35;
        r9 = r22;
        r8.a(r9, r10, r12, r13, r15, r16, r17, r18);	 Catch:{ SQLException -> 0x0223 }
        r2 = "mergeUsers";
        r3 = "END";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0223 }
    L_0x02e7:
        r0 = r36;
        r2 = r0.d;	 Catch:{ SQLException -> 0x0223 }
        r3 = 6;
        if (r2 == r3) goto L_0x03a1;
    L_0x02ee:
        r2 = "entity_id";
        r0 = r36;
        r2 = r0.e;	 Catch:{ SQLException -> 0x0223 }
        r2 = android.text.TextUtils.isEmpty(r2);	 Catch:{ SQLException -> 0x0223 }
        if (r2 != 0) goto L_0x0353;
    L_0x02fb:
        r11 = "owner_id=? AND type=? AND timeline_tag=?";
    L_0x02fe:
        r8 = "timeline";
        r2 = 2;
        r9 = new java.lang.String[r2];	 Catch:{ SQLException -> 0x0223 }
        r2 = 0;
        r3 = "entity_id";
        r9[r2] = r3;	 Catch:{ SQLException -> 0x0223 }
        r2 = 1;
        r3 = "data_type_tag";
        r9[r2] = r3;	 Catch:{ SQLException -> 0x0223 }
        r10 = "entity_id";
        r2 = 3;
        r12 = new java.lang.String[r2];	 Catch:{ SQLException -> 0x0223 }
        r2 = 0;
        r0 = r36;
        r4 = r0.c;	 Catch:{ SQLException -> 0x0223 }
        r3 = java.lang.String.valueOf(r4);	 Catch:{ SQLException -> 0x0223 }
        r12[r2] = r3;	 Catch:{ SQLException -> 0x0223 }
        r2 = 1;
        r0 = r36;
        r3 = r0.d;	 Catch:{ SQLException -> 0x0223 }
        r3 = java.lang.String.valueOf(r3);	 Catch:{ SQLException -> 0x0223 }
        r12[r2] = r3;	 Catch:{ SQLException -> 0x0223 }
        r2 = 2;
        r0 = r36;
        r3 = r0.e;	 Catch:{ SQLException -> 0x0223 }
        r12[r2] = r3;	 Catch:{ SQLException -> 0x0223 }
        r14 = 0;
        r15 = 0;
        r7 = r28;
        r13 = r20;
        r3 = a(r7, r8, r9, r10, r11, r12, r13, r14, r15);	 Catch:{ SQLException -> 0x0223 }
        if (r3 != 0) goto L_0x0357;
    L_0x033f:
        r2 = "dedupCursor";
        r3 = "null";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0223 }
        r28.setTransactionSuccessful();	 Catch:{ SQLException -> 0x0223 }
        r2 = 0;
        r28.endTransaction();
        goto L_0x00df;
    L_0x0353:
        r11 = "owner_id=? AND type=?";
        goto L_0x02fe;
    L_0x0357:
        r2 = r3.moveToNext();	 Catch:{ all -> 0x0394 }
        if (r2 == 0) goto L_0x039e;
    L_0x035d:
        r2 = 0;
        r4 = r3.getLong(r2);	 Catch:{ all -> 0x0394 }
        r2 = java.lang.Long.valueOf(r4);	 Catch:{ all -> 0x0394 }
        r0 = r24;
        r2 = r0.get(r2);	 Catch:{ all -> 0x0394 }
        r2 = (com.twitter.model.timeline.av) r2;	 Catch:{ all -> 0x0394 }
        if (r2 == 0) goto L_0x0357;
    L_0x0370:
        r2 = com.twitter.model.timeline.av.d(r2);	 Catch:{ all -> 0x0394 }
        if (r2 == 0) goto L_0x0384;
    L_0x0376:
        r2 = r2.hashCode();	 Catch:{ all -> 0x0394 }
        r8 = (long) r2;	 Catch:{ all -> 0x0394 }
        r2 = 1;
        r10 = r3.getLong(r2);	 Catch:{ all -> 0x0394 }
        r2 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1));
        if (r2 != 0) goto L_0x0357;
    L_0x0384:
        r2 = java.lang.Long.valueOf(r4);	 Catch:{ all -> 0x0394 }
        r0 = r24;
        r2 = r0.remove(r2);	 Catch:{ all -> 0x0394 }
        r0 = r23;
        r0.add(r2);	 Catch:{ all -> 0x0394 }
        goto L_0x0357;
    L_0x0394:
        r2 = move-exception;
        r3.close();	 Catch:{ SQLException -> 0x0223 }
        throw r2;	 Catch:{ SQLException -> 0x0223 }
    L_0x0399:
        r2 = move-exception;
        r28.endTransaction();
        throw r2;
    L_0x039e:
        r3.close();	 Catch:{ SQLException -> 0x0223 }
    L_0x03a1:
        r2 = "dedupedTimelineEntities.size";
        r3 = r23.size();	 Catch:{ SQLException -> 0x0223 }
        r3 = java.lang.Integer.valueOf(r3);	 Catch:{ SQLException -> 0x0223 }
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0223 }
        r2 = "timelineEntitiesMap.size";
        r3 = r24.size();	 Catch:{ SQLException -> 0x0223 }
        r3 = java.lang.Integer.valueOf(r3);	 Catch:{ SQLException -> 0x0223 }
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0223 }
        r2 = r23.isEmpty();	 Catch:{ SQLException -> 0x0223 }
        if (r2 != 0) goto L_0x03f6;
    L_0x03c7:
        if (r19 == 0) goto L_0x0446;
    L_0x03c9:
        r0 = r36;
        r2 = r0.a;	 Catch:{ SQLException -> 0x0223 }
        r12 = r2.a();	 Catch:{ SQLException -> 0x0223 }
    L_0x03d1:
        r2 = "updateTimelineEntities";
        r3 = "BEGIN";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0223 }
        r0 = r36;
        r8 = r0.c;	 Catch:{ SQLException -> 0x0223 }
        r0 = r36;
        r10 = r0.d;	 Catch:{ SQLException -> 0x0223 }
        r7 = r28;
        r11 = r23;
        a(r7, r8, r10, r11, r12);	 Catch:{ SQLException -> 0x0223 }
        r2 = "updateTimelineEntities";
        r3 = "END";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0223 }
    L_0x03f6:
        r2 = r24.isEmpty();	 Catch:{ SQLException -> 0x0223 }
        if (r2 == 0) goto L_0x0452;
    L_0x03fc:
        r2 = "timelineEntitiesMap.empty";
        r3 = 1;
        r3 = java.lang.Boolean.valueOf(r3);	 Catch:{ SQLException -> 0x0223 }
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0223 }
        r2 = "lastPage";
        r0 = r36;
        r3 = r0.f;	 Catch:{ SQLException -> 0x0223 }
        r3 = java.lang.Boolean.valueOf(r3);	 Catch:{ SQLException -> 0x0223 }
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0223 }
        r0 = r36;
        r2 = r0.f;	 Catch:{ SQLException -> 0x0223 }
        if (r2 == 0) goto L_0x043d;
    L_0x041f:
        r0 = r36;
        r2 = r0.c;	 Catch:{ SQLException -> 0x0223 }
        r0 = r36;
        r4 = r0.d;	 Catch:{ SQLException -> 0x0223 }
        r0 = r36;
        r5 = r0.e;	 Catch:{ SQLException -> 0x0223 }
        r0 = r35;
        r0.b(r2, r4, r5);	 Catch:{ SQLException -> 0x0223 }
        r0 = r36;
        r2 = r0.d;	 Catch:{ SQLException -> 0x0223 }
        r0 = r36;
        r3 = r0.k;	 Catch:{ SQLException -> 0x0223 }
        r0 = r35;
        r0.b(r2, r3);	 Catch:{ SQLException -> 0x0223 }
    L_0x043d:
        r28.setTransactionSuccessful();	 Catch:{ SQLException -> 0x0223 }
        r2 = 0;
        r28.endTransaction();
        goto L_0x00df;
    L_0x0446:
        r2 = 0;
        r0 = r20;
        r2 = r0.get(r2);	 Catch:{ SQLException -> 0x0223 }
        r2 = (com.twitter.model.timeline.av) r2;	 Catch:{ SQLException -> 0x0223 }
        r12 = r2.l;	 Catch:{ SQLException -> 0x0223 }
        goto L_0x03d1;
    L_0x0452:
        r0 = r36;
        r2 = r0.c;	 Catch:{ SQLException -> 0x0223 }
        r0 = r36;
        r4 = r0.d;	 Catch:{ SQLException -> 0x0223 }
        r0 = r35;
        r2 = r0.l(r2, r4);	 Catch:{ SQLException -> 0x0223 }
        r4 = 1;
        r22 = r2 + r4;
        r3 = new java.util.ArrayList;	 Catch:{ SQLException -> 0x0223 }
        r3.<init>();	 Catch:{ SQLException -> 0x0223 }
        r18 = new java.util.HashSet;	 Catch:{ SQLException -> 0x0223 }
        r18.<init>();	 Catch:{ SQLException -> 0x0223 }
        r2 = r24.values();	 Catch:{ SQLException -> 0x0223 }
        r4 = r2.iterator();	 Catch:{ SQLException -> 0x0223 }
    L_0x0476:
        r2 = r4.hasNext();	 Catch:{ SQLException -> 0x0223 }
        if (r2 == 0) goto L_0x04af;
    L_0x047c:
        r2 = r4.next();	 Catch:{ SQLException -> 0x0223 }
        r2 = (com.twitter.model.timeline.av) r2;	 Catch:{ SQLException -> 0x0223 }
        r3.add(r2);	 Catch:{ SQLException -> 0x0223 }
        r5 = r2 instanceof com.twitter.model.timeline.aq;	 Catch:{ SQLException -> 0x0223 }
        if (r5 == 0) goto L_0x0476;
    L_0x0489:
        r2 = com.twitter.util.object.ObjectUtils.a(r2);	 Catch:{ SQLException -> 0x0223 }
        r2 = (com.twitter.model.timeline.aq) r2;	 Catch:{ SQLException -> 0x0223 }
        r2 = r2.c();	 Catch:{ SQLException -> 0x0223 }
        r5 = r2.iterator();	 Catch:{ SQLException -> 0x0223 }
    L_0x0497:
        r2 = r5.hasNext();	 Catch:{ SQLException -> 0x0223 }
        if (r2 == 0) goto L_0x0476;
    L_0x049d:
        r2 = r5.next();	 Catch:{ SQLException -> 0x0223 }
        r2 = (com.twitter.model.core.cm) r2;	 Catch:{ SQLException -> 0x0223 }
        r8 = r2.b;	 Catch:{ SQLException -> 0x0223 }
        r2 = java.lang.Long.valueOf(r8);	 Catch:{ SQLException -> 0x0223 }
        r0 = r18;
        r0.add(r2);	 Catch:{ SQLException -> 0x0223 }
        goto L_0x0497;
    L_0x04af:
        r2 = r18.isEmpty();	 Catch:{ SQLException -> 0x0223 }
        if (r2 != 0) goto L_0x070b;
    L_0x04b5:
        r2 = "conversationTweetIds.size";
        r4 = r18.size();	 Catch:{ SQLException -> 0x0223 }
        r4 = java.lang.Integer.valueOf(r4);	 Catch:{ SQLException -> 0x0223 }
        r0 = r26;
        r0.a(r2, r4);	 Catch:{ SQLException -> 0x0223 }
        r2 = new java.util.HashMap;	 Catch:{ SQLException -> 0x0223 }
        r2.<init>();	 Catch:{ SQLException -> 0x0223 }
        r4 = "owner_id=? AND type=? AND data_type=1 AND (flags&4=4 OR flags&8=8)";
        r4 = 2;
        r11 = new java.lang.String[r4];	 Catch:{ SQLException -> 0x0223 }
        r4 = 0;
        r0 = r36;
        r8 = r0.c;	 Catch:{ SQLException -> 0x0223 }
        r5 = java.lang.String.valueOf(r8);	 Catch:{ SQLException -> 0x0223 }
        r11[r4] = r5;	 Catch:{ SQLException -> 0x0223 }
        r4 = 1;
        r0 = r36;
        r5 = r0.d;	 Catch:{ SQLException -> 0x0223 }
        r5 = java.lang.String.valueOf(r5);	 Catch:{ SQLException -> 0x0223 }
        r11[r4] = r5;	 Catch:{ SQLException -> 0x0223 }
        r8 = "timeline";
        r4 = 2;
        r9 = new java.lang.String[r4];	 Catch:{ SQLException -> 0x0223 }
        r4 = 0;
        r5 = "data_id";
        r9[r4] = r5;	 Catch:{ SQLException -> 0x0223 }
        r4 = 1;
        r5 = "flags";
        r9[r4] = r5;	 Catch:{ SQLException -> 0x0223 }
        r10 = "owner_id=? AND type=? AND data_type=1 AND (flags&4=4 OR flags&8=8)";
        r12 = 0;
        r13 = 0;
        r14 = 0;
        r7 = r28;
        r4 = r7.query(r8, r9, r10, r11, r12, r13, r14);	 Catch:{ SQLException -> 0x0223 }
        if (r4 == 0) goto L_0x052a;
    L_0x0506:
        r5 = r4.moveToNext();	 Catch:{ all -> 0x0522 }
        if (r5 == 0) goto L_0x0527;
    L_0x050c:
        r5 = 0;
        r8 = r4.getLong(r5);	 Catch:{ all -> 0x0522 }
        r5 = java.lang.Long.valueOf(r8);	 Catch:{ all -> 0x0522 }
        r7 = 1;
        r7 = r4.getInt(r7);	 Catch:{ all -> 0x0522 }
        r7 = java.lang.Integer.valueOf(r7);	 Catch:{ all -> 0x0522 }
        r2.put(r5, r7);	 Catch:{ all -> 0x0522 }
        goto L_0x0506;
    L_0x0522:
        r2 = move-exception;
        r4.close();	 Catch:{ SQLException -> 0x0223 }
        throw r2;	 Catch:{ SQLException -> 0x0223 }
    L_0x0527:
        r4.close();	 Catch:{ SQLException -> 0x0223 }
    L_0x052a:
        r4 = "deleteStaleTimelineEntities";
        r5 = "BEGIN";
        r0 = r26;
        r0.a(r4, r5);	 Catch:{ SQLException -> 0x0223 }
        r0 = r36;
        r10 = r0.c;	 Catch:{ SQLException -> 0x0223 }
        r0 = r36;
        r12 = r0.d;	 Catch:{ SQLException -> 0x0223 }
        r8 = r35;
        r9 = r28;
        r13 = r18;
        r8.a(r9, r10, r12, r13);	 Catch:{ SQLException -> 0x0223 }
        r4 = "deleteStaleTimelineEntities";
        r5 = "END";
        r0 = r26;
        r0.a(r4, r5);	 Catch:{ SQLException -> 0x0223 }
        r3 = a(r3, r2);	 Catch:{ SQLException -> 0x0223 }
        r2 = r3.first;	 Catch:{ SQLException -> 0x0223 }
        r0 = r2;
        r0 = (java.util.List) r0;	 Catch:{ SQLException -> 0x0223 }
        r10 = r0;
        r3 = r3.second;	 Catch:{ SQLException -> 0x0223 }
        r3 = (java.util.Set) r3;	 Catch:{ SQLException -> 0x0223 }
        r2 = "statusesToUpdate.size";
        r4 = r3.size();	 Catch:{ SQLException -> 0x0223 }
        r4 = java.lang.Integer.valueOf(r4);	 Catch:{ SQLException -> 0x0223 }
        r0 = r26;
        r0.a(r2, r4);	 Catch:{ SQLException -> 0x0223 }
        r2 = r3.isEmpty();	 Catch:{ SQLException -> 0x0223 }
        if (r2 != 0) goto L_0x059a;
    L_0x0575:
        r2 = "mergeTimelineStatuses";
        r4 = "BEGIN";
        r0 = r26;
        r0.a(r2, r4);	 Catch:{ SQLException -> 0x0223 }
        r0 = r36;
        r4 = r0.c;	 Catch:{ SQLException -> 0x0223 }
        r7 = -1;
        r0 = r36;
        r9 = r0.j;	 Catch:{ SQLException -> 0x0223 }
        r2 = r35;
        r2.a(r3, r4, r6, r7, r9);	 Catch:{ SQLException -> 0x0223 }
        r2 = "mergeTimelineStatuses";
        r3 = "END";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0223 }
    L_0x059a:
        if (r19 == 0) goto L_0x070e;
    L_0x059c:
        r0 = r36;
        r2 = r0.a;	 Catch:{ SQLException -> 0x0223 }
        r24 = r2.a();	 Catch:{ SQLException -> 0x0223 }
    L_0x05a4:
        r0 = r36;
        r2 = r0.c;	 Catch:{ SQLException -> 0x0223 }
        r0 = r36;
        r4 = r0.d;	 Catch:{ SQLException -> 0x0223 }
        r0 = r35;
        r30 = r0.i(r2, r4);	 Catch:{ SQLException -> 0x0223 }
        r9 = new android.content.ContentValues;	 Catch:{ SQLException -> 0x0223 }
        r9.<init>();	 Catch:{ SQLException -> 0x0223 }
        r2 = "timelineEntitiesToMerge.size";
        r3 = r10.size();	 Catch:{ SQLException -> 0x0223 }
        r3 = java.lang.Integer.valueOf(r3);	 Catch:{ SQLException -> 0x0223 }
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0223 }
        r29 = r10.iterator();	 Catch:{ SQLException -> 0x0223 }
        r17 = r21;
    L_0x05cd:
        r2 = r29.hasNext();	 Catch:{ SQLException -> 0x0877 }
        if (r2 == 0) goto L_0x0d05;
    L_0x05d3:
        r2 = r29.next();	 Catch:{ SQLException -> 0x0877 }
        r2 = (com.twitter.model.timeline.av) r2;	 Catch:{ SQLException -> 0x0877 }
        r9.clear();	 Catch:{ SQLException -> 0x0877 }
        r3 = "owner_id";
        r0 = r36;
        r4 = r0.c;	 Catch:{ SQLException -> 0x0877 }
        r4 = java.lang.Long.valueOf(r4);	 Catch:{ SQLException -> 0x0877 }
        r9.put(r3, r4);	 Catch:{ SQLException -> 0x0877 }
        r3 = "type";
        r0 = r36;
        r4 = r0.d;	 Catch:{ SQLException -> 0x0877 }
        r4 = java.lang.Integer.valueOf(r4);	 Catch:{ SQLException -> 0x0877 }
        r9.put(r3, r4);	 Catch:{ SQLException -> 0x0877 }
        r3 = "is_read";
        r4 = 0;
        r4 = java.lang.Integer.valueOf(r4);	 Catch:{ SQLException -> 0x0877 }
        r9.put(r3, r4);	 Catch:{ SQLException -> 0x0877 }
        r3 = "timeline_tag";
        r0 = r36;
        r4 = r0.e;	 Catch:{ SQLException -> 0x0877 }
        r9.put(r3, r4);	 Catch:{ SQLException -> 0x0877 }
        r3 = "entity_id";
        r4 = r2.bf_();	 Catch:{ SQLException -> 0x0877 }
        r4 = java.lang.Long.valueOf(r4);	 Catch:{ SQLException -> 0x0877 }
        r9.put(r3, r4);	 Catch:{ SQLException -> 0x0877 }
        r3 = "entity_type";
        r4 = r2.c;	 Catch:{ SQLException -> 0x0877 }
        r4 = java.lang.Integer.valueOf(r4);	 Catch:{ SQLException -> 0x0877 }
        r9.put(r3, r4);	 Catch:{ SQLException -> 0x0877 }
        r3 = "scribe_content";
        r4 = r2.g;	 Catch:{ SQLException -> 0x0877 }
        r5 = com.twitter.model.timeline.aj.a;	 Catch:{ SQLException -> 0x0877 }
        r4 = com.twitter.util.serialization.m.a(r4, r5);	 Catch:{ SQLException -> 0x0877 }
        r9.put(r3, r4);	 Catch:{ SQLException -> 0x0877 }
        if (r19 != 0) goto L_0x063f;
    L_0x0637:
        r4 = r2.l;	 Catch:{ SQLException -> 0x0877 }
        r10 = 0;
        r3 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1));
        if (r3 > 0) goto L_0x071e;
    L_0x063f:
        r4 = r24;
    L_0x0641:
        r3 = "timeline_group_id";
        r4 = java.lang.Long.valueOf(r4);	 Catch:{ SQLException -> 0x0877 }
        r9.put(r3, r4);	 Catch:{ SQLException -> 0x0877 }
        r3 = "timeline_scribe_group_id";
        r4 = r2.m;	 Catch:{ SQLException -> 0x0877 }
        r4 = java.lang.Long.valueOf(r4);	 Catch:{ SQLException -> 0x0877 }
        r9.put(r3, r4);	 Catch:{ SQLException -> 0x0877 }
        r0 = r36;
        r3 = r0.d;	 Catch:{ SQLException -> 0x0877 }
        if (r3 == 0) goto L_0x0664;
    L_0x065d:
        r0 = r36;
        r3 = r0.d;	 Catch:{ SQLException -> 0x0877 }
        r4 = 1;
        if (r3 != r4) goto L_0x0722;
    L_0x0664:
        r4 = r2.e;	 Catch:{ SQLException -> 0x0877 }
        r10 = 0;
        r3 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1));
        if (r3 > 0) goto L_0x0722;
    L_0x066c:
        r0 = r36;
        r4 = r0.c;	 Catch:{ SQLException -> 0x0877 }
        r0 = r36;
        r3 = r0.d;	 Catch:{ SQLException -> 0x0877 }
        r0 = r35;
        r4 = r0.j(r4, r3);	 Catch:{ SQLException -> 0x0877 }
    L_0x067a:
        r3 = "sort_index";
        r4 = java.lang.Long.valueOf(r4);	 Catch:{ SQLException -> 0x0877 }
        r9.put(r3, r4);	 Catch:{ SQLException -> 0x0877 }
        r4 = -1;
        r10 = r2.n;	 Catch:{ SQLException -> 0x0877 }
        r3 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1));
        if (r3 == 0) goto L_0x0726;
    L_0x068c:
        r4 = r2.n;	 Catch:{ SQLException -> 0x0877 }
    L_0x068e:
        r3 = "updated_at";
        r4 = java.lang.Long.valueOf(r4);	 Catch:{ SQLException -> 0x0877 }
        r9.put(r3, r4);	 Catch:{ SQLException -> 0x0877 }
        a(r2, r9);	 Catch:{ SQLException -> 0x0877 }
        r3 = r2 instanceof com.twitter.model.timeline.bw;	 Catch:{ SQLException -> 0x0877 }
        if (r3 == 0) goto L_0x0735;
    L_0x069f:
        r3 = r2.e();	 Catch:{ SQLException -> 0x0877 }
        if (r3 == 0) goto L_0x072a;
    L_0x06a5:
        r8 = 65536; // 0x10000 float:9.18355E-41 double:3.2379E-319;
    L_0x06a7:
        r3 = r2.f();	 Catch:{ SQLException -> 0x0877 }
        if (r3 == 0) goto L_0x06b0;
    L_0x06ad:
        r3 = 67108864; // 0x4000000 float:1.5046328E-36 double:3.31561842E-316;
        r8 = r8 | r3;
    L_0x06b0:
        r3 = r2.g();	 Catch:{ SQLException -> 0x0877 }
        if (r3 == 0) goto L_0x06b8;
    L_0x06b6:
        r8 = r8 | 256;
    L_0x06b8:
        r3 = r2.d;	 Catch:{ SQLException -> 0x0877 }
        switch(r3) {
            case 1: goto L_0x072d;
            case 2: goto L_0x0731;
            default: goto L_0x06bd;
        };	 Catch:{ SQLException -> 0x0877 }
    L_0x06bd:
        r3 = r2.g();	 Catch:{ SQLException -> 0x0877 }
        if (r3 == 0) goto L_0x06cb;
    L_0x06c3:
        r0 = r36;
        r3 = r0.o;	 Catch:{ SQLException -> 0x0877 }
        r3 = r3.f;	 Catch:{ SQLException -> 0x0877 }
        if (r3 == 0) goto L_0x1031;
    L_0x06cb:
        r3 = com.twitter.util.object.ObjectUtils.a(r2);	 Catch:{ SQLException -> 0x0877 }
        r3 = (com.twitter.model.timeline.bw) r3;	 Catch:{ SQLException -> 0x0877 }
        r5 = r3.a;	 Catch:{ SQLException -> 0x0877 }
        r3 = "timeline_moment_info";
        r4 = r2.h;	 Catch:{ SQLException -> 0x0877 }
        r7 = com.twitter.model.moments.ba.a;	 Catch:{ SQLException -> 0x0877 }
        r4 = a(r4, r7);	 Catch:{ SQLException -> 0x0877 }
        r9.put(r3, r4);	 Catch:{ SQLException -> 0x0877 }
        r7 = 0;
        r0 = r36;
        r10 = r0.n;	 Catch:{ SQLException -> 0x0877 }
        a(r5, r6, r7, r8, r9, r10);	 Catch:{ SQLException -> 0x0877 }
        r3 = "timeline";
        r4 = 0;
        r0 = r28;
        r4 = r0.insert(r3, r4, r9);	 Catch:{ SQLException -> 0x0877 }
        r10 = 0;
        r3 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1));
        if (r3 <= 0) goto L_0x1031;
    L_0x06f9:
        r3 = r17 + 1;
        r7 = r2.i;	 Catch:{ SQLException -> 0x1012 }
        if (r7 == 0) goto L_0x0706;
    L_0x06ff:
        r2 = r2.i;	 Catch:{ SQLException -> 0x1012 }
        r0 = r28;
        a(r0, r4, r2);	 Catch:{ SQLException -> 0x1012 }
    L_0x0706:
        r2 = r3;
    L_0x0707:
        r17 = r2;
        goto L_0x05cd;
    L_0x070b:
        r10 = r3;
        goto L_0x059a;
    L_0x070e:
        r0 = r36;
        r2 = r0.c;	 Catch:{ SQLException -> 0x0223 }
        r0 = r36;
        r4 = r0.d;	 Catch:{ SQLException -> 0x0223 }
        r0 = r35;
        r24 = r0.i(r2, r4);	 Catch:{ SQLException -> 0x0223 }
        goto L_0x05a4;
    L_0x071e:
        r4 = r2.l;	 Catch:{ SQLException -> 0x0877 }
        goto L_0x0641;
    L_0x0722:
        r4 = r2.e;	 Catch:{ SQLException -> 0x0877 }
        goto L_0x067a;
    L_0x0726:
        r4 = r22;
        goto L_0x068e;
    L_0x072a:
        r8 = 1;
        goto L_0x06a7;
    L_0x072d:
        r3 = 262144; // 0x40000 float:3.67342E-40 double:1.295163E-318;
        r8 = r8 | r3;
        goto L_0x06bd;
    L_0x0731:
        r3 = 524288; // 0x80000 float:7.34684E-40 double:2.590327E-318;
        r8 = r8 | r3;
        goto L_0x06bd;
    L_0x0735:
        r3 = r2 instanceof com.twitter.model.timeline.aq;	 Catch:{ SQLException -> 0x0877 }
        if (r3 == 0) goto L_0x07ae;
    L_0x0739:
        r2 = com.twitter.util.object.ObjectUtils.a(r2);	 Catch:{ SQLException -> 0x0877 }
        r2 = (com.twitter.model.timeline.aq) r2;	 Catch:{ SQLException -> 0x0877 }
        r4 = r2.a;	 Catch:{ SQLException -> 0x0877 }
        r2 = r4.b;	 Catch:{ SQLException -> 0x0877 }
        r11 = r2.length;	 Catch:{ SQLException -> 0x0877 }
        r12 = r11 + -1;
        r13 = r4.b();	 Catch:{ SQLException -> 0x0877 }
        r2 = 0;
        r3 = r2;
    L_0x074c:
        if (r3 >= r11) goto L_0x05cd;
    L_0x074e:
        r2 = 1;
        if (r3 != r2) goto L_0x102d;
    L_0x0751:
        if (r13 == 0) goto L_0x102d;
    L_0x0753:
        r2 = r4.a;	 Catch:{ SQLException -> 0x0877 }
        r5 = com.twitter.model.timeline.e.a;	 Catch:{ SQLException -> 0x0877 }
        r2 = a(r2, r5);	 Catch:{ SQLException -> 0x0877 }
        r5 = 0;
        r7 = 2;
        r0 = r36;
        r8 = r0.n;	 Catch:{ SQLException -> 0x0877 }
        a(r2, r5, r7, r9, r8);	 Catch:{ SQLException -> 0x0877 }
        r2 = "timeline";
        r5 = 0;
        r0 = r28;
        r14 = r0.insert(r2, r5, r9);	 Catch:{ SQLException -> 0x0877 }
        r32 = 0;
        r2 = (r14 > r32 ? 1 : (r14 == r32 ? 0 : -1));
        if (r2 <= 0) goto L_0x102d;
    L_0x0774:
        r17 = r17 + 1;
        r2 = r17;
    L_0x0778:
        if (r3 != r12) goto L_0x07ac;
    L_0x077a:
        r8 = 8;
    L_0x077c:
        r5 = r4.b;	 Catch:{ SQLException -> 0x101a }
        r5 = r5[r3];	 Catch:{ SQLException -> 0x101a }
        r7 = 0;
        r0 = r36;
        r10 = r0.n;	 Catch:{ SQLException -> 0x101a }
        a(r5, r6, r7, r8, r9, r10);	 Catch:{ SQLException -> 0x101a }
        r7 = "timeline";
        r8 = 0;
        r0 = r28;
        r14 = r0.insert(r7, r8, r9);	 Catch:{ SQLException -> 0x101a }
        r16 = 0;
        r7 = (r14 > r16 ? 1 : (r14 == r16 ? 0 : -1));
        if (r7 <= 0) goto L_0x07a7;
    L_0x0798:
        r2 = r2 + 1;
        r14 = r5.bf_();	 Catch:{ SQLException -> 0x101a }
        r5 = java.lang.Long.valueOf(r14);	 Catch:{ SQLException -> 0x101a }
        r0 = r18;
        r0.add(r5);	 Catch:{ SQLException -> 0x101a }
    L_0x07a7:
        r3 = r3 + 1;
        r17 = r2;
        goto L_0x074c;
    L_0x07ac:
        r8 = 4;
        goto L_0x077c;
    L_0x07ae:
        r3 = r2 instanceof com.twitter.model.timeline.cc;	 Catch:{ SQLException -> 0x0877 }
        if (r3 == 0) goto L_0x08c4;
    L_0x07b2:
        r3 = com.twitter.util.object.ObjectUtils.a(r2);	 Catch:{ SQLException -> 0x0877 }
        r3 = (com.twitter.model.timeline.cc) r3;	 Catch:{ SQLException -> 0x0877 }
        r4 = r3.a;	 Catch:{ SQLException -> 0x0877 }
        r0 = r36;
        r3 = r0.d;	 Catch:{ SQLException -> 0x0877 }
        r5 = 6;
        if (r3 != r5) goto L_0x085a;
    L_0x07c1:
        r3 = r4.d();	 Catch:{ SQLException -> 0x0877 }
        r5 = com.twitter.model.topic.l.a;	 Catch:{ SQLException -> 0x0877 }
        r3 = a(r3, r5);	 Catch:{ SQLException -> 0x0877 }
        r5 = 64;
        r0 = r36;
        r7 = r0.n;	 Catch:{ SQLException -> 0x0877 }
        a(r9, r4, r3, r5, r7);	 Catch:{ SQLException -> 0x0877 }
    L_0x07d4:
        r3 = "timeline";
        r5 = 0;
        r0 = r28;
        r10 = r0.insert(r3, r5, r9);	 Catch:{ SQLException -> 0x0877 }
        r12 = 0;
        r3 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1));
        if (r3 <= 0) goto L_0x07e6;
    L_0x07e4:
        r17 = r17 + 1;
    L_0x07e6:
        r3 = 1;
        r0 = r36;
        r5 = r0.d;	 Catch:{ SQLException -> 0x0877 }
        r7 = 6;
        if (r5 != r7) goto L_0x07fb;
    L_0x07ee:
        r3 = r4.d();	 Catch:{ SQLException -> 0x0877 }
        r3 = r3.b;	 Catch:{ SQLException -> 0x0877 }
        r5 = 1;
        if (r3 == r5) goto L_0x087d;
    L_0x07f7:
        r5 = 3;
        if (r3 == r5) goto L_0x087d;
    L_0x07fa:
        r3 = 1;
    L_0x07fb:
        if (r3 == 0) goto L_0x0821;
    L_0x07fd:
        r3 = r4.d();	 Catch:{ SQLException -> 0x0877 }
        r3 = r3.b;	 Catch:{ SQLException -> 0x0877 }
        switch(r3) {
            case 2: goto L_0x0880;
            default: goto L_0x0806;
        };	 Catch:{ SQLException -> 0x0877 }
    L_0x0806:
        r3 = 0;
    L_0x0807:
        r5 = 0;
        r0 = r36;
        r7 = r0.n;	 Catch:{ SQLException -> 0x0877 }
        a(r4, r5, r3, r9, r7);	 Catch:{ SQLException -> 0x0877 }
        r3 = "timeline";
        r5 = 0;
        r0 = r28;
        r10 = r0.insert(r3, r5, r9);	 Catch:{ SQLException -> 0x0877 }
        r12 = 0;
        r3 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1));
        if (r3 <= 0) goto L_0x0821;
    L_0x081f:
        r17 = r17 + 1;
    L_0x0821:
        r3 = r4.r();	 Catch:{ SQLException -> 0x0877 }
        if (r3 == 0) goto L_0x0884;
    L_0x0827:
        r3 = r4.r();	 Catch:{ SQLException -> 0x0877 }
        r11 = r3.iterator();	 Catch:{ SQLException -> 0x0877 }
        r3 = r17;
    L_0x0831:
        r5 = r11.hasNext();	 Catch:{ SQLException -> 0x1012 }
        if (r5 == 0) goto L_0x0886;
    L_0x0837:
        r5 = r11.next();	 Catch:{ SQLException -> 0x1012 }
        r5 = (com.twitter.model.core.cm) r5;	 Catch:{ SQLException -> 0x1012 }
        r7 = 0;
        r8 = 2048; // 0x800 float:2.87E-42 double:1.0118E-320;
        r0 = r36;
        r10 = r0.n;	 Catch:{ SQLException -> 0x1012 }
        a(r5, r6, r7, r8, r9, r10);	 Catch:{ SQLException -> 0x1012 }
        r5 = "timeline";
        r7 = 0;
        r0 = r28;
        r12 = r0.insert(r5, r7, r9);	 Catch:{ SQLException -> 0x1012 }
        r14 = 0;
        r5 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1));
        if (r5 <= 0) goto L_0x0831;
    L_0x0857:
        r3 = r3 + 1;
        goto L_0x0831;
    L_0x085a:
        r3 = r4.d();	 Catch:{ SQLException -> 0x0877 }
        r5 = com.twitter.model.topic.l.a;	 Catch:{ SQLException -> 0x0877 }
        r3 = a(r3, r5);	 Catch:{ SQLException -> 0x0877 }
        r5 = r2.g;	 Catch:{ SQLException -> 0x0877 }
        r7 = com.twitter.model.timeline.aj.a;	 Catch:{ SQLException -> 0x0877 }
        r5 = a(r5, r7);	 Catch:{ SQLException -> 0x0877 }
        r7 = 128; // 0x80 float:1.794E-43 double:6.32E-322;
        r0 = r36;
        r8 = r0.n;	 Catch:{ SQLException -> 0x0877 }
        a(r3, r5, r7, r9, r8);	 Catch:{ SQLException -> 0x0877 }
        goto L_0x07d4;
    L_0x0877:
        r2 = move-exception;
        r3 = r2;
        r2 = r17;
        goto L_0x0227;
    L_0x087d:
        r3 = 0;
        goto L_0x07fb;
    L_0x0880:
        r3 = 32768; // 0x8000 float:4.5918E-41 double:1.61895E-319;
        goto L_0x0807;
    L_0x0884:
        r3 = r17;
    L_0x0886:
        r0 = r36;
        r5 = r0.d;	 Catch:{ SQLException -> 0x1012 }
        if (r5 != 0) goto L_0x0895;
    L_0x088c:
        r4 = r4.d();	 Catch:{ SQLException -> 0x1012 }
        r5 = r4.b;	 Catch:{ SQLException -> 0x1012 }
        switch(r5) {
            case 2: goto L_0x089a;
            default: goto L_0x0895;
        };	 Catch:{ SQLException -> 0x1012 }
    L_0x0895:
        r2 = r3;
    L_0x0896:
        r17 = r2;
        goto L_0x05cd;
    L_0x089a:
        r5 = com.twitter.model.topic.l.a;	 Catch:{ SQLException -> 0x1012 }
        r4 = a(r4, r5);	 Catch:{ SQLException -> 0x1012 }
        r2 = r2.g;	 Catch:{ SQLException -> 0x1012 }
        r5 = com.twitter.model.timeline.aj.a;	 Catch:{ SQLException -> 0x1012 }
        r2 = a(r2, r5);	 Catch:{ SQLException -> 0x1012 }
        r5 = 128; // 0x80 float:1.794E-43 double:6.32E-322;
        r0 = r36;
        r7 = r0.n;	 Catch:{ SQLException -> 0x1012 }
        a(r4, r2, r5, r9, r7);	 Catch:{ SQLException -> 0x1012 }
        r2 = "timeline";
        r4 = 0;
        r0 = r28;
        r4 = r0.insert(r2, r4, r9);	 Catch:{ SQLException -> 0x1012 }
        r10 = 0;
        r2 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1));
        if (r2 <= 0) goto L_0x0895;
    L_0x08c1:
        r2 = r3 + 1;
        goto L_0x0896;
    L_0x08c4:
        r3 = r2 instanceof com.twitter.model.timeline.bq;	 Catch:{ SQLException -> 0x0877 }
        if (r3 == 0) goto L_0x08ff;
    L_0x08c8:
        r2 = com.twitter.util.object.ObjectUtils.a(r2);	 Catch:{ SQLException -> 0x0877 }
        r2 = (com.twitter.model.timeline.bq) r2;	 Catch:{ SQLException -> 0x0877 }
        r3 = "savePrompt";
        r4 = "BEGIN";
        r0 = r26;
        r0.a(r3, r4);	 Catch:{ SQLException -> 0x0877 }
        r2 = r2.a;	 Catch:{ SQLException -> 0x0877 }
        r3 = 4194304; // 0x400000 float:5.877472E-39 double:2.0722615E-317;
        a(r2, r3, r9);	 Catch:{ SQLException -> 0x0877 }
        r2 = "timeline";
        r3 = 0;
        r0 = r28;
        r2 = r0.insert(r2, r3, r9);	 Catch:{ SQLException -> 0x0877 }
        r4 = 0;
        r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r2 <= 0) goto L_0x08f2;
    L_0x08f0:
        r17 = r17 + 1;
    L_0x08f2:
        r2 = "savePrompt";
        r3 = "END";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0877 }
        goto L_0x05cd;
    L_0x08ff:
        r3 = r2 instanceof com.twitter.model.timeline.be;	 Catch:{ SQLException -> 0x0877 }
        if (r3 == 0) goto L_0x0959;
    L_0x0903:
        r0 = r36;
        r3 = r0.o;	 Catch:{ SQLException -> 0x0877 }
        r3 = r3.h;	 Catch:{ SQLException -> 0x0877 }
        if (r3 == 0) goto L_0x0959;
    L_0x090b:
        r2 = com.twitter.util.object.ObjectUtils.a(r2);	 Catch:{ SQLException -> 0x0877 }
        r2 = (com.twitter.model.timeline.be) r2;	 Catch:{ SQLException -> 0x0877 }
        r3 = "saveTimelinePrompt";
        r4 = "BEGIN";
        r0 = r26;
        r0.a(r3, r4);	 Catch:{ SQLException -> 0x0877 }
        r3 = r2.b;	 Catch:{ SQLException -> 0x0877 }
        r3 = r3.hashCode();	 Catch:{ SQLException -> 0x0877 }
        r4 = new android.content.ContentValues;	 Catch:{ SQLException -> 0x0877 }
        r4.<init>();	 Catch:{ SQLException -> 0x0877 }
        r5 = r2.a;	 Catch:{ SQLException -> 0x0877 }
        a(r5, r3, r4);	 Catch:{ SQLException -> 0x0877 }
        r5 = "prompts";
        r7 = 0;
        r0 = r28;
        r0.insert(r5, r7, r4);	 Catch:{ SQLException -> 0x0877 }
        r2 = r2.g;	 Catch:{ SQLException -> 0x0877 }
        a(r3, r9, r2);	 Catch:{ SQLException -> 0x0877 }
        r2 = "timeline";
        r3 = 0;
        r0 = r28;
        r2 = r0.insert(r2, r3, r9);	 Catch:{ SQLException -> 0x0877 }
        r4 = 0;
        r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r2 <= 0) goto L_0x094c;
    L_0x094a:
        r17 = r17 + 1;
    L_0x094c:
        r2 = "saveTimelinePrompt";
        r3 = "END";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0877 }
        goto L_0x05cd;
    L_0x0959:
        r3 = r2 instanceof com.twitter.model.timeline.bt;	 Catch:{ SQLException -> 0x0877 }
        if (r3 == 0) goto L_0x0a5b;
    L_0x095d:
        r0 = r36;
        r3 = r0.o;	 Catch:{ SQLException -> 0x0877 }
        r3 = r3.b;	 Catch:{ SQLException -> 0x0877 }
        if (r3 == 0) goto L_0x0a5b;
    L_0x0965:
        r3 = "saveRecap";
        r4 = "BEGIN";
        r0 = r26;
        r0.a(r3, r4);	 Catch:{ SQLException -> 0x0877 }
        r2 = com.twitter.util.object.ObjectUtils.a(r2);	 Catch:{ SQLException -> 0x0877 }
        r2 = (com.twitter.model.timeline.bt) r2;	 Catch:{ SQLException -> 0x0877 }
        r3 = r2.o;	 Catch:{ SQLException -> 0x0877 }
        r4 = com.twitter.model.timeline.w.a;	 Catch:{ SQLException -> 0x0877 }
        r7 = a(r3, r4);	 Catch:{ SQLException -> 0x0877 }
        r3 = r2.o;	 Catch:{ SQLException -> 0x0877 }
        r3 = r3.c;	 Catch:{ SQLException -> 0x0877 }
        r4 = com.twitter.model.timeline.aj.a;	 Catch:{ SQLException -> 0x0877 }
        r11 = a(r3, r4);	 Catch:{ SQLException -> 0x0877 }
        r3 = 16777216; // 0x1000000 float:2.3509887E-38 double:8.289046E-317;
        r0 = r36;
        r4 = r0.n;	 Catch:{ SQLException -> 0x0877 }
        a(r7, r11, r3, r9, r4);	 Catch:{ SQLException -> 0x0877 }
        r3 = "pinned_header_state";
        r4 = r2.k;	 Catch:{ SQLException -> 0x0877 }
        r4 = java.lang.Long.valueOf(r4);	 Catch:{ SQLException -> 0x0877 }
        r9.put(r3, r4);	 Catch:{ SQLException -> 0x0877 }
        r3 = "timeline";
        r4 = 0;
        r0 = r28;
        r4 = r0.insert(r3, r4, r9);	 Catch:{ SQLException -> 0x0877 }
        r12 = 0;
        r3 = (r4 > r12 ? 1 : (r4 == r12 ? 0 : -1));
        if (r3 <= 0) goto L_0x09ba;
    L_0x09ad:
        r17 = r17 + 1;
        r3 = r2.i;	 Catch:{ SQLException -> 0x0877 }
        if (r3 == 0) goto L_0x09ba;
    L_0x09b3:
        r3 = r2.i;	 Catch:{ SQLException -> 0x0877 }
        r0 = r28;
        a(r0, r4, r3);	 Catch:{ SQLException -> 0x0877 }
    L_0x09ba:
        r3 = r2.a;	 Catch:{ SQLException -> 0x0877 }
        r12 = r3.iterator();	 Catch:{ SQLException -> 0x0877 }
        r4 = r17;
    L_0x09c2:
        r3 = r12.hasNext();	 Catch:{ SQLException -> 0x101d }
        if (r3 == 0) goto L_0x0a0b;
    L_0x09c8:
        r3 = r12.next();	 Catch:{ SQLException -> 0x101d }
        r3 = (com.twitter.model.timeline.bw) r3;	 Catch:{ SQLException -> 0x101d }
        r5 = r3.a;	 Catch:{ SQLException -> 0x101d }
        r8 = 33554432; // 0x2000000 float:9.403955E-38 double:1.6578092E-316;
        r0 = r36;
        r10 = r0.n;	 Catch:{ SQLException -> 0x101d }
        a(r5, r6, r7, r8, r9, r10);	 Catch:{ SQLException -> 0x101d }
        r5 = r3.g;	 Catch:{ SQLException -> 0x101d }
        if (r5 == 0) goto L_0x09eb;
    L_0x09dd:
        r5 = "scribe_content";
        r8 = r3.g;	 Catch:{ SQLException -> 0x101d }
        r10 = com.twitter.model.timeline.aj.a;	 Catch:{ SQLException -> 0x101d }
        r8 = a(r8, r10);	 Catch:{ SQLException -> 0x101d }
        r9.put(r5, r8);	 Catch:{ SQLException -> 0x101d }
    L_0x09eb:
        r5 = "pinned_header_state";
        r14 = r3.k;	 Catch:{ SQLException -> 0x101d }
        r3 = java.lang.Long.valueOf(r14);	 Catch:{ SQLException -> 0x101d }
        r9.put(r5, r3);	 Catch:{ SQLException -> 0x101d }
        r3 = "timeline";
        r5 = 0;
        r0 = r28;
        r14 = r0.insert(r3, r5, r9);	 Catch:{ SQLException -> 0x101d }
        r16 = 0;
        r3 = (r14 > r16 ? 1 : (r14 == r16 ? 0 : -1));
        if (r3 <= 0) goto L_0x102a;
    L_0x0a07:
        r3 = r4 + 1;
    L_0x0a09:
        r4 = r3;
        goto L_0x09c2;
    L_0x0a0b:
        r3 = r2.p;	 Catch:{ SQLException -> 0x101d }
        if (r3 == 0) goto L_0x1026;
    L_0x0a0f:
        r0 = r36;
        r3 = r0.o;	 Catch:{ SQLException -> 0x101d }
        r3 = r3.k;	 Catch:{ SQLException -> 0x101d }
        if (r3 == 0) goto L_0x1026;
    L_0x0a17:
        r3 = "saveFooter";
        r5 = "BEGIN";
        r0 = r26;
        r0.a(r3, r5);	 Catch:{ SQLException -> 0x101d }
        r2 = r2.p;	 Catch:{ SQLException -> 0x101d }
        r3 = com.twitter.model.timeline.p.a;	 Catch:{ SQLException -> 0x101d }
        r2 = a(r2, r3);	 Catch:{ SQLException -> 0x101d }
        r0 = r36;
        r3 = r0.n;	 Catch:{ SQLException -> 0x101d }
        a(r2, r11, r9, r3);	 Catch:{ SQLException -> 0x101d }
        r2 = "timeline";
        r3 = 0;
        r0 = r28;
        r2 = r0.insert(r2, r3, r9);	 Catch:{ SQLException -> 0x101d }
        r10 = 0;
        r2 = (r2 > r10 ? 1 : (r2 == r10 ? 0 : -1));
        if (r2 <= 0) goto L_0x1022;
    L_0x0a41:
        r17 = r4 + 1;
    L_0x0a43:
        r2 = "saveFooter";
        r3 = "END";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0877 }
    L_0x0a4e:
        r2 = "saveRecap";
        r3 = "END";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0877 }
        goto L_0x05cd;
    L_0x0a5b:
        r3 = r2 instanceof com.twitter.model.timeline.ck;	 Catch:{ SQLException -> 0x0877 }
        if (r3 == 0) goto L_0x0bfe;
    L_0x0a5f:
        r3 = "saveWhoToFollow";
        r4 = "BEGIN";
        r0 = r26;
        r0.a(r3, r4);	 Catch:{ SQLException -> 0x0877 }
        r2 = com.twitter.util.object.ObjectUtils.a(r2);	 Catch:{ SQLException -> 0x0877 }
        r2 = (com.twitter.model.timeline.ck) r2;	 Catch:{ SQLException -> 0x0877 }
        r3 = r2.a;	 Catch:{ SQLException -> 0x0877 }
        r4 = r3.c;	 Catch:{ SQLException -> 0x0877 }
        if (r4 == 0) goto L_0x0a88;
    L_0x0a76:
        r4 = r3.c;	 Catch:{ SQLException -> 0x0877 }
        r4 = r4.b;	 Catch:{ SQLException -> 0x0877 }
        switch(r4) {
            case 1: goto L_0x0a95;
            case 2: goto L_0x0b52;
            case 3: goto L_0x0b0f;
            default: goto L_0x0a7d;
        };	 Catch:{ SQLException -> 0x0877 }
    L_0x0a7d:
        r2 = "saveWhoToFollow";
        r3 = "UNKNOWN_TYPE";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0877 }
    L_0x0a88:
        r2 = "saveWhoToFollow";
        r3 = "END";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0877 }
        goto L_0x05cd;
    L_0x0a95:
        r0 = r36;
        r4 = r0.o;	 Catch:{ SQLException -> 0x0877 }
        r4 = r4.c;	 Catch:{ SQLException -> 0x0877 }
        if (r4 == 0) goto L_0x0a88;
    L_0x0a9d:
        r4 = "saveWhoToFollow(tweet)";
        r5 = "BEGIN";
        r0 = r26;
        r0.a(r4, r5);	 Catch:{ SQLException -> 0x0877 }
        r4 = r3.b;	 Catch:{ SQLException -> 0x0877 }
        r5 = com.twitter.util.collection.CollectionUtils.b(r4);	 Catch:{ SQLException -> 0x0877 }
        r5 = (com.twitter.model.core.cm) r5;	 Catch:{ SQLException -> 0x0877 }
        if (r5 == 0) goto L_0x0b02;
    L_0x0ab2:
        r4 = r5.C;	 Catch:{ SQLException -> 0x0877 }
        if (r4 == 0) goto L_0x0b02;
    L_0x0ab6:
        r4 = r3.c;	 Catch:{ SQLException -> 0x0877 }
        r7 = com.twitter.model.timeline.cr.a;	 Catch:{ SQLException -> 0x0877 }
        r7 = a(r4, r7);	 Catch:{ SQLException -> 0x0877 }
        r8 = 268435456; // 0x10000000 float:2.5243549E-29 double:1.32624737E-315;
        r0 = r36;
        r10 = r0.n;	 Catch:{ SQLException -> 0x0877 }
        a(r5, r6, r7, r8, r9, r10);	 Catch:{ SQLException -> 0x0877 }
        r3 = r3.c;	 Catch:{ SQLException -> 0x0877 }
        r3 = r3.g;	 Catch:{ SQLException -> 0x0877 }
        r4 = r5.C;	 Catch:{ SQLException -> 0x0877 }
        r4 = r4.bg_();	 Catch:{ SQLException -> 0x0877 }
        r3 = r3.get(r4);	 Catch:{ SQLException -> 0x0877 }
        r3 = (com.twitter.model.timeline.aj) r3;	 Catch:{ SQLException -> 0x0877 }
        if (r3 == 0) goto L_0x0ae5;
    L_0x0ad9:
        r4 = "scribe_content";
        r5 = com.twitter.model.timeline.aj.a;	 Catch:{ SQLException -> 0x0877 }
        r3 = a(r3, r5);	 Catch:{ SQLException -> 0x0877 }
        r9.put(r4, r3);	 Catch:{ SQLException -> 0x0877 }
    L_0x0ae5:
        r3 = "timeline";
        r4 = 0;
        r0 = r28;
        r4 = r0.insert(r3, r4, r9);	 Catch:{ SQLException -> 0x0877 }
        r10 = 0;
        r3 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1));
        if (r3 <= 0) goto L_0x0b02;
    L_0x0af5:
        r17 = r17 + 1;
        r3 = r2.i;	 Catch:{ SQLException -> 0x0877 }
        if (r3 == 0) goto L_0x0b02;
    L_0x0afb:
        r2 = r2.i;	 Catch:{ SQLException -> 0x0877 }
        r0 = r28;
        a(r0, r4, r2);	 Catch:{ SQLException -> 0x0877 }
    L_0x0b02:
        r2 = "saveWhoToFollow(tweet)";
        r3 = "END";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0877 }
        goto L_0x0a88;
    L_0x0b0f:
        r0 = r36;
        r4 = r0.o;	 Catch:{ SQLException -> 0x0877 }
        r4 = r4.e;	 Catch:{ SQLException -> 0x0877 }
        if (r4 == 0) goto L_0x0a88;
    L_0x0b17:
        r4 = "saveWhoToFollow(large card carousel)";
        r5 = "BEGIN";
        r0 = r26;
        r0.a(r4, r5);	 Catch:{ SQLException -> 0x0877 }
        r4 = r3.a;	 Catch:{ SQLException -> 0x0877 }
        r4 = com.twitter.util.collection.CollectionUtils.b(r4);	 Catch:{ SQLException -> 0x0877 }
        if (r4 != 0) goto L_0x0b45;
    L_0x0b2a:
        r4 = r3.c;	 Catch:{ SQLException -> 0x0877 }
        r5 = com.twitter.model.timeline.cr.a;	 Catch:{ SQLException -> 0x0877 }
        r11 = a(r4, r5);	 Catch:{ SQLException -> 0x0877 }
        r10 = r3.a;	 Catch:{ SQLException -> 0x0877 }
        r12 = r2.i;	 Catch:{ SQLException -> 0x0877 }
        r0 = r36;
        r15 = r0.n;	 Catch:{ SQLException -> 0x0877 }
        r13 = r9;
        r14 = r28;
        r16 = r6;
        r2 = a(r10, r11, r12, r13, r14, r15, r16);	 Catch:{ SQLException -> 0x0877 }
        r17 = r17 + r2;
    L_0x0b45:
        r2 = "saveWhoToFollow(large card carousel)";
        r3 = "END";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0877 }
        goto L_0x0a88;
    L_0x0b52:
        r0 = r36;
        r4 = r0.o;	 Catch:{ SQLException -> 0x0877 }
        r4 = r4.d;	 Catch:{ SQLException -> 0x0877 }
        if (r4 == 0) goto L_0x0a88;
    L_0x0b5a:
        r4 = "saveWhoToFollow(follow module)";
        r5 = "BEGIN";
        r0 = r26;
        r0.a(r4, r5);	 Catch:{ SQLException -> 0x0877 }
        r4 = r3.a;	 Catch:{ SQLException -> 0x0877 }
        r4 = com.twitter.util.collection.CollectionUtils.b(r4);	 Catch:{ SQLException -> 0x0877 }
        if (r4 != 0) goto L_0x0bf1;
    L_0x0b6d:
        r4 = r3.c;	 Catch:{ SQLException -> 0x0877 }
        r5 = com.twitter.model.timeline.cr.a;	 Catch:{ SQLException -> 0x0877 }
        r11 = a(r4, r5);	 Catch:{ SQLException -> 0x0877 }
        r4 = r3.c;	 Catch:{ SQLException -> 0x0877 }
        r4 = r4.e;	 Catch:{ SQLException -> 0x0877 }
        r5 = com.twitter.model.timeline.aj.a;	 Catch:{ SQLException -> 0x0877 }
        r4 = a(r4, r5);	 Catch:{ SQLException -> 0x0877 }
        r0 = r36;
        r5 = r0.n;	 Catch:{ SQLException -> 0x0877 }
        r0 = r28;
        r12 = a(r11, r4, r9, r0, r5);	 Catch:{ SQLException -> 0x0877 }
        r14 = 0;
        r5 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1));
        if (r5 <= 0) goto L_0x0b9c;
    L_0x0b8f:
        r17 = r17 + 1;
        r5 = r2.i;	 Catch:{ SQLException -> 0x0877 }
        if (r5 == 0) goto L_0x0b9c;
    L_0x0b95:
        r5 = r2.i;	 Catch:{ SQLException -> 0x0877 }
        r0 = r28;
        a(r0, r12, r5);	 Catch:{ SQLException -> 0x0877 }
    L_0x0b9c:
        r10 = r3.a;	 Catch:{ SQLException -> 0x0877 }
        r12 = 0;
        r0 = r36;
        r15 = r0.n;	 Catch:{ SQLException -> 0x0877 }
        r13 = r9;
        r14 = r28;
        r16 = r6;
        r3 = a(r10, r11, r12, r13, r14, r15, r16);	 Catch:{ SQLException -> 0x0877 }
        r17 = r17 + r3;
        r3 = r2.o;	 Catch:{ SQLException -> 0x0877 }
        if (r3 == 0) goto L_0x0bf1;
    L_0x0bb2:
        r0 = r36;
        r3 = r0.o;	 Catch:{ SQLException -> 0x0877 }
        r3 = r3.k;	 Catch:{ SQLException -> 0x0877 }
        if (r3 == 0) goto L_0x0bf1;
    L_0x0bba:
        r3 = "saveFooter";
        r5 = "BEGIN";
        r0 = r26;
        r0.a(r3, r5);	 Catch:{ SQLException -> 0x0877 }
        r2 = r2.o;	 Catch:{ SQLException -> 0x0877 }
        r3 = com.twitter.model.timeline.p.a;	 Catch:{ SQLException -> 0x0877 }
        r2 = a(r2, r3);	 Catch:{ SQLException -> 0x0877 }
        r0 = r36;
        r3 = r0.n;	 Catch:{ SQLException -> 0x0877 }
        a(r2, r4, r9, r3);	 Catch:{ SQLException -> 0x0877 }
        r2 = "timeline";
        r3 = 0;
        r0 = r28;
        r2 = r0.insert(r2, r3, r9);	 Catch:{ SQLException -> 0x0877 }
        r4 = 0;
        r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r2 <= 0) goto L_0x0be6;
    L_0x0be4:
        r17 = r17 + 1;
    L_0x0be6:
        r2 = "saveFooter";
        r3 = "END";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0877 }
    L_0x0bf1:
        r2 = "saveWhoToFollow(follow module)";
        r3 = "END";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0877 }
        goto L_0x0a88;
    L_0x0bfe:
        r3 = r2 instanceof com.twitter.model.timeline.cf;	 Catch:{ SQLException -> 0x0877 }
        if (r3 == 0) goto L_0x0c58;
    L_0x0c02:
        r0 = r36;
        r3 = r0.o;	 Catch:{ SQLException -> 0x0877 }
        r3 = r3.j;	 Catch:{ SQLException -> 0x0877 }
        if (r3 == 0) goto L_0x0c58;
    L_0x0c0a:
        r2 = com.twitter.util.object.ObjectUtils.a(r2);	 Catch:{ SQLException -> 0x0877 }
        r2 = (com.twitter.model.timeline.cf) r2;	 Catch:{ SQLException -> 0x0877 }
        r2 = r2.a;	 Catch:{ SQLException -> 0x0877 }
        r3 = r2.a();	 Catch:{ SQLException -> 0x0877 }
        if (r3 == 0) goto L_0x0c52;
    L_0x0c18:
        r3 = r2.c();	 Catch:{ SQLException -> 0x0877 }
        r7 = r3.getBytes();	 Catch:{ SQLException -> 0x0877 }
        r2 = r2.b();	 Catch:{ SQLException -> 0x0877 }
        r3 = r2.iterator();	 Catch:{ SQLException -> 0x0877 }
        r2 = r17;
    L_0x0c2a:
        r4 = r3.hasNext();	 Catch:{ SQLException -> 0x101a }
        if (r4 == 0) goto L_0x0c54;
    L_0x0c30:
        r5 = r3.next();	 Catch:{ SQLException -> 0x101a }
        r5 = (com.twitter.model.core.cm) r5;	 Catch:{ SQLException -> 0x101a }
        r8 = 16;
        r0 = r36;
        r10 = r0.n;	 Catch:{ SQLException -> 0x101a }
        a(r5, r6, r7, r8, r9, r10);	 Catch:{ SQLException -> 0x101a }
        r4 = "timeline";
        r5 = 0;
        r0 = r28;
        r4 = r0.insert(r4, r5, r9);	 Catch:{ SQLException -> 0x101a }
        r10 = 0;
        r4 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1));
        if (r4 <= 0) goto L_0x0c2a;
    L_0x0c4f:
        r2 = r2 + 1;
        goto L_0x0c2a;
    L_0x0c52:
        r2 = r17;
    L_0x0c54:
        r17 = r2;
        goto L_0x05cd;
    L_0x0c58:
        r3 = r2 instanceof com.twitter.model.timeline.bh;	 Catch:{ SQLException -> 0x0877 }
        if (r3 == 0) goto L_0x0c83;
    L_0x0c5c:
        r0 = r36;
        r3 = r0.o;	 Catch:{ SQLException -> 0x0877 }
        r3 = r3.f;	 Catch:{ SQLException -> 0x0877 }
        if (r3 == 0) goto L_0x0c83;
    L_0x0c64:
        r2 = com.twitter.util.object.ObjectUtils.a(r2);	 Catch:{ SQLException -> 0x0877 }
        r2 = (com.twitter.model.timeline.bh) r2;	 Catch:{ SQLException -> 0x0877 }
        r2 = r2.h;	 Catch:{ SQLException -> 0x0877 }
        a(r2, r9);	 Catch:{ SQLException -> 0x0877 }
        r2 = "timeline";
        r3 = 0;
        r0 = r28;
        r2 = r0.insert(r2, r3, r9);	 Catch:{ SQLException -> 0x0877 }
        r4 = 0;
        r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r2 <= 0) goto L_0x05cd;
    L_0x0c7f:
        r17 = r17 + 1;
        goto L_0x05cd;
    L_0x0c83:
        r3 = r2 instanceof com.twitter.model.timeline.an;	 Catch:{ SQLException -> 0x0877 }
        if (r3 == 0) goto L_0x0cae;
    L_0x0c87:
        r0 = r36;
        r3 = r0.o;	 Catch:{ SQLException -> 0x0877 }
        r3 = r3.i;	 Catch:{ SQLException -> 0x0877 }
        if (r3 == 0) goto L_0x0cae;
    L_0x0c8f:
        r2 = com.twitter.util.object.ObjectUtils.a(r2);	 Catch:{ SQLException -> 0x0877 }
        r2 = (com.twitter.model.timeline.an) r2;	 Catch:{ SQLException -> 0x0877 }
        r2 = r2.a;	 Catch:{ SQLException -> 0x0877 }
        a(r2, r6, r9);	 Catch:{ SQLException -> 0x0877 }
        r2 = "timeline";
        r3 = 0;
        r0 = r28;
        r2 = r0.insert(r2, r3, r9);	 Catch:{ SQLException -> 0x0877 }
        r4 = 0;
        r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r2 <= 0) goto L_0x05cd;
    L_0x0caa:
        r17 = r17 + 1;
        goto L_0x05cd;
    L_0x0cae:
        r3 = r2 instanceof com.twitter.model.timeline.bz;	 Catch:{ SQLException -> 0x0877 }
        if (r3 == 0) goto L_0x0cd0;
    L_0x0cb2:
        r0 = r36;
        r3 = r0.o;	 Catch:{ SQLException -> 0x0877 }
        r3 = r3.g;	 Catch:{ SQLException -> 0x0877 }
        if (r3 == 0) goto L_0x0cd0;
    L_0x0cba:
        r2 = com.twitter.util.object.ObjectUtils.a(r2);	 Catch:{ SQLException -> 0x0877 }
        r2 = (com.twitter.model.timeline.bz) r2;	 Catch:{ SQLException -> 0x0877 }
        r2 = r2.a;	 Catch:{ SQLException -> 0x0877 }
        r0 = r36;
        r3 = r0.n;	 Catch:{ SQLException -> 0x0877 }
        r0 = r28;
        r2 = a(r2, r0, r9, r3);	 Catch:{ SQLException -> 0x0877 }
        r17 = r17 + r2;
        goto L_0x05cd;
    L_0x0cd0:
        r3 = r2 instanceof com.twitter.model.timeline.cn;	 Catch:{ SQLException -> 0x0877 }
        if (r3 == 0) goto L_0x0cf1;
    L_0x0cd4:
        r2 = com.twitter.util.object.ObjectUtils.a(r2);	 Catch:{ SQLException -> 0x0877 }
        r2 = (com.twitter.model.timeline.cn) r2;	 Catch:{ SQLException -> 0x0877 }
        a(r2, r9);	 Catch:{ SQLException -> 0x0877 }
        r2 = "timeline";
        r3 = 0;
        r0 = r28;
        r2 = r0.insert(r2, r3, r9);	 Catch:{ SQLException -> 0x0877 }
        r4 = 0;
        r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r2 <= 0) goto L_0x05cd;
    L_0x0ced:
        r17 = r17 + 1;
        goto L_0x05cd;
    L_0x0cf1:
        r3 = r2 instanceof com.twitter.model.timeline.at;	 Catch:{ SQLException -> 0x0877 }
        if (r3 == 0) goto L_0x05cd;
    L_0x0cf5:
        r2 = com.twitter.util.object.ObjectUtils.a(r2);	 Catch:{ SQLException -> 0x0877 }
        r2 = (com.twitter.model.timeline.at) r2;	 Catch:{ SQLException -> 0x0877 }
        r0 = r28;
        r2 = a(r0, r2, r6, r9);	 Catch:{ SQLException -> 0x0877 }
        r17 = r17 + r2;
        goto L_0x05cd;
    L_0x0d05:
        r0 = r36;
        r2 = r0.f;	 Catch:{ SQLException -> 0x0877 }
        if (r2 == 0) goto L_0x0d29;
    L_0x0d0b:
        r0 = r36;
        r2 = r0.c;	 Catch:{ SQLException -> 0x0877 }
        r0 = r36;
        r4 = r0.d;	 Catch:{ SQLException -> 0x0877 }
        r0 = r36;
        r5 = r0.e;	 Catch:{ SQLException -> 0x0877 }
        r0 = r35;
        r0.b(r2, r4, r5);	 Catch:{ SQLException -> 0x0877 }
        r0 = r36;
        r2 = r0.d;	 Catch:{ SQLException -> 0x0877 }
        r0 = r36;
        r3 = r0.k;	 Catch:{ SQLException -> 0x0877 }
        r0 = r35;
        r0.b(r2, r3);	 Catch:{ SQLException -> 0x0877 }
    L_0x0d29:
        r2 = "insertGap";
        r0 = r36;
        r3 = r0.g;	 Catch:{ SQLException -> 0x0877 }
        r3 = java.lang.Boolean.valueOf(r3);	 Catch:{ SQLException -> 0x0877 }
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0877 }
        if (r19 == 0) goto L_0x0fb2;
    L_0x0d3b:
        r0 = r36;
        r2 = r0.g;	 Catch:{ SQLException -> 0x0877 }
        if (r2 == 0) goto L_0x0ea9;
    L_0x0d41:
        r2 = "bottom";
        r0 = r36;
        r3 = r0.a;	 Catch:{ SQLException -> 0x0877 }
        r3 = r3.b;	 Catch:{ SQLException -> 0x0877 }
        r3 = r3.d;	 Catch:{ SQLException -> 0x0877 }
        r2 = r2.equals(r3);	 Catch:{ SQLException -> 0x0877 }
        if (r2 == 0) goto L_0x0ea9;
    L_0x0d52:
        r2 = r20.size();	 Catch:{ SQLException -> 0x0877 }
        r2 = r2 + -1;
        r0 = r20;
        r2 = r0.get(r2);	 Catch:{ SQLException -> 0x0877 }
        r2 = (com.twitter.model.timeline.av) r2;	 Catch:{ SQLException -> 0x0877 }
        r3 = new java.lang.StringBuilder;	 Catch:{ SQLException -> 0x0877 }
        r3.<init>();	 Catch:{ SQLException -> 0x0877 }
        r0 = r36;
        r4 = r0.a;	 Catch:{ SQLException -> 0x0877 }
        r4 = r4.b;	 Catch:{ SQLException -> 0x0877 }
        r4 = r4.d;	 Catch:{ SQLException -> 0x0877 }
        r3 = r3.append(r4);	 Catch:{ SQLException -> 0x0877 }
        r4 = "-";
        r3 = r3.append(r4);	 Catch:{ SQLException -> 0x0877 }
        r0 = r24;
        r3 = r3.append(r0);	 Catch:{ SQLException -> 0x0877 }
        r3 = r3.toString();	 Catch:{ SQLException -> 0x0877 }
        r4 = "entity_id";
        r3 = r3.hashCode();	 Catch:{ SQLException -> 0x0877 }
        r3 = java.lang.Integer.valueOf(r3);	 Catch:{ SQLException -> 0x0877 }
        r9.put(r4, r3);	 Catch:{ SQLException -> 0x0877 }
        r3 = "updated_at";
        r4 = r2.n;	 Catch:{ SQLException -> 0x0877 }
        r10 = 1;
        r4 = r4 - r10;
        r4 = java.lang.Long.valueOf(r4);	 Catch:{ SQLException -> 0x0877 }
        r9.put(r3, r4);	 Catch:{ SQLException -> 0x0877 }
        r3 = "data_type";
        r4 = 5;
        r4 = java.lang.Integer.valueOf(r4);	 Catch:{ SQLException -> 0x0877 }
        r9.put(r3, r4);	 Catch:{ SQLException -> 0x0877 }
        r3 = "data_type_group";
        r4 = java.lang.Integer.valueOf(r6);	 Catch:{ SQLException -> 0x0877 }
        r9.put(r3, r4);	 Catch:{ SQLException -> 0x0877 }
        r3 = "type";
        r0 = r36;
        r4 = r0.d;	 Catch:{ SQLException -> 0x0877 }
        r4 = java.lang.Integer.valueOf(r4);	 Catch:{ SQLException -> 0x0877 }
        r9.put(r3, r4);	 Catch:{ SQLException -> 0x0877 }
        r3 = "timeline_tag";
        r0 = r36;
        r4 = r0.e;	 Catch:{ SQLException -> 0x0877 }
        r9.put(r3, r4);	 Catch:{ SQLException -> 0x0877 }
        r3 = "data_type_tag";
        r4 = -1;
        r4 = java.lang.Integer.valueOf(r4);	 Catch:{ SQLException -> 0x0877 }
        r9.put(r3, r4);	 Catch:{ SQLException -> 0x0877 }
        r3 = "sort_index";
        r4 = r2.e;	 Catch:{ SQLException -> 0x0877 }
        r2 = java.lang.Long.valueOf(r4);	 Catch:{ SQLException -> 0x0877 }
        r9.put(r3, r2);	 Catch:{ SQLException -> 0x0877 }
        r2 = "flags";
        r9.putNull(r2);	 Catch:{ SQLException -> 0x0877 }
        r2 = "pinned_header_state";
        r3 = 0;
        r3 = java.lang.Integer.valueOf(r3);	 Catch:{ SQLException -> 0x0877 }
        r9.put(r2, r3);	 Catch:{ SQLException -> 0x0877 }
        r2 = "timeline_group_id";
        r3 = java.lang.Long.valueOf(r30);	 Catch:{ SQLException -> 0x0877 }
        r9.put(r2, r3);	 Catch:{ SQLException -> 0x0877 }
        r2 = new com.twitter.model.timeline.ae;	 Catch:{ SQLException -> 0x0877 }
        r2.<init>();	 Catch:{ SQLException -> 0x0877 }
        r0 = r36;
        r3 = r0.a;	 Catch:{ SQLException -> 0x0877 }
        r3 = r3.b;	 Catch:{ SQLException -> 0x0877 }
        r3 = r3.c;	 Catch:{ SQLException -> 0x0877 }
        r2 = r2.b(r3);	 Catch:{ SQLException -> 0x0877 }
        r5 = 2;
        r0 = r36;
        r6 = r0.c;	 Catch:{ SQLException -> 0x0877 }
        r8 = java.lang.String.valueOf(r24);	 Catch:{ SQLException -> 0x0877 }
        r3 = r35;
        r4 = r27;
        r3 = r3.a(r4, r5, r6, r8);	 Catch:{ SQLException -> 0x0877 }
        r2 = r2.a(r3);	 Catch:{ SQLException -> 0x0877 }
        r2 = r2.q();	 Catch:{ SQLException -> 0x0877 }
        r2 = (com.twitter.model.timeline.ac) r2;	 Catch:{ SQLException -> 0x0877 }
        r3 = "data";
        r4 = com.twitter.model.timeline.ac.a;	 Catch:{ SQLException -> 0x0877 }
        r2 = a(r2, r4);	 Catch:{ SQLException -> 0x0877 }
        r9.put(r3, r2);	 Catch:{ SQLException -> 0x0877 }
        r2 = "timeline";
        r3 = 0;
        r0 = r28;
        r2 = r0.insert(r2, r3, r9);	 Catch:{ SQLException -> 0x0877 }
        r4 = 0;
        r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r2 <= 0) goto L_0x0e48;
    L_0x0e46:
        r17 = r17 + 1;
    L_0x0e48:
        r2 = "insertGapTopCursor";
        r3 = "BEGIN";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0877 }
        r5 = 4;
        r0 = r36;
        r6 = r0.c;	 Catch:{ SQLException -> 0x0877 }
        r0 = r36;
        r2 = r0.a;	 Catch:{ SQLException -> 0x0877 }
        r2 = r2.b;	 Catch:{ SQLException -> 0x0877 }
        r10 = r2.c;	 Catch:{ SQLException -> 0x0877 }
        r3 = r35;
        r4 = r27;
        r8 = r30;
        r3.a(r4, r5, r6, r8, r10);	 Catch:{ SQLException -> 0x0877 }
        r2 = "insertGapTopCursor";
        r3 = "END";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0877 }
        r5 = 2;
        r0 = r36;
        r6 = r0.c;	 Catch:{ SQLException -> 0x0877 }
        r8 = java.lang.String.valueOf(r24);	 Catch:{ SQLException -> 0x0877 }
        r3 = r35;
        r4 = r27;
        r10 = r3.a(r4, r5, r6, r8);	 Catch:{ SQLException -> 0x0877 }
        r2 = "insertGapBottomCursor";
        r3 = "BEGIN";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0877 }
        r5 = 5;
        r0 = r36;
        r6 = r0.c;	 Catch:{ SQLException -> 0x0877 }
        r3 = r35;
        r4 = r27;
        r8 = r30;
        r3.a(r4, r5, r6, r8, r10);	 Catch:{ SQLException -> 0x0877 }
        r2 = "insertGapBottomCursor";
        r3 = "END";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0877 }
    L_0x0ea9:
        r2 = "topCursor";
        r0 = r36;
        r3 = r0.a;	 Catch:{ SQLException -> 0x0877 }
        r3 = r3.b;	 Catch:{ SQLException -> 0x0877 }
        r3 = r3.b;	 Catch:{ SQLException -> 0x0877 }
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0877 }
        r2 = "bottomCursor";
        r0 = r36;
        r3 = r0.a;	 Catch:{ SQLException -> 0x0877 }
        r3 = r3.b;	 Catch:{ SQLException -> 0x0877 }
        r3 = r3.c;	 Catch:{ SQLException -> 0x0877 }
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0877 }
        r0 = r36;
        r2 = r0.a;	 Catch:{ SQLException -> 0x0877 }
        r2 = r2.b;	 Catch:{ SQLException -> 0x0877 }
        r2 = r2.b;	 Catch:{ SQLException -> 0x0877 }
        if (r2 == 0) goto L_0x0eff;
    L_0x0ed3:
        r2 = "saveTopCursor";
        r3 = "BEGIN";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0877 }
        r5 = 2;
        r0 = r36;
        r6 = r0.c;	 Catch:{ SQLException -> 0x0877 }
        r0 = r36;
        r2 = r0.a;	 Catch:{ SQLException -> 0x0877 }
        r2 = r2.b;	 Catch:{ SQLException -> 0x0877 }
        r10 = r2.b;	 Catch:{ SQLException -> 0x0877 }
        r3 = r35;
        r4 = r27;
        r8 = r24;
        r3.a(r4, r5, r6, r8, r10);	 Catch:{ SQLException -> 0x0877 }
        r2 = "saveTopCursor";
        r3 = "END";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0877 }
    L_0x0eff:
        r0 = r36;
        r2 = r0.a;	 Catch:{ SQLException -> 0x0877 }
        r2 = r2.b;	 Catch:{ SQLException -> 0x0877 }
        r2 = r2.c;	 Catch:{ SQLException -> 0x0877 }
        if (r2 == 0) goto L_0x0fe3;
    L_0x0f09:
        r2 = "saveBottomCursor";
        r3 = "BEGIN";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0877 }
        r5 = 3;
        r0 = r36;
        r6 = r0.c;	 Catch:{ SQLException -> 0x0877 }
        r0 = r36;
        r2 = r0.a;	 Catch:{ SQLException -> 0x0877 }
        r2 = r2.b;	 Catch:{ SQLException -> 0x0877 }
        r10 = r2.c;	 Catch:{ SQLException -> 0x0877 }
        r3 = r35;
        r4 = r27;
        r8 = r24;
        r3.a(r4, r5, r6, r8, r10);	 Catch:{ SQLException -> 0x0877 }
        r2 = "saveBottomCursor";
        r3 = "END";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0877 }
        r9 = r17;
    L_0x0f37:
        if (r9 <= 0) goto L_0x0f46;
    L_0x0f39:
        r0 = r36;
        r2 = r0.d;	 Catch:{ SQLException -> 0x100d }
        r0 = r36;
        r3 = r0.k;	 Catch:{ SQLException -> 0x100d }
        r0 = r35;
        r0.b(r2, r3);	 Catch:{ SQLException -> 0x100d }
    L_0x0f46:
        r2 = "deleteOlder";
        r0 = r36;
        r3 = r0.h;	 Catch:{ SQLException -> 0x100d }
        r3 = java.lang.Boolean.valueOf(r3);	 Catch:{ SQLException -> 0x100d }
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x100d }
        r0 = r36;
        r2 = r0.h;	 Catch:{ SQLException -> 0x100d }
        if (r2 == 0) goto L_0x0f93;
    L_0x0f5c:
        if (r19 == 0) goto L_0x0fe7;
    L_0x0f5e:
        r2 = "deleteTimelineEntities";
        r3 = "BEGIN";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x100d }
        r0 = r36;
        r4 = r0.c;	 Catch:{ SQLException -> 0x100d }
        r0 = r36;
        r6 = r0.d;	 Catch:{ SQLException -> 0x100d }
        r0 = r36;
        r2 = r0.d;	 Catch:{ SQLException -> 0x100d }
        r7 = defpackage.buw.a(r2);	 Catch:{ SQLException -> 0x100d }
        r0 = r36;
        r2 = r0.d;	 Catch:{ SQLException -> 0x100d }
        r8 = defpackage.buw.b(r2);	 Catch:{ SQLException -> 0x100d }
        r2 = r35;
        r3 = r28;
        r2.a(r3, r4, r6, r7, r8);	 Catch:{ SQLException -> 0x100d }
        r2 = "deleteTimelineEntities";
        r3 = "END";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x100d }
    L_0x0f93:
        r2 = "mergeTimelineSuccess";
        r3 = "BEGIN";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x100d }
        r28.setTransactionSuccessful();	 Catch:{ SQLException -> 0x100d }
        r2 = "mergeTimelineSuccess";
        r3 = "END";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x100d }
        r28.endTransaction();
        r2 = r9;
        goto L_0x00df;
    L_0x0fb2:
        r0 = r36;
        r2 = r0.i;	 Catch:{ SQLException -> 0x0877 }
        if (r2 == 0) goto L_0x0fe3;
    L_0x0fb8:
        r2 = "legacySaveNextCursor";
        r3 = "BEGIN";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0877 }
        r0 = r36;
        r5 = r0.d;	 Catch:{ SQLException -> 0x0877 }
        r0 = r36;
        r6 = r0.c;	 Catch:{ SQLException -> 0x0877 }
        r8 = 0;
        r0 = r36;
        r10 = r0.i;	 Catch:{ SQLException -> 0x0877 }
        r3 = r35;
        r4 = r27;
        r3.a(r4, r5, r6, r8, r10);	 Catch:{ SQLException -> 0x0877 }
        r2 = "legacySaveNextCursor";
        r3 = "END";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x0877 }
    L_0x0fe3:
        r9 = r17;
        goto L_0x0f37;
    L_0x0fe7:
        r2 = "legacyDeleteOldTimelineEntities";
        r3 = "BEGIN";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x100d }
        r0 = r36;
        r2 = r0.c;	 Catch:{ SQLException -> 0x100d }
        r0 = r36;
        r4 = r0.d;	 Catch:{ SQLException -> 0x100d }
        r0 = r35;
        r1 = r28;
        r0.a(r1, r2, r4);	 Catch:{ SQLException -> 0x100d }
        r2 = "legacyDeleteOldTimelineEntities";
        r3 = "END";
        r0 = r26;
        r0.a(r2, r3);	 Catch:{ SQLException -> 0x100d }
        goto L_0x0f93;
    L_0x100d:
        r2 = move-exception;
        r3 = r2;
        r2 = r9;
        goto L_0x0227;
    L_0x1012:
        r2 = move-exception;
        r34 = r2;
        r2 = r3;
        r3 = r34;
        goto L_0x0227;
    L_0x101a:
        r3 = move-exception;
        goto L_0x0227;
    L_0x101d:
        r2 = move-exception;
        r3 = r2;
        r2 = r4;
        goto L_0x0227;
    L_0x1022:
        r17 = r4;
        goto L_0x0a43;
    L_0x1026:
        r17 = r4;
        goto L_0x0a4e;
    L_0x102a:
        r3 = r4;
        goto L_0x0a09;
    L_0x102d:
        r2 = r17;
        goto L_0x0778;
    L_0x1031:
        r2 = r17;
        goto L_0x0707;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.library.provider.di.a(com.twitter.library.provider.ch):int");
    }

    private void a(ai aiVar, long j, int i, boolean z) {
        Collection linkedHashSet = new LinkedHashSet();
        for (cnm cnm : aiVar.c) {
            linkedHashSet.addAll(cnm.a);
        }
        a(linkedHashSet, j, i, -1, z);
    }

    public void a(com.twitter.android.revenue.d dVar, List<cnm> list, e eVar) {
        if (!list.isEmpty()) {
            k b = b().c(azm.class).b();
            long b2 = com.twitter.util.m.b();
            int i = 0;
            for (cnm cnm : list) {
                int i2 = i;
                for (cm cmVar : cnm.a) {
                    ((azn) b.d).a(cnm.b.a).b(cmVar.b).c(cmVar.w != null ? (long) cmVar.w.a() : 0).a(cnm.b.b).d(cnm.b.e).b(cnm.b.d).e(cnm.b.f).g(b2);
                    i2 |= b.b() >= 0 ? 1 : 0;
                }
                i = i2;
            }
            if (i != 0 && eVar != null) {
                dVar.c();
                eVar.a(cn.a);
                eVar.a();
            }
        }
    }

    static void a(av avVar, ContentValues contentValues) {
        int size;
        com.twitter.model.timeline.l lVar = avVar.i;
        if (lVar != null) {
            size = lVar.c.size() + 1;
        } else {
            size = 0;
        }
        contentValues.put("dismiss_actions", Integer.valueOf(size));
    }

    static boolean a(SQLiteDatabase sQLiteDatabase, long j, com.twitter.model.timeline.l lVar) {
        j.b(j > 0);
        int size = lVar.c.size() + 1;
        ContentValues contentValues = new ContentValues(3);
        for (com.twitter.model.timeline.i a : (List) com.twitter.util.collection.n.a(size).c(lVar.b).c(lVar.c).q()) {
            if (!a(sQLiteDatabase, contentValues, j, a)) {
                return false;
            }
        }
        return true;
    }

    static boolean a(SQLiteDatabase sQLiteDatabase, ContentValues contentValues, long j, com.twitter.model.timeline.i iVar) {
        contentValues.clear();
        Cursor query = sQLiteDatabase.query("feedback_action", new String[]{"COUNT(*)", "_id"}, "feedback_type=? AND prompt=? AND confirmation=?", new String[]{iVar.b, iVar.c, iVar.d}, null, null, null);
        try {
            long j2;
            if ((query.moveToFirst() ? query.getInt(0) : 0) > 0) {
                j2 = query.getLong(1);
            } else {
                contentValues.put("feedback_type", iVar.b);
                contentValues.put("prompt", iVar.c);
                contentValues.put("confirmation", iVar.d);
                long insertOrThrow = sQLiteDatabase.insertOrThrow("feedback_action", null, contentValues);
                contentValues.clear();
                j2 = insertOrThrow;
            }
            query.close();
            if (j2 <= 0) {
                return false;
            }
            Cursor query2 = sQLiteDatabase.query("dismiss_info", new String[]{"COUNT(*)"}, "timeline_id=? AND feedback_action_id=?", new String[]{String.valueOf(j), String.valueOf(j2)}, null, null, null);
            try {
                if ((query2.moveToFirst() ? query2.getInt(0) : 0) == 0) {
                    contentValues.put("timeline_id", Long.valueOf(j));
                    contentValues.put("feedback_action_id", Long.valueOf(j2));
                    sQLiteDatabase.insertOrThrow("dismiss_info", null, contentValues);
                    contentValues.clear();
                }
                query2.close();
                return true;
            } catch (Throwable th) {
                query2.close();
            }
        } catch (Throwable th2) {
            query.close();
        }
    }

    private static int a(SQLiteDatabase sQLiteDatabase, at atVar, int i, ContentValues contentValues) {
        int i2 = 0;
        for (Object obj : atVar.a) {
            int i3;
            if (obj instanceof bw) {
                a(((bw) ObjectUtils.a(obj)).a, i, null, 0, contentValues, false);
                if (sQLiteDatabase.insert("timeline", null, contentValues) > 0) {
                    i3 = i2 + 1;
                    i2 = i3;
                }
            }
            i3 = i2;
            i2 = i3;
        }
        return i2;
    }

    private static int a(an anVar, SQLiteDatabase sQLiteDatabase, ContentValues contentValues, boolean z) {
        List<com.twitter.model.moments.as> list = anVar.c;
        com.twitter.model.moments.aq aqVar = anVar.d;
        long j = anVar.f;
        int i = 0;
        for (com.twitter.model.moments.as asVar : list) {
            int i2;
            a(new com.twitter.model.moments.au(asVar, aqVar, j), (aj) anVar.b.get(Long.valueOf(asVar.b.b)), contentValues, z);
            long insert = sQLiteDatabase.insert("timeline", null, contentValues);
            if (insert > 0) {
                com.twitter.model.timeline.l lVar = anVar.e;
                if (i == 0 && lVar != null) {
                    a(sQLiteDatabase, insert, lVar);
                }
                i2 = i + 1;
            } else {
                i2 = i;
            }
            i = i2;
        }
        return i;
    }

    private static int a(List<TwitterUser> list, byte[] bArr, com.twitter.model.timeline.l lVar, ContentValues contentValues, SQLiteDatabase sQLiteDatabase, boolean z, int i) {
        int i2 = 0;
        for (TwitterUser a : list) {
            int i3;
            a(a, i, bArr, 536870912, contentValues, z);
            long insert = sQLiteDatabase.insert("timeline", null, contentValues);
            if (insert > 0) {
                i3 = i2 + 1;
                if (lVar != null) {
                    a(sQLiteDatabase, insert, lVar);
                    lVar = null;
                }
            } else {
                i3 = i2;
            }
            i2 = i3;
        }
        return i2;
    }

    private static long a(byte[] bArr, byte[] bArr2, ContentValues contentValues, SQLiteDatabase sQLiteDatabase, boolean z) {
        a(bArr, bArr2, 134217728, contentValues, z);
        return sQLiteDatabase.insert("timeline", null, contentValues);
    }

    private int a(Collection<cm> collection, long j, int i, long j2, boolean z) {
        Collection arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (cm cmVar : collection) {
            cm cmVar2;
            if (cmVar2.w != null) {
                arrayList2.add(cmVar2);
            } else {
                arrayList.add(cmVar2);
            }
        }
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            int i2;
            if (arrayList.isEmpty()) {
                i2 = 0;
            } else {
                i2 = a(arrayList, j, i, j2, false, false, false, null, z, null, true).size() + 0;
            }
            if (!arrayList2.isEmpty()) {
                arrayList = new ArrayList();
                Iterator it = arrayList2.iterator();
                int i3 = i2;
                while (it.hasNext()) {
                    cmVar2 = (cm) it.next();
                    arrayList.clear();
                    arrayList.add(cmVar2);
                    i3 += a(arrayList, j, i, (long) cmVar2.w.a(), false, false, false, null, z, null, true, true).size();
                }
                i2 = i3;
            }
            writableDatabase.setTransactionSuccessful();
            return i2;
        } finally {
            writableDatabase.endTransaction();
        }
    }

    private int a(SQLiteDatabase sQLiteDatabase, long j, int i, HashSet<Long> hashSet) {
        int i2 = 0;
        if (hashSet.isEmpty()) {
            return 0;
        }
        sQLiteDatabase.beginTransaction();
        Cursor query;
        try {
            SQLiteDatabase sQLiteDatabase2 = sQLiteDatabase;
            query = sQLiteDatabase2.query("timeline", new String[]{"data_id", "entity_id"}, "owner_id=? AND type=? AND data_type=1 AND flags&8=8", new String[]{String.valueOf(j), String.valueOf(i)}, null, null, null);
            if (query != null) {
                ArrayList arrayList = new ArrayList();
                while (query.moveToNext()) {
                    if (hashSet.contains(Long.valueOf(query.getLong(0)))) {
                        arrayList.add(Long.valueOf(query.getLong(1)));
                    }
                }
                query.close();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Long l = (Long) it.next();
                    i2 += sQLiteDatabase.delete("timeline", "owner_id=? AND type=? AND entity_id=?", new String[]{String.valueOf(j), String.valueOf(i), String.valueOf(l)});
                }
            }
            int a = a(sQLiteDatabase, "timeline", "data_type=1 AND data_id=? AND flags&1=1 AND owner_id=" + j + " AND " + "type" + '=' + i, CollectionUtils.e(hashSet)) + i2;
            sQLiteDatabase.setTransactionSuccessful();
            sQLiteDatabase.endTransaction();
            return a;
        } catch (Throwable th) {
            sQLiteDatabase.endTransaction();
        }
    }

    private static Pair<List<av>, Set<cm>> a(List<av> list, HashMap<Long, Integer> hashMap) {
        LinkedList linkedList = new LinkedList();
        HashSet hashSet = new HashSet();
        for (int size = list.size() - 1; size >= 0; size--) {
            Object obj = (av) list.get(size);
            if (obj instanceof com.twitter.model.timeline.aq) {
                com.twitter.model.timeline.aq aqVar = (com.twitter.model.timeline.aq) ObjectUtils.a(obj);
                cm[] cmVarArr = aqVar.a.b;
                cm cmVar = cmVarArr[cmVarArr.length - 1];
                Object obj2 = 1;
                int i = 0;
                for (int i2 = 0; i2 < cmVarArr.length; i2++) {
                    Object valueOf;
                    cm cmVar2 = cmVarArr[i2];
                    Long valueOf2 = Long.valueOf(cmVar2.bf_());
                    Integer num = (Integer) hashMap.get(valueOf2);
                    if (num != null) {
                        if (bc.d(num.intValue())) {
                            obj2 = null;
                        } else {
                            i = i2 + 1;
                        }
                    }
                    if (cmVar2 == cmVar) {
                        valueOf = Integer.valueOf(8);
                    } else {
                        valueOf = Integer.valueOf(4);
                    }
                    hashMap.put(valueOf2, valueOf);
                }
                if (obj2 != null && i > 0 && i < cmVarArr.length) {
                    Object a = a(aqVar, i);
                    hashSet.add(((com.twitter.model.timeline.aq) ObjectUtils.a(a)).a.b[0]);
                    obj = a;
                }
            }
            linkedList.addFirst(obj);
        }
        return new Pair(linkedList, hashSet);
    }

    static com.twitter.model.timeline.aq a(com.twitter.model.timeline.aq aqVar, int i) {
        String str;
        Object obj = aqVar.a.b;
        Object obj2 = new cm[(obj.length - i)];
        System.arraycopy(obj, i, obj2, 0, obj2.length);
        cm cmVar = obj2[0];
        TwitterUser twitterUser = obj[i - 1].C;
        long j = cmVar.j;
        if (j == twitterUser.c) {
            str = twitterUser.d;
        } else {
            String str2;
            if (!(aqVar.a.a == null || aqVar.a.a.d == null)) {
                for (com.twitter.model.timeline.g gVar : aqVar.a.a.d) {
                    if (j == gVar.b) {
                        str2 = gVar.d;
                        break;
                    }
                }
            }
            str2 = null;
            str = str2 == null ? twitterUser.d : str2;
        }
        if (str != null) {
            if (cmVar.I == null) {
                cmVar.I = (com.twitter.model.search.p) new q().q();
            }
            cmVar.I.f = (TwitterSocialProof) new ck().a(24).a(str).q();
        }
        return (com.twitter.model.timeline.aq) ((com.twitter.model.timeline.as) ((com.twitter.model.timeline.as) ((com.twitter.model.timeline.as) new com.twitter.model.timeline.as().a(new c(null, obj2)).b(aqVar.b)).a(aqVar.e)).b(aqVar.n)).q();
    }

    private void d(long j, int i, String str) {
        String str2;
        String[] strArr;
        if (TextUtils.isEmpty(str)) {
            str2 = "is_last=1 AND owner_id=? AND type=?";
            strArr = new String[]{String.valueOf(j), String.valueOf(i)};
        } else {
            str2 = "is_last=1 AND owner_id=? AND type=? AND timeline_tag=?";
            strArr = new String[]{String.valueOf(j), String.valueOf(i), str};
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("is_last", Integer.valueOf(0));
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            writableDatabase.update("timeline", contentValues, str2, strArr);
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    void b(long j, int i, String str) {
        if (c(j, i, str) != 0) {
            d(j, i, str);
            ContentValues contentValues = new ContentValues();
            contentValues.put("is_last", Integer.valueOf(1));
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                writableDatabase.update("timeline", contentValues, "_id=?", new String[]{String.valueOf(r0)});
                writableDatabase.setTransactionSuccessful();
            } finally {
                writableDatabase.endTransaction();
            }
        }
    }

    private void a(SQLiteDatabase sQLiteDatabase, long j, int i) {
        int i2;
        int i3 = 0;
        String str = "owner_id=? AND type=?";
        String[] strArr = new String[]{String.valueOf(j), String.valueOf(i)};
        SQLiteDatabase sQLiteDatabase2 = sQLiteDatabase;
        Cursor query = sQLiteDatabase2.query("timeline", new String[]{"COUNT(*)"}, "owner_id=? AND type=?", strArr, null, null, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    i2 = query.getInt(0) + 0;
                } else {
                    i2 = 0;
                }
                query.close();
            } catch (Throwable th) {
                query.close();
            }
        } else {
            i2 = 0;
        }
        if (i2 > 400) {
            cfb.b("DatabaseHelper", "deleteOldTimelineEntries: total count of timeline rows: " + i2);
            String[] strArr2 = new String[]{String.valueOf("_id")};
            String valueOf = String.valueOf(i2 - 100);
            Cursor query2 = sQLiteDatabase.query("timeline", strArr2, "owner_id=? AND type=?", strArr, null, null, "updated_at ASC, _id DESC", valueOf);
            if (query2 != null) {
                try {
                    if (query2.moveToFirst()) {
                        sQLiteDatabase.beginTransaction();
                        String[] strArr3 = new String[1];
                        do {
                            strArr3[0] = String.valueOf(query2.getLong(0));
                            i3 += sQLiteDatabase.delete("timeline", "_id=?", strArr3);
                        } while (query2.moveToNext());
                        cfb.b("DatabaseHelper", "deleteOldTimelineEntries: deleted: " + i3);
                        if (i3 > 0) {
                            a(4, i, j, 0, String.valueOf(a(j, i)));
                        }
                        sQLiteDatabase.setTransactionSuccessful();
                        sQLiteDatabase.endTransaction();
                    }
                    query2.close();
                } catch (Throwable th2) {
                    query2.close();
                }
            }
        }
    }

    public void a(long[] jArr, long j, int i) {
        if (jArr.length != 0) {
            String str = "UPDATE timeline SET flags=flags|2097152 WHERE timeline_scribe_group_id=? AND owner_id=? AND type=?";
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                String[] strArr = new String[]{null, String.valueOf(j), String.valueOf(i)};
                for (long valueOf : jArr) {
                    strArr[0] = String.valueOf(valueOf);
                    writableDatabase.execSQL("UPDATE timeline SET flags=flags|2097152 WHERE timeline_scribe_group_id=? AND owner_id=? AND type=?", strArr);
                }
                writableDatabase.setTransactionSuccessful();
            } finally {
                writableDatabase.endTransaction();
            }
        }
    }

    public boolean a(int i, long j, long j2) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        String str = "owner_id=? AND type=? AND data_type=? AND timeline_group_id=?";
        Cursor query = writableDatabase.query("timeline", new String[]{"entity_id"}, "owner_id=? AND type=? AND data_type=? AND timeline_group_id=?", new String[]{String.valueOf(j2), String.valueOf(i), String.valueOf(5), String.valueOf(j)}, null, null, null);
        boolean z = false;
        try {
            writableDatabase.beginTransaction();
            if (query.moveToFirst()) {
                int b = cj.b(i);
                a(j2, i, query.getLong(0), null);
                a(j2, 4, b, j);
                a(j2, 5, b, j);
                z = true;
                writableDatabase.setTransactionSuccessful();
            }
            writableDatabase.endTransaction();
            query.close();
            return z;
        } catch (Throwable th) {
            writableDatabase.endTransaction();
            query.close();
        }
    }

    void a(SQLiteDatabase sQLiteDatabase, long j, int i, int i2, int i3) {
        sQLiteDatabase.beginTransaction();
        String str = "owner_id=? AND type=?";
        int i4 = 0;
        SQLiteDatabase sQLiteDatabase2 = sQLiteDatabase;
        Cursor query = sQLiteDatabase2.query("timeline", new String[]{"timeline_group_id", "COUNT(*)"}, "owner_id=? AND type=?", new String[]{String.valueOf(j), String.valueOf(i)}, "timeline_group_id", null, "timeline_group_id");
        try {
            Pair create;
            int intValue;
            int i5;
            long j2;
            Collection<Pair> arrayList = new ArrayList(query.getCount());
            if (query.moveToFirst()) {
                while (true) {
                    create = Pair.create(Long.valueOf(query.getLong(0)), Integer.valueOf(query.getInt(1)));
                    arrayList.add(create);
                    intValue = i4 + ((Integer) create.second).intValue();
                    if (query.moveToNext()) {
                        i4 = intValue;
                    }
                }
                query.close();
                if (intValue > i3 && intValue > i2) {
                    i5 = intValue;
                    j2 = -1;
                    for (Pair create2 : arrayList) {
                        i5 -= ((Integer) create2.second).intValue();
                        if (i5 >= i2) {
                            break;
                        }
                        j2 = ((Long) create2.first).longValue();
                    }
                    if (j2 != -1) {
                        str = "owner_id=? AND type=? AND timeline_group_id<=?";
                        sQLiteDatabase.delete("timeline", "owner_id=? AND type=? AND timeline_group_id<=?", new String[]{String.valueOf(j), String.valueOf(i), String.valueOf(j2)});
                        str = "owner_id=? AND kind=? AND CAST(ref_id AS INT)<=?";
                        sQLiteDatabase.delete("cursors", "owner_id=? AND kind=? AND CAST(ref_id AS INT)<=?", new String[]{String.valueOf(j), String.valueOf(cj.b(i)), String.valueOf(j2)});
                    }
                }
                sQLiteDatabase.setTransactionSuccessful();
                sQLiteDatabase.endTransaction();
            }
            intValue = 0;
            break;
            query.close();
            i5 = intValue;
            j2 = -1;
            for (Pair create22 : arrayList) {
                i5 -= ((Integer) create22.second).intValue();
                if (i5 >= i2) {
                    j2 = ((Long) create22.first).longValue();
                } else {
                    break;
                    if (j2 != -1) {
                        str = "owner_id=? AND type=? AND timeline_group_id<=?";
                        sQLiteDatabase.delete("timeline", "owner_id=? AND type=? AND timeline_group_id<=?", new String[]{String.valueOf(j), String.valueOf(i), String.valueOf(j2)});
                        str = "owner_id=? AND kind=? AND CAST(ref_id AS INT)<=?";
                        sQLiteDatabase.delete("cursors", "owner_id=? AND kind=? AND CAST(ref_id AS INT)<=?", new String[]{String.valueOf(j), String.valueOf(cj.b(i)), String.valueOf(j2)});
                    }
                    sQLiteDatabase.setTransactionSuccessful();
                    sQLiteDatabase.endTransaction();
                }
            }
            if (j2 != -1) {
                str = "owner_id=? AND type=? AND timeline_group_id<=?";
                sQLiteDatabase.delete("timeline", "owner_id=? AND type=? AND timeline_group_id<=?", new String[]{String.valueOf(j), String.valueOf(i), String.valueOf(j2)});
                str = "owner_id=? AND kind=? AND CAST(ref_id AS INT)<=?";
                sQLiteDatabase.delete("cursors", "owner_id=? AND kind=? AND CAST(ref_id AS INT)<=?", new String[]{String.valueOf(j), String.valueOf(cj.b(i)), String.valueOf(j2)});
            }
            sQLiteDatabase.setTransactionSuccessful();
            sQLiteDatabase.endTransaction();
        } catch (Throwable th) {
            sQLiteDatabase.endTransaction();
        }
    }

    long c(long j, int i, String str) {
        String str2;
        String[] strArr;
        SQLiteDatabase readableDatabase = getReadableDatabase();
        if (TextUtils.isEmpty(str)) {
            str2 = "owner_id=? AND type=?";
            strArr = new String[]{String.valueOf(j), String.valueOf(i)};
        } else {
            str2 = "owner_id=? AND type=? AND timeline_tag=?";
            strArr = new String[]{String.valueOf(j), String.valueOf(i), str};
        }
        Cursor query = readableDatabase.query("timeline", cdd.a, str2, strArr, null, null, "sort_index ASC, updated_at ASC, _id DESC", "1");
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    long j2 = query.getLong(0);
                    return j2;
                }
                query.close();
            } finally {
                query.close();
            }
        }
        return 0;
    }

    long a(long j, int i) {
        Cursor query = getReadableDatabase().query("timeline", cdd.a, "owner_id=? AND type=? AND data_type=1", new String[]{String.valueOf(j), String.valueOf(i)}, null, null, "updated_at ASC, _id DESC", "1");
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    long j2 = query.getLong(1);
                    return j2;
                }
                query.close();
            } finally {
                query.close();
            }
        }
        return 0;
    }

    private long a(long j, int i, int i2) {
        if (i2 < 0) {
            i2 = 0;
        }
        Cursor query = getReadableDatabase().query("timeline_view", new String[]{"timeline_flags", "status_groups_g_status_id"}, "timeline_owner_id=? AND timeline_type=? AND timeline_data_type=1 AND status_groups_timeline=1 AND status_groups_pc IS NULL", new String[]{String.valueOf(j), String.valueOf(i)}, null, null, "status_groups_preview_draft_id DESC, timeline_sort_index DESC, timeline_updated_at DESC, _id ASC", null);
        if (query != null) {
            int i3 = i2;
            while (query.moveToNext()) {
                try {
                    int i4 = query.getInt(0);
                    if (bc.e(i4) || bc.d(i4)) {
                        if (i3 == 0) {
                            long j2 = query.getLong(1);
                            return j2;
                        }
                        i3--;
                    }
                } finally {
                    query.close();
                }
            }
            query.close();
        }
        return 0;
    }

    public void a(int i) {
        cfb.b("DatabaseHelper", "removeOldSearchQueries of type: " + i);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        Cursor query;
        try {
            query = writableDatabase.query("search_queries", ccs.a, "type=?", new String[]{String.valueOf(i)}, null, null, "time ASC");
            if (query == null) {
                writableDatabase.setTransactionSuccessful();
                writableDatabase.endTransaction();
                return;
            }
            int count = query.getCount() - 10;
            if (count <= 0) {
                writableDatabase.setTransactionSuccessful();
                query.close();
                writableDatabase.endTransaction();
                return;
            }
            cfb.b("DatabaseHelper", "Removing old search queries: " + count);
            while (query.moveToNext() && count >= 0) {
                long j = (long) query.getInt(0);
                writableDatabase.delete("search_queries", "_id=?", new String[]{String.valueOf(j)});
                count--;
            }
            writableDatabase.setTransactionSuccessful();
            query.close();
            writableDatabase.endTransaction();
        } catch (Throwable th) {
            writableDatabase.endTransaction();
        }
    }

    public String a(int i, int i2, long j, int i3) {
        switch (i3) {
            case mx.View_android_theme /*0*/:
                cfb.b("DatabaseHelper", "getCursor(): start cursor for type: " + i2 + ", kind: " + i + ", owner id: " + j);
                return "-1";
            case WireMessage.WIRE_CHAT /*1*/:
                String a = a(i, i2, j);
                cfb.b("DatabaseHelper", "getCursor(): next cursor for type: " + i2 + ", kind: " + i + ", owner id: " + j + " -> " + a);
                return a;
            default:
                throw new IllegalArgumentException("Invalid page type: " + i3);
        }
    }

    public void a(long j, long j2, e eVar) {
        cm c = c(j2);
        if (c != null) {
            long j3 = c.C.c;
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                int intValue;
                long c2 = c(writableDatabase, j2);
                if (c2 > 0) {
                    intValue = ((Integer) a(writableDatabase, j, j2, j3, c2).first).intValue() + 0;
                } else {
                    intValue = 0;
                }
                writableDatabase.setTransactionSuccessful();
                if (intValue > 0 && eVar != null) {
                    eVar.a(b);
                    eVar.a(c);
                }
            } finally {
                writableDatabase.endTransaction();
            }
        }
    }

    private long c(SQLiteDatabase sQLiteDatabase, long j) {
        SQLiteDatabase sQLiteDatabase2 = sQLiteDatabase;
        Cursor query = sQLiteDatabase2.query("status_groups_retweets_view", new String[]{"rt_status_groups_ref_id"}, "rt_status_groups_g_status_id=?", new String[]{String.valueOf(j)}, null, null, null);
        if (query == null) {
            return -1;
        }
        try {
            long j2;
            if (query.moveToFirst()) {
                j2 = query.getLong(0);
            } else {
                j2 = -1;
            }
            query.close();
            return j2;
        } catch (Throwable th) {
            query.close();
        }
    }

    private Pair<Integer, Long> a(SQLiteDatabase sQLiteDatabase, long j, long j2, long j3, long j4) {
        ContentValues contentValues;
        long j5 = -1;
        SQLiteDatabase sQLiteDatabase2 = sQLiteDatabase;
        Cursor query = sQLiteDatabase2.query("status_groups_view", new String[]{"status_groups_sender_id", "status_groups_ref_id", "status_groups_updated_at"}, "status_groups_owner_id=? AND status_groups_type=? AND status_groups_g_status_id=?", new String[]{String.valueOf(j), String.valueOf(7), String.valueOf(j2)}, null, null, null);
        if (query != null) {
            try {
                long j6;
                ContentValues contentValues2;
                if (query.moveToFirst()) {
                    j6 = query.getLong(0);
                    contentValues2 = new ContentValues(3);
                    contentValues2.put("sender_id", Long.valueOf(j6));
                    contentValues2.put("ref_id", Long.valueOf(query.getLong(1)));
                    contentValues2.put("updated_at", Long.valueOf(query.getLong(2)));
                } else {
                    j6 = -1;
                    contentValues2 = null;
                }
                query.close();
                j5 = j6;
                contentValues = contentValues2;
            } catch (Throwable th) {
                query.close();
            }
        } else {
            contentValues = null;
        }
        if (contentValues == null) {
            contentValues = new ContentValues(3);
            contentValues.put("sender_id", Long.valueOf(j3));
            contentValues.put("ref_id", Long.valueOf(j2));
            contentValues.put("tweet_type", Integer.valueOf(0));
        }
        return new Pair(Integer.valueOf(sQLiteDatabase.update("status_groups", contentValues, "owner_id=? AND sender_id=? AND ref_id=?", new String[]{String.valueOf(j), String.valueOf(j), String.valueOf(j4)})), Long.valueOf(j5));
    }

    public void a(long j, cm cmVar, e eVar) {
        a(j, cmVar, false, eVar);
    }

    public void a(long j, cm cmVar, boolean z, e eVar) {
        int i = 0;
        cfb.b("DatabaseHelper", "Removing status: " + cmVar.b + ", owned by: " + j);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            String valueOf = String.valueOf(j);
            String[] strArr = new String[]{valueOf, valueOf, String.valueOf(cmVar.b)};
            cm cmVar2 = cmVar.o;
            if (cmVar2 == null) {
                i = 0 + a("timeline_owner_id=? AND status_groups_sender_id=? AND status_groups_ref_id=?", "owner_id=? AND sender_id=? AND ref_id=?", strArr, false);
                TwitterUser twitterUser = cmVar.C;
                if (twitterUser != null && twitterUser.bf_() == j) {
                    i += d(writableDatabase, cmVar.b);
                }
            } else {
                b(j, cmVar2, z, eVar);
            }
            writableDatabase.setTransactionSuccessful();
            if (i > 0 && eVar != null) {
                eVar.a(b);
                eVar.a(c);
            }
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void b(long j, cm cmVar, boolean z, e eVar) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        String valueOf = String.valueOf(j);
        writableDatabase.beginTransaction();
        try {
            Object obj;
            int delete;
            long c = c(writableDatabase, cmVar.b);
            Pair a = a(writableDatabase, j, cmVar.b, cmVar.C.c, c);
            int intValue = 0 + ((Integer) a.first).intValue();
            long longValue = ((Long) a.second).longValue();
            String valueOf2 = String.valueOf(cmVar.b);
            if (cmVar.C.c == j) {
                obj = 1;
            } else {
                obj = null;
            }
            if (obj == null) {
                delete = writableDatabase.delete("timeline", "owner_id=? AND type=? AND data_type=1 AND data_id=?", new String[]{valueOf, String.valueOf(1), valueOf2}) + intValue;
            } else {
                delete = intValue;
            }
            ContentValues contentValues = new ContentValues(2);
            contentValues.put("retweet_count", Integer.valueOf(Math.max(0, cmVar.p - 1)));
            contentValues.put("favorite_count", Integer.valueOf(cmVar.E));
            delete += writableDatabase.update("statuses", contentValues, "status_id=?", new String[]{valueOf2});
            TwitterUser twitterUser = cmVar.C;
            Object obj2 = (twitterUser == null || p.a(f(twitterUser.bf_()))) ? 1 : null;
            Object obj3 = (longValue <= 0 || !p.a(f(longValue))) ? null : 1;
            obj3 = (obj != null || z || obj2 != null || (longValue > 0 && obj3 != null)) ? 1 : null;
            if (obj3 == null) {
                delete += writableDatabase.delete("timeline", "owner_id=? AND type=? AND data_type=1 AND data_id=?", new String[]{valueOf, String.valueOf(0), valueOf2});
            }
            if (obj == null) {
                delete += writableDatabase.delete("status_groups", "owner_id=? AND type=? AND g_status_id=?", new String[]{valueOf, String.valueOf(1), valueOf2});
            }
            Object d = delete + d(writableDatabase, c);
            writableDatabase.setTransactionSuccessful();
            if (d > null && eVar != null) {
                eVar.a(b);
                eVar.a(c);
            }
        } finally {
            writableDatabase.endTransaction();
        }
    }

    private static int d(SQLiteDatabase sQLiteDatabase, long j) {
        String str = "data_type=1 AND data_id=?";
        return (e(sQLiteDatabase, j) + 0) + sQLiteDatabase.delete("search_results", "data_type=1 AND data_id=?", new String[]{String.valueOf(j)});
    }

    private int a(SQLiteDatabase sQLiteDatabase, String str, String[] strArr) {
        Cursor query = sQLiteDatabase.query("statuses", cda.a, str, strArr, null, null, null);
        if (query == null) {
            return 0;
        }
        sQLiteDatabase.beginTransaction();
        int i = 0;
        while (query.moveToNext()) {
            try {
                ContentValues contentValues = new ContentValues();
                long j = query.getLong(0);
                long j2 = query.getLong(4);
                contentValues.put("in_r_status_id", "-1");
                contentValues.put("in_r_user_id", "-1");
                contentValues.put("flags", Long.valueOf(j2 | 256));
                i += sQLiteDatabase.update("statuses", contentValues, "_id=?", new String[]{String.valueOf(j)});
                j = query.getLong(1);
                j2 = query.getLong(2);
                long j3 = query.getLong(3);
                contentValues.clear();
                contentValues.put("in_r_status_id", String.valueOf(j2));
                contentValues.put("in_r_user_id", String.valueOf(j3));
                i += sQLiteDatabase.update("statuses", contentValues, "in_r_status_id=?", new String[]{String.valueOf(j)});
            } finally {
                query.close();
                sQLiteDatabase.endTransaction();
            }
        }
        sQLiteDatabase.setTransactionSuccessful();
        return i;
    }

    public int a(java.lang.String r17, java.lang.String[] r18) {
        /* JADX: method processing error */
/*
        Error: jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:42)
	at jadx.core.utils.ErrorsCounter.methodError(ErrorsCounter.java:66)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:33)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:37)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:59)
	at jadx.core.ProcessClass.process(ProcessClass.java:42)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:281)
	at jadx.api.JavaClass.decompile(JavaClass.java:59)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:161)
*/
        /*
        r16 = this;
        r8 = 0;
        r0 = r16.getWritableDatabase();
        r0.beginTransaction();
        r1 = "timeline_view";	 Catch:{ all -> 0x014b }
        r2 = cde.a;	 Catch:{ all -> 0x014b }
        r5 = 0;	 Catch:{ all -> 0x014b }
        r6 = 0;	 Catch:{ all -> 0x014b }
        r7 = 0;	 Catch:{ all -> 0x014b }
        r3 = r17;	 Catch:{ all -> 0x014b }
        r4 = r18;	 Catch:{ all -> 0x014b }
        r9 = r0.query(r1, r2, r3, r4, r5, r6, r7);	 Catch:{ all -> 0x014b }
        r1 = r9.moveToFirst();	 Catch:{ all -> 0x0146 }
        if (r1 == 0) goto L_0x0156;	 Catch:{ all -> 0x0146 }
    L_0x001e:
        r1 = 0;	 Catch:{ all -> 0x0146 }
        r10 = r9.getLong(r1);	 Catch:{ all -> 0x0146 }
        r1 = 4;	 Catch:{ all -> 0x0146 }
        r12 = r9.getInt(r1);	 Catch:{ all -> 0x0146 }
        r1 = 1;	 Catch:{ all -> 0x0146 }
        r2 = r9.getLong(r1);	 Catch:{ all -> 0x0146 }
        r13 = java.lang.String.valueOf(r2);	 Catch:{ all -> 0x0146 }
        r1 = 2;	 Catch:{ all -> 0x0146 }
        r2 = r9.getLong(r1);	 Catch:{ all -> 0x0146 }
        r14 = java.lang.String.valueOf(r2);	 Catch:{ all -> 0x0146 }
        r1 = 3;	 Catch:{ all -> 0x0146 }
        r2 = r9.getLong(r1);	 Catch:{ all -> 0x0146 }
        r15 = java.lang.String.valueOf(r2);	 Catch:{ all -> 0x0146 }
        r1 = "timeline";	 Catch:{ all -> 0x0146 }
        r2 = "_id=?";	 Catch:{ all -> 0x0146 }
        r3 = 1;	 Catch:{ all -> 0x0146 }
        r3 = new java.lang.String[r3];	 Catch:{ all -> 0x0146 }
        r4 = 0;	 Catch:{ all -> 0x0146 }
        r5 = java.lang.String.valueOf(r10);	 Catch:{ all -> 0x0146 }
        r3[r4] = r5;	 Catch:{ all -> 0x0146 }
        r1 = r0.delete(r1, r2, r3);	 Catch:{ all -> 0x0146 }
        r8 = r8 + r1;	 Catch:{ all -> 0x0146 }
        r1 = com.twitter.model.timeline.bc.a(r12);	 Catch:{ all -> 0x0146 }
        if (r1 == 0) goto L_0x0153;	 Catch:{ all -> 0x0146 }
    L_0x005e:
        r1 = "owner_id=? AND type=? AND entity_id=? AND data_type=1";	 Catch:{ all -> 0x0146 }
        r1 = 3;	 Catch:{ all -> 0x0146 }
        r4 = new java.lang.String[r1];	 Catch:{ all -> 0x0146 }
        r1 = 0;	 Catch:{ all -> 0x0146 }
        r4[r1] = r13;	 Catch:{ all -> 0x0146 }
        r1 = 1;	 Catch:{ all -> 0x0146 }
        r4[r1] = r14;	 Catch:{ all -> 0x0146 }
        r1 = 2;	 Catch:{ all -> 0x0146 }
        r4[r1] = r15;	 Catch:{ all -> 0x0146 }
        r1 = "timeline";	 Catch:{ all -> 0x0146 }
        r2 = 2;	 Catch:{ all -> 0x0146 }
        r2 = new java.lang.String[r2];	 Catch:{ all -> 0x0146 }
        r3 = 0;	 Catch:{ all -> 0x0146 }
        r5 = "_id";	 Catch:{ all -> 0x0146 }
        r2[r3] = r5;	 Catch:{ all -> 0x0146 }
        r3 = 1;	 Catch:{ all -> 0x0146 }
        r5 = "data_id";	 Catch:{ all -> 0x0146 }
        r2[r3] = r5;	 Catch:{ all -> 0x0146 }
        r3 = "owner_id=? AND type=? AND entity_id=? AND data_type=1";	 Catch:{ all -> 0x0146 }
        r5 = 0;	 Catch:{ all -> 0x0146 }
        r6 = 0;	 Catch:{ all -> 0x0146 }
        r7 = "_id ASC";	 Catch:{ all -> 0x0146 }
        r2 = r0.query(r1, r2, r3, r4, r5, r6, r7);	 Catch:{ all -> 0x0146 }
        r1 = com.twitter.model.timeline.bc.d(r12);	 Catch:{ all -> 0x0141 }
        if (r1 == 0) goto L_0x00d4;	 Catch:{ all -> 0x0141 }
    L_0x0091:
        r1 = r2.moveToLast();	 Catch:{ all -> 0x0141 }
        if (r1 == 0) goto L_0x013f;	 Catch:{ all -> 0x0141 }
    L_0x0097:
        r1 = 0;	 Catch:{ all -> 0x0141 }
        r4 = r2.getLong(r1);	 Catch:{ all -> 0x0141 }
        r1 = new android.content.ContentValues;	 Catch:{ all -> 0x0141 }
        r1.<init>();	 Catch:{ all -> 0x0141 }
        r3 = "flags";	 Catch:{ all -> 0x0141 }
        r6 = 8;	 Catch:{ all -> 0x0141 }
        r6 = java.lang.Integer.valueOf(r6);	 Catch:{ all -> 0x0141 }
        r1.put(r3, r6);	 Catch:{ all -> 0x0141 }
        r3 = "timeline";	 Catch:{ all -> 0x0141 }
        r6 = "_id=?";	 Catch:{ all -> 0x0141 }
        r7 = 1;	 Catch:{ all -> 0x0141 }
        r7 = new java.lang.String[r7];	 Catch:{ all -> 0x0141 }
        r10 = 0;	 Catch:{ all -> 0x0141 }
        r4 = java.lang.String.valueOf(r4);	 Catch:{ all -> 0x0141 }
        r7[r10] = r4;	 Catch:{ all -> 0x0141 }
        r0.update(r3, r1, r6, r7);	 Catch:{ all -> 0x0141 }
        r1 = r8;
    L_0x00c1:
        r2.close();	 Catch:{ all -> 0x0146 }
    L_0x00c4:
        r2 = r9.moveToNext();	 Catch:{ all -> 0x0146 }
        if (r2 != 0) goto L_0x0150;
    L_0x00ca:
        r9.close();	 Catch:{ all -> 0x014b }
        r0.setTransactionSuccessful();	 Catch:{ all -> 0x014b }
        r0.endTransaction();
        return r1;
    L_0x00d4:
        r1 = 4;
        r1 = new java.lang.String[r1];	 Catch:{ all -> 0x0141 }
        r3 = 0;	 Catch:{ all -> 0x0141 }
        r1[r3] = r13;	 Catch:{ all -> 0x0141 }
        r3 = 1;	 Catch:{ all -> 0x0141 }
        r1[r3] = r14;	 Catch:{ all -> 0x0141 }
        r3 = 2;	 Catch:{ all -> 0x0141 }
        r1[r3] = r15;	 Catch:{ all -> 0x0141 }
        r3 = 3;	 Catch:{ all -> 0x0141 }
        r4 = 2;	 Catch:{ all -> 0x0141 }
        r4 = java.lang.String.valueOf(r4);	 Catch:{ all -> 0x0141 }
        r1[r3] = r4;	 Catch:{ all -> 0x0141 }
        r3 = "timeline";	 Catch:{ all -> 0x0141 }
        r4 = "owner_id=? AND type=? AND entity_type=2 AND entity_id=? AND (flags&?)!=0";	 Catch:{ all -> 0x0141 }
        r1 = r0.delete(r3, r4, r1);	 Catch:{ all -> 0x0141 }
        r8 = r8 + r1;	 Catch:{ all -> 0x0141 }
        r1 = r2.moveToFirst();	 Catch:{ all -> 0x0141 }
        if (r1 == 0) goto L_0x013f;	 Catch:{ all -> 0x0141 }
    L_0x00f9:
        r1 = 0;	 Catch:{ all -> 0x0141 }
        r4 = r2.getLong(r1);	 Catch:{ all -> 0x0141 }
        r1 = (r10 > r4 ? 1 : (r10 == r4 ? 0 : -1));	 Catch:{ all -> 0x0141 }
        if (r1 <= 0) goto L_0x013f;	 Catch:{ all -> 0x0141 }
    L_0x0102:
        r1 = 1;	 Catch:{ all -> 0x0141 }
        r1 = new java.lang.String[r1];	 Catch:{ all -> 0x0141 }
        r3 = new android.content.ContentValues;	 Catch:{ all -> 0x0141 }
        r3.<init>();	 Catch:{ all -> 0x0141 }
    L_0x010a:
        r4 = 0;	 Catch:{ all -> 0x0141 }
        r5 = 0;	 Catch:{ all -> 0x0141 }
        r6 = r2.getLong(r5);	 Catch:{ all -> 0x0141 }
        r5 = java.lang.String.valueOf(r6);	 Catch:{ all -> 0x0141 }
        r1[r4] = r5;	 Catch:{ all -> 0x0141 }
        r4 = "flags";	 Catch:{ all -> 0x0141 }
        r5 = 1;	 Catch:{ all -> 0x0141 }
        r5 = java.lang.Integer.valueOf(r5);	 Catch:{ all -> 0x0141 }
        r3.put(r4, r5);	 Catch:{ all -> 0x0141 }
        r4 = "entity_id";	 Catch:{ all -> 0x0141 }
        r5 = 1;	 Catch:{ all -> 0x0141 }
        r6 = r2.getLong(r5);	 Catch:{ all -> 0x0141 }
        r5 = java.lang.Long.valueOf(r6);	 Catch:{ all -> 0x0141 }
        r3.put(r4, r5);	 Catch:{ all -> 0x0141 }
        r4 = "timeline";	 Catch:{ all -> 0x0141 }
        r5 = "_id=?";	 Catch:{ all -> 0x0141 }
        r0.update(r4, r3, r5, r1);	 Catch:{ all -> 0x0141 }
        r4 = r2.moveToNext();	 Catch:{ all -> 0x0141 }
        if (r4 != 0) goto L_0x010a;
    L_0x013f:
        r1 = r8;
        goto L_0x00c1;
    L_0x0141:
        r1 = move-exception;
        r2.close();	 Catch:{ all -> 0x0146 }
        throw r1;	 Catch:{ all -> 0x0146 }
    L_0x0146:
        r1 = move-exception;
        r9.close();	 Catch:{ all -> 0x014b }
        throw r1;	 Catch:{ all -> 0x014b }
    L_0x014b:
        r1 = move-exception;
        r0.endTransaction();
        throw r1;
    L_0x0150:
        r8 = r1;
        goto L_0x001e;
    L_0x0153:
        r1 = r8;
        goto L_0x00c4;
    L_0x0156:
        r1 = r8;
        goto L_0x00ca;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.library.provider.di.a(java.lang.String, java.lang.String[]):int");
    }

    public int b(String str, String[] strArr) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        Cursor query;
        try {
            int i;
            query = writableDatabase.query("timeline_view", cde.a, str, strArr, null, null, null);
            if (query != null) {
                i = 0;
                while (query.moveToNext()) {
                    if (bc.a(query.getInt(4))) {
                        i += writableDatabase.delete("timeline", "owner_id=? AND type=? AND entity_id=?", new String[]{String.valueOf(query.getLong(1)), String.valueOf(query.getInt(2)), String.valueOf(query.getLong(3))});
                    } else {
                        i += writableDatabase.delete("timeline", "_id=?", new String[]{String.valueOf(query.getLong(0))});
                    }
                }
                query.close();
            } else {
                i = 0;
            }
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
            return i;
        } catch (Throwable th) {
            writableDatabase.endTransaction();
        }
    }

    public int a(long j, long j2, boolean z, e eVar) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            cm b = b(writableDatabase, j2);
            if (b == null) {
                return -1;
            }
            int i;
            if (b.m == z) {
                i = b.p;
                writableDatabase.endTransaction();
                return i;
            }
            if (z) {
                i = b.p + 1;
            } else {
                i = Math.max(0, b.p - 1);
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("retweeted", Boolean.valueOf(z));
            contentValues.put("retweet_count", Integer.valueOf(i));
            writableDatabase.update("statuses", contentValues, "status_id=?", new String[]{String.valueOf(j2)});
            if (eVar != null) {
                eVar.a(b);
                eVar.a(c);
            }
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
            return i;
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public int b(long j, long j2, boolean z, e eVar) {
        cfb.b("DatabaseHelper", (z ? "Favorite" : "Unfavorite") + " status: " + j2 + ", owned by: " + j);
        cm c = c(j2);
        if (c == null) {
            return 0;
        }
        if (c.D == z) {
            return c.E;
        }
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            int i;
            String[] strArr = new String[]{String.valueOf(j2)};
            ContentValues contentValues = new ContentValues();
            contentValues.put("favorited", Boolean.valueOf(z));
            if (z) {
                i = c.E + 1;
            } else {
                i = Math.max(0, c.E - 1);
            }
            contentValues.put("favorite_count", Integer.valueOf(i));
            writableDatabase.update("statuses", contentValues, "status_id=?", strArr);
            if (!z) {
                writableDatabase.delete("status_groups", "owner_id=? AND type=? AND g_status_id=?", new String[]{String.valueOf(j), String.valueOf(2), String.valueOf(j2)});
                writableDatabase.delete("timeline", "owner_id=? AND type=? AND data_type=1 AND data_id=?", new String[]{String.valueOf(j), String.valueOf(8), String.valueOf(j2)});
            }
            writableDatabase.setTransactionSuccessful();
            if (eVar == null) {
                return i;
            }
            eVar.a(b);
            eVar.a(c);
            return i;
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void a(long j, long j2, List<Long> list, Set<Long> set, e eVar) {
        Cursor query;
        cfb.b("DatabaseHelper", "Delete tagged users: " + set + ", status: " + j);
        String[] strArr = new String[]{String.valueOf(j)};
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            query = writableDatabase.query("statuses", ccv.a, "status_id=?", strArr, null, null, null);
            if (query != null) {
                if (query.moveToFirst()) {
                    bg bgVar = (bg) com.twitter.util.serialization.m.a(query.getBlob(1), bg.b);
                    if (!(bgVar == null || bgVar.d.c())) {
                        com.twitter.model.core.z a = cpf.a(bgVar.d, list, set);
                        if (bgVar.d != a) {
                            Object obj = (bg) new bi(bgVar).a(a).q();
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("entities", a(obj, bg.b));
                            int update = writableDatabase.update("statuses", contentValues, "status_id=?", strArr) + 0;
                            int i = update;
                            for (Long l : set) {
                                i = writableDatabase.delete("user_groups", "owner_id=? AND type=? AND tag=? AND user_id=?", new String[]{String.valueOf(j2), String.valueOf(25), String.valueOf(j), String.valueOf(l)}) + i;
                            }
                            if (i > 0 && eVar != null) {
                                eVar.a(b);
                                eVar.a(df.a);
                            }
                        }
                    }
                }
                query.close();
            }
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
        } catch (Throwable th) {
            writableDatabase.endTransaction();
        }
    }

    public void a(long j, String str, e eVar) {
        cfb.b("DatabaseHelper", "Update status language: " + str + ", id: " + j);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            String[] strArr = new String[]{String.valueOf(j)};
            ContentValues contentValues = new ContentValues();
            contentValues.put("lang", str);
            writableDatabase.update("statuses", contentValues, "status_id=?", strArr);
            writableDatabase.setTransactionSuccessful();
            if (eVar != null) {
                eVar.a(b);
            }
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void a(int i, long j, long j2, e eVar) {
        cfb.b("DatabaseHelper", "Removing user: " + j2 + ", owned by: " + j + ", of type: " + i);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            writableDatabase.delete("user_groups", "owner_id=? AND type=? AND user_id=?", new String[]{String.valueOf(j), String.valueOf(i), String.valueOf(j2)});
            switch (i) {
                case mx.View_android_theme /*0*/:
                    String str = "owner_id=? AND type != 13";
                    long j3 = j;
                    a(writableDatabase, "timeline_owner_id=?", "owner_id=? AND type != 13", new String[]{String.valueOf(j)}, j3, 0, "owner_id=? AND type=? AND sender_id=?", new String[]{String.valueOf(j), String.valueOf(0), String.valueOf(j2)}, eVar);
                    break;
            }
            writableDatabase.setTransactionSuccessful();
            if (eVar != null) {
                eVar.a(dg.a);
            }
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void a(SQLiteDatabase sQLiteDatabase, String str, String str2, String[] strArr, long j, int i, String str3, String[] strArr2, e eVar) {
        String str4;
        String str5;
        if (TextUtils.isEmpty(str)) {
            str4 = "timeline_data_type=1 AND timeline_data_id=?";
        } else {
            str4 = "timeline_data_type=1 AND timeline_data_id=? AND " + str;
        }
        if (TextUtils.isEmpty(str2)) {
            str5 = "g_status_id=?";
        } else {
            str5 = "g_status_id=? AND " + str2;
        }
        Cursor query = sQLiteDatabase.query("status_groups LEFT JOIN statuses ON status_groups.g_status_id=statuses.status_id", ccx.a, str3, strArr2, null, null, null);
        if (query != null) {
            sQLiteDatabase.beginTransaction();
            try {
                if (query.moveToFirst()) {
                    String[] strArr3;
                    if (strArr == null) {
                        strArr3 = new String[1];
                    } else {
                        strArr3 = new String[(strArr.length + 1)];
                        System.arraycopy(strArr, 0, strArr3, 1, strArr.length);
                    }
                    int i2 = 0;
                    while (true) {
                        strArr3[0] = String.valueOf(query.getLong(0));
                        i2 += a(str4, str5, strArr3, true);
                        if (!query.moveToNext()) {
                            break;
                        }
                    }
                    if (i2 > 0) {
                        cfb.b("DatabaseHelper", "Deleted old friend statuses: " + i2);
                        if (i != -1) {
                            a(sQLiteDatabase, j, i, 3, 0);
                        }
                        if (eVar != null) {
                            eVar.a(b);
                            eVar.a(df.a);
                        }
                    }
                }
                sQLiteDatabase.setTransactionSuccessful();
            } finally {
                query.close();
                sQLiteDatabase.endTransaction();
            }
        }
    }

    public void d(long j, e eVar) {
        String str = "owner_id=? AND type IN (0,12,14,5,9,2) AND sender_id IN  (SELECT DISTINCT user_id FROM user_groups WHERE type=2)";
        Cursor query = getWritableDatabase().query(true, "status_groups", new String[]{"sender_id"}, "owner_id=? AND type IN (0,12,14,5,9,2) AND sender_id IN  (SELECT DISTINCT user_id FROM user_groups WHERE type=2)", new String[]{String.valueOf(j)}, "sender_id", null, null, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    do {
                        b(j, query.getLong(0), eVar);
                    } while (query.moveToNext());
                }
                query.close();
            } catch (Throwable th) {
                query.close();
            }
        }
    }

    public void b(long j, long j2, e eVar) {
        cfb.b("DatabaseHelper", "Removing user: " + j2 + ", owned by: " + j);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            String valueOf = String.valueOf(j);
            String valueOf2 = String.valueOf(j2);
            a(writableDatabase, j, j2, eVar);
            a(writableDatabase, null, null, null, -1, -1, "owner_id=? AND sender_id=? AND type IN (0,12,14,5,9,2)", new String[]{valueOf, valueOf2}, eVar);
            a(writableDatabase, null, null, null, -1, -1, "type=1 AND owner_id<>sender_id AND sender_id=?", new String[]{valueOf2}, eVar);
            if (writableDatabase.delete("user_groups", "owner_id=? AND user_id=? AND type IN (8,13,11,12,1,29,0,18,19,21,10,20,33)", new String[]{valueOf, valueOf2}) > 0 && eVar != null) {
                eVar.a(dg.o, dg.p, dg.q, dg.r, dg.i, dg.h, dg.s, dg.t, dg.w, dg.x, dg.v, dg.y);
            }
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void c(long j, long j2, e eVar) {
        cfb.b("DatabaseHelper", "Removing user: " + j2 + ", owned by: " + j + " From Notifications");
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            String valueOf = String.valueOf(j);
            String valueOf2 = String.valueOf(j2);
            a(writableDatabase, j, j2, eVar);
            if (writableDatabase.delete("status_groups", "owner_id=? AND sender_id=? AND type IN (12,14,5,2)", new String[]{valueOf, valueOf2}) > 0 && eVar != null) {
                eVar.a(dd.e);
            }
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    private static byte[] a(cfl<?> cfl_) {
        return a(com.twitter.util.collection.n.a(cfl_.a()), s.a(s.f));
    }

    private static int e(SQLiteDatabase sQLiteDatabase, long j) {
        cfb.b("DatabaseHelper", "Removing activity status: " + j);
        int i = "activities";
        Cursor query = sQLiteDatabase.query(i, ccd.a, "target_type=2 OR target_object_type=2", null, null, null, null);
        if (query == null) {
            return 0;
        }
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        sQLiteDatabase.beginTransaction();
        try {
            int i2;
            SQLiteDatabase sQLiteDatabase2;
            com.twitter.util.serialization.n a = s.a(s.f);
            while (query.moveToNext()) {
                Iterable iterable;
                List a2;
                int size;
                int i3;
                int i4;
                List a3;
                Object obj;
                i2 = query.getInt(7);
                int i5 = query.getInt(6);
                Object obj2 = null;
                if (2 == i2) {
                    iterable = (List) com.twitter.util.serialization.m.a(query.getBlob(8), a);
                    if (iterable != null) {
                        a2 = CollectionUtils.a(iterable, new dl(j));
                        size = iterable.size() - a2.size();
                        if (size > 0) {
                            i = i5 - size;
                            if (i <= null) {
                                arrayList.add(Long.valueOf(query.getLong(0)));
                            } else {
                                obj2 = 1;
                                i3 = query.getInt(10);
                                i4 = query.getInt(9);
                                if (2 == i3) {
                                    iterable = (List) com.twitter.util.serialization.m.a(query.getBlob(11), a);
                                    if (iterable != null) {
                                        a3 = CollectionUtils.a(iterable, new dm(j));
                                        size = iterable.size() - a3.size();
                                        if (size > 0) {
                                            i5 = i4 - size;
                                            if (i5 > 0) {
                                                arrayList.add(Long.valueOf(query.getLong(0)));
                                            } else {
                                                obj = 1;
                                                if (obj == null) {
                                                    hashMap.put(Long.valueOf(query.getLong(0)), new dp(i, i2, a2, i5, i3, a3));
                                                }
                                            }
                                        }
                                    }
                                }
                                a3 = null;
                                obj = obj2;
                                i5 = i4;
                                if (obj == null) {
                                    hashMap.put(Long.valueOf(query.getLong(0)), new dp(i, i2, a2, i5, i3, a3));
                                }
                            }
                        }
                    }
                }
                a2 = null;
                i = i5;
                i3 = query.getInt(10);
                i4 = query.getInt(9);
                if (2 == i3) {
                    iterable = (List) com.twitter.util.serialization.m.a(query.getBlob(11), a);
                    if (iterable != null) {
                        a3 = CollectionUtils.a(iterable, new dm(j));
                        size = iterable.size() - a3.size();
                        if (size > 0) {
                            i5 = i4 - size;
                            if (i5 > 0) {
                                obj = 1;
                                if (obj == null) {
                                    hashMap.put(Long.valueOf(query.getLong(0)), new dp(i, i2, a2, i5, i3, a3));
                                }
                            } else {
                                arrayList.add(Long.valueOf(query.getLong(0)));
                            }
                        }
                    }
                }
                a3 = null;
                obj = obj2;
                i5 = i4;
                if (obj == null) {
                    hashMap.put(Long.valueOf(query.getLong(0)), new dp(i, i2, a2, i5, i3, a3));
                }
            }
            cfb.b("DatabaseHelper", "Found " + hashMap.size() + " " + arrayList.size() + " activity records associated with " + j);
            ContentValues contentValues = new ContentValues();
            i2 = 0;
            for (Entry entry : hashMap.entrySet()) {
                contentValues.clear();
                dp dpVar = (dp) entry.getValue();
                if (dpVar.l != null) {
                    contentValues.put("targets_size", Integer.valueOf(dpVar.i));
                    contentValues.put("targets", a(dpVar.l, a));
                }
                if (dpVar.o != null) {
                    contentValues.put("target_objects_size", Integer.valueOf(dpVar.m));
                    contentValues.put("target_objects", a(dpVar.o, a));
                }
                sQLiteDatabase2 = sQLiteDatabase;
                i2 += sQLiteDatabase2.update("activities", contentValues, "_id=?", new String[]{((Long) entry.getKey()).toString()});
            }
            i = i2;
            while (arrayList.iterator().hasNext()) {
                sQLiteDatabase2 = sQLiteDatabase;
                i += sQLiteDatabase2.delete("activities", "_id=?", new String[]{((Long) arrayList.iterator().next()).toString()});
            }
            sQLiteDatabase.setTransactionSuccessful();
            return i;
        } finally {
            query.close();
            sQLiteDatabase.endTransaction();
        }
    }

    private static void a(SQLiteDatabase sQLiteDatabase, long j, long j2, e eVar) {
        String valueOf = String.valueOf(j);
        String valueOf2 = String.valueOf(j2);
        cfb.b("DatabaseHelper", "Removing activity user: " + valueOf2 + ", owned by: " + valueOf);
        Set<Long> hashSet = new HashSet();
        SQLiteDatabase sQLiteDatabase2 = sQLiteDatabase;
        Cursor query = sQLiteDatabase2.query("user_groups", new String[]{"tag"}, "owner_id=? AND user_id=? AND type IN (8,13)", new String[]{valueOf, valueOf2}, null, null, null);
        if (query != null) {
            while (query.moveToNext()) {
                try {
                    hashSet.add(Long.valueOf(query.getLong(0)));
                } finally {
                    query.close();
                }
            }
        }
        sQLiteDatabase2 = sQLiteDatabase;
        query = sQLiteDatabase2.query("status_groups", new String[]{"tag"}, "owner_id=? AND sender_id=? AND type IN (12,14)", new String[]{valueOf, valueOf2}, null, null, null);
        if (query != null) {
            while (query.moveToNext()) {
                try {
                    hashSet.add(Long.valueOf(query.getLong(0)));
                } finally {
                    query.close();
                }
            }
        }
        if (hashSet.isEmpty()) {
            cfb.b("DatabaseHelper", "No user or status group activity records associated with " + valueOf2);
            return;
        }
        Map hashMap = new HashMap();
        List arrayList = new ArrayList();
        String[] strArr = new String[1];
        com.twitter.util.serialization.n a = s.a(s.f);
        for (Long l : hashSet) {
            strArr[0] = l.toString();
            Cursor query2 = sQLiteDatabase.query("activities", ccd.a, "max_position=?", strArr, null, null, null);
            if (query2 != null) {
                while (query2.moveToNext()) {
                    Iterable iterable;
                    List a2;
                    int size;
                    int i;
                    int i2;
                    List a3;
                    Object obj;
                    int i3;
                    int i4;
                    Object obj2 = null;
                    int i5 = query2.getInt(4);
                    int i6 = query2.getInt(3);
                    if (1 == i5) {
                        iterable = (List) com.twitter.util.serialization.m.a(query2.getBlob(5), a);
                        if (iterable != null) {
                            a2 = CollectionUtils.a(iterable, new dn(j2));
                            size = iterable.size() - a2.size();
                            if (size > 0) {
                                i6 -= size;
                                if (i6 <= 0) {
                                    arrayList.add(Long.valueOf(query2.getLong(0)));
                                } else {
                                    obj2 = 1;
                                    i = query2.getInt(7);
                                    i2 = query2.getInt(6);
                                    if (1 == i) {
                                        iterable = (List) com.twitter.util.serialization.m.a(query2.getBlob(8), a);
                                        if (iterable != null) {
                                            a3 = CollectionUtils.a(iterable, new do(j2));
                                            size = iterable.size() - a3.size();
                                            if (size > 0) {
                                                i2 -= size;
                                                if (i2 > 0) {
                                                    arrayList.add(Long.valueOf(query2.getLong(0)));
                                                } else {
                                                    obj = 1;
                                                    i3 = query2.getInt(10);
                                                    i4 = query2.getInt(9);
                                                    if (obj == null) {
                                                        hashMap.put(Long.valueOf(query2.getLong(0)), new dp(0, 0, 0, 0, 0, i6, i5, a2, i2, i, a3, null, i4, i3, null, null));
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    a3 = null;
                                    obj = obj2;
                                    i3 = query2.getInt(10);
                                    i4 = query2.getInt(9);
                                    if (obj == null) {
                                        hashMap.put(Long.valueOf(query2.getLong(0)), new dp(0, 0, 0, 0, 0, i6, i5, a2, i2, i, a3, null, i4, i3, null, null));
                                    }
                                }
                            }
                        }
                    }
                    a2 = null;
                    try {
                        i = query2.getInt(7);
                        i2 = query2.getInt(6);
                        if (1 == i) {
                            iterable = (List) com.twitter.util.serialization.m.a(query2.getBlob(8), a);
                            if (iterable != null) {
                                a3 = CollectionUtils.a(iterable, new do(j2));
                                size = iterable.size() - a3.size();
                                if (size > 0) {
                                    i2 -= size;
                                    if (i2 > 0) {
                                        obj = 1;
                                        i3 = query2.getInt(10);
                                        i4 = query2.getInt(9);
                                        if (obj == null) {
                                            hashMap.put(Long.valueOf(query2.getLong(0)), new dp(0, 0, 0, 0, 0, i6, i5, a2, i2, i, a3, null, i4, i3, null, null));
                                        }
                                    } else {
                                        arrayList.add(Long.valueOf(query2.getLong(0)));
                                    }
                                }
                            }
                        }
                        a3 = null;
                        obj = obj2;
                        i3 = query2.getInt(10);
                        i4 = query2.getInt(9);
                        if (obj == null) {
                            hashMap.put(Long.valueOf(query2.getLong(0)), new dp(0, 0, 0, 0, 0, i6, i5, a2, i2, i, a3, null, i4, i3, null, null));
                        }
                    } finally {
                        query2.close();
                    }
                }
            }
        }
        cfb.b("DatabaseHelper", "Found " + hashMap.size() + " " + arrayList.size() + " activity records associated with " + valueOf2);
        if (!hashMap.isEmpty() || !arrayList.isEmpty()) {
            sQLiteDatabase.beginTransaction();
            try {
                SQLiteDatabase sQLiteDatabase3;
                ContentValues contentValues = new ContentValues();
                for (Entry entry : hashMap.entrySet()) {
                    contentValues.clear();
                    dp dpVar = (dp) entry.getValue();
                    if (dpVar.h != null) {
                        contentValues.put("sources_size", Integer.valueOf(dpVar.f));
                        contentValues.put("sources", a(dpVar.h, a));
                    }
                    if (dpVar.k != null) {
                        contentValues.put("targets_size", Integer.valueOf(dpVar.i));
                        contentValues.put("targets", a(dpVar.k, a));
                    } else if (dpVar.l != null) {
                        contentValues.put("targets_size", Integer.valueOf(dpVar.i));
                        contentValues.put("targets", a(dpVar.l, a));
                    }
                    if (dpVar.o != null) {
                        contentValues.put("target_objects_size", Integer.valueOf(dpVar.m));
                        contentValues.put("target_objects", a(dpVar.o, a));
                    }
                    sQLiteDatabase3 = sQLiteDatabase;
                    sQLiteDatabase3.update("activities", contentValues, "_id=?", new String[]{((Long) entry.getKey()).toString()});
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    sQLiteDatabase3 = sQLiteDatabase;
                    sQLiteDatabase3.delete("activities", "_id=?", new String[]{((Long) it.next()).toString()});
                }
                if (eVar != null) {
                    eVar.a(cl.a);
                }
                sQLiteDatabase.setTransactionSuccessful();
            } finally {
                sQLiteDatabase.endTransaction();
            }
        }
    }

    public void a(long j, TwitterUser twitterUser, e eVar) {
        Collection b = com.twitter.util.collection.n.b((Object) twitterUser);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            a(b, j, 14, -1, null, null, true, eVar);
            a(b, 4);
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void a(long j, long[] jArr, e eVar) {
        Collection hashSet = new HashSet();
        for (long a : jArr) {
            TwitterUser a2 = a(a);
            if (a2 != null) {
                hashSet.add(a2);
            }
        }
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            a(hashSet, j, 14, -1, null, eVar);
            a(hashSet, 4);
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void a(Collection<TwitterUser> collection, int i) {
        Map hashMap = new HashMap();
        for (TwitterUser twitterUser : collection) {
            hashMap.put(Long.valueOf(twitterUser.c), twitterUser);
        }
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        Cursor query;
        try {
            query = writableDatabase.query("tokens", new String[]{"ref_id"}, "ref_id NOT NULL AND ref_id>0", null, null, null, null);
            if (query != null) {
                while (query.moveToNext()) {
                    hashMap.remove(Long.valueOf(query.getLong(0)));
                }
                query.close();
            }
            if (hashMap.isEmpty()) {
                writableDatabase.setTransactionSuccessful();
                writableDatabase.endTransaction();
                return;
            }
            ContentValues contentValues = new ContentValues();
            for (TwitterUser twitterUser2 : hashMap.values()) {
                Object<String> hashSet = new HashSet();
                hashSet.add('@' + twitterUser2.k);
                hashSet.add(twitterUser2.k);
                Collections.addAll(hashSet, twitterUser2.d.split(" "));
                contentValues.put("type", Integer.valueOf(i));
                contentValues.put("ref_id", Long.valueOf(twitterUser2.c));
                for (String put : hashSet) {
                    contentValues.put("text", put);
                    writableDatabase.insert("tokens", null, contentValues);
                }
            }
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
        } catch (Throwable th) {
            writableDatabase.endTransaction();
        }
    }

    public void a(long j, TwitterUser twitterUser, int i, cg cgVar, e eVar) {
        Collection arrayList = new ArrayList();
        arrayList.add(twitterUser);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            a(arrayList, cgVar.n.c, i, cgVar.bf_(), null, null, true, eVar);
            switch (i) {
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    a(cgVar);
                    break;
                case mx.UserView_actionButtonPaddingRight /*5*/:
                    arrayList = new ArrayList();
                    arrayList.add(cgVar);
                    a(arrayList, j, 2, null, false, eVar);
                    a(cgVar.bf_(), true);
                    if (eVar != null) {
                        eVar.a(cw.a);
                        break;
                    }
                    break;
            }
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void a(int i, long j, long j2, cg cgVar, e eVar) {
        Cursor query;
        long bf_ = cgVar.bf_();
        cfb.b("DatabaseHelper", "Removing list user " + j2 + ", of type: " + i + ", from list id: " + bf_);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            writableDatabase.delete("user_groups", "owner_id=? AND type=? AND user_id=?", new String[]{String.valueOf(j), String.valueOf(i), String.valueOf(j2)});
            int i2;
            switch (i) {
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    query = writableDatabase.query("status_groups_view", ccs.a, "status_groups_owner_id=? AND status_groups_type=? AND status_groups_tag=?AND status_groups_sender_id=?", new String[]{String.valueOf(j), String.valueOf(9), String.valueOf(bf_), String.valueOf(j2)}, null, null, null);
                    if (query != null) {
                        if (query.getCount() > 0) {
                            i2 = 0;
                            String[] strArr = new String[1];
                            while (query.moveToNext()) {
                                strArr[0] = String.valueOf(query.getLong(0));
                                i2 += writableDatabase.delete("status_groups", "_id=?", strArr);
                            }
                            if (i2 > 0 && eVar != null) {
                                eVar.a(b);
                            }
                        }
                        query.close();
                        break;
                    }
                    break;
                case mx.UserView_actionButtonPaddingRight /*5*/:
                    cfb.b("DatabaseHelper", "Removing subscriber list: " + bf_ + ", owned by: " + j2);
                    i2 = writableDatabase.delete("list_mapping", "list_mapping_list_id=? AND list_mapping_type=? AND list_mapping_user_id=?", new String[]{String.valueOf(bf_), String.valueOf(2), String.valueOf(j)});
                    a(bf_, false);
                    if (i2 > 0 && eVar != null) {
                        eVar.a(cw.a);
                        break;
                    }
            }
            if (i == 5) {
                a(cgVar);
            }
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
            if (eVar != null) {
                eVar.a(dg.a);
            }
        } catch (Throwable th) {
            writableDatabase.endTransaction();
        }
    }

    public void d(long j, long j2, e eVar) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            String valueOf = String.valueOf(j2);
            writableDatabase.delete("topics", "ev_type=5 AND ev_id=?", new String[]{valueOf});
            writableDatabase.delete("list_mapping", "list_mapping_list_id=?", new String[]{valueOf});
            int delete = writableDatabase.delete("user_groups", "type=? AND tag=?", new String[]{String.valueOf(4), valueOf});
            if (delete > 0) {
                a(writableDatabase, j, 4, 1, 0);
            }
            int delete2 = writableDatabase.delete("user_groups", "type=? AND tag=?", new String[]{String.valueOf(5), valueOf});
            if (delete2 > 0) {
                a(writableDatabase, j, 5, 1, 0);
            }
            Object delete3 = writableDatabase.delete("status_groups", "type=? AND tag=?", new String[]{String.valueOf(9), valueOf});
            if (delete3 > null) {
                a(writableDatabase, j, 9, 3, 0);
            }
            writableDatabase.setTransactionSuccessful();
            if (eVar != null) {
                if (delete3 > null) {
                    eVar.a(b);
                }
                if (delete + delete2 > 0) {
                    eVar.a(dg.b);
                }
                eVar.a(cw.a);
            }
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void a(long j, ExtendedProfile extendedProfile, e eVar) {
        cfb.b("DatabaseHelper", "saveExtendedProfile: " + j + " extendedProfile: " + extendedProfile);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("extended_profile_fields", a((Object) extendedProfile, ExtendedProfile.a));
            int update = writableDatabase.update("users", contentValues, "user_id=?", new String[]{String.valueOf(j)});
            writableDatabase.setTransactionSuccessful();
            if (eVar != null && update > 0) {
                eVar.a(dh.a);
                if (update == 1) {
                    eVar.a(ContentUris.withAppendedId(dh.b, j));
                }
            }
            writableDatabase.endTransaction();
        } catch (Throwable th) {
            writableDatabase.endTransaction();
        }
    }

    public void b(long j, int i) {
        cfb.b("DatabaseHelper", "saveFriendship: " + j + " friendship: " + i);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("friendship", Integer.valueOf(i));
            contentValues.put("friendship_time", Long.valueOf(com.twitter.util.m.b()));
            writableDatabase.update("users", contentValues, "user_id=?", new String[]{String.valueOf(j)});
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public int f(long j) {
        Cursor query = getReadableDatabase().query("users", new String[]{"friendship"}, "user_id=?", new String[]{String.valueOf(j)}, null, null, null);
        if (query == null) {
            return 0;
        }
        try {
            int i;
            if (query.moveToFirst()) {
                i = query.getInt(0);
            } else {
                i = 0;
            }
            query.close();
            return i;
        } catch (Throwable th) {
            query.close();
        }
    }

    public void a(long j, int i, e eVar) {
        a(j, i, eVar, false, -1);
    }

    public void a(long j, int i, e eVar, boolean z, long j2) {
        Cursor query;
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            query = writableDatabase.query("users", ccn.a, "user_id=?", new String[]{String.valueOf(j)}, null, null, null);
            if (query != null) {
                a(query, i, true, eVar, z, j2);
                query.close();
            }
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
        } catch (Throwable th) {
            writableDatabase.endTransaction();
        }
    }

    public void a(Collection<Long> collection, int i, e eVar) {
        String str;
        String[] a;
        Cursor query;
        SQLiteDatabase readableDatabase = getReadableDatabase();
        ArrayList arrayList = new ArrayList();
        Iterator it = collection.iterator();
        int size = collection.size() / 10;
        if (size > 0) {
            str = "user_id IN (?,?,?,?,?,?,?,?,?,?)";
            a = a(10, null);
            for (int i2 = 0; i2 < size; i2++) {
                for (int i3 = 0; i3 < 10; i3++) {
                    a[i3] = ((Long) it.next()).toString();
                }
                query = readableDatabase.query("users", ccn.a, str, a, null, null, null);
                if (query != null) {
                    arrayList.add(query);
                }
            }
        }
        str = "user_id=?";
        a = new String[1];
        while (it.hasNext()) {
            a[0] = ((Long) it.next()).toString();
            query = readableDatabase.query("users", ccn.a, str, a, null, null, null);
            if (query != null) {
                arrayList.add(query);
            }
        }
        if (!arrayList.isEmpty()) {
            query = new MergeCursor((Cursor[]) arrayList.toArray(new Cursor[arrayList.size()]));
            try {
                a(query, i, true, eVar);
            } finally {
                query.close();
            }
        }
    }

    public void a(HashMap<Long, Integer> hashMap, e eVar) {
        MergeCursor mergeCursor;
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            String str;
            String[] a;
            int i;
            Cursor query;
            ArrayList arrayList = new ArrayList();
            Iterator it = hashMap.keySet().iterator();
            int size = hashMap.size() / 10;
            if (size > 0) {
                str = "user_id IN (?,?,?,?,?,?,?,?,?,?)";
                a = a(10, null);
                for (int i2 = 0; i2 < size; i2++) {
                    for (i = 0; i < 10; i++) {
                        a[i] = ((Long) it.next()).toString();
                    }
                    query = writableDatabase.query("users", ccn.a, str, a, null, null, null);
                    if (query != null) {
                        arrayList.add(query);
                    }
                }
            }
            str = "user_id=?";
            a = new String[1];
            while (it.hasNext()) {
                a[0] = ((Long) it.next()).toString();
                query = writableDatabase.query("users", ccn.a, str, a, null, null, null);
                if (query != null) {
                    arrayList.add(query);
                }
            }
            if (!arrayList.isEmpty()) {
                mergeCursor = new MergeCursor((Cursor[]) arrayList.toArray(new Cursor[arrayList.size()]));
                int i3 = 0;
                if (mergeCursor.moveToFirst()) {
                    ContentValues contentValues = new ContentValues();
                    long b = com.twitter.util.m.b();
                    i = 0;
                    while (true) {
                        long j = mergeCursor.getLong(0);
                        int i4 = mergeCursor.getInt(1);
                        if (hashMap.containsKey(Long.valueOf(j))) {
                            if ((((Integer) hashMap.get(Long.valueOf(j))).intValue() & 1) != 0) {
                                i3 = p.a(i4, 1);
                            } else {
                                i3 = p.b(i4, 1);
                            }
                            contentValues.put("friendship", Integer.valueOf(i3));
                            contentValues.put("friendship_time", Long.valueOf(b));
                            i3 = writableDatabase.update("users", contentValues, "user_id=?", new String[]{String.valueOf(j)}) + i;
                        } else {
                            i3 = i;
                        }
                        if (!mergeCursor.moveToNext()) {
                            break;
                        }
                        i = i3;
                    }
                }
                if (i3 > 0 && eVar != null) {
                    eVar.a(b);
                    eVar.a(c);
                }
                mergeCursor.close();
            }
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
        } catch (Throwable th) {
            writableDatabase.endTransaction();
        }
    }

    public void b(long j, int i, e eVar) {
        b(j, i, eVar, false, -1);
    }

    public void b(long j, int i, e eVar, boolean z, long j2) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        Cursor query;
        try {
            query = writableDatabase.query("users", ccn.a, "user_id=?", new String[]{String.valueOf(j)}, null, null, null);
            if (query != null) {
                a(query, i, false, eVar, z, j2);
                query.close();
            }
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
        } catch (Throwable th) {
            writableDatabase.endTransaction();
        }
    }

    private void a(Cursor cursor, int i, boolean z, e eVar) {
        a(cursor, i, z, eVar, false, -1);
    }

    private void a(Cursor cursor, int i, boolean z, e eVar, boolean z2, long j) {
        int i2;
        List<Long> arrayList = new ArrayList();
        if (cursor.moveToFirst()) {
            Cursor query;
            int i3;
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.beginTransaction();
            ContentValues contentValues = new ContentValues();
            long b = com.twitter.util.m.b();
            int i4 = 0;
            do {
                int a;
                long j2 = cursor.getLong(0);
                int i5 = cursor.getInt(1);
                if (z) {
                    a = p.a(i5, i);
                } else {
                    try {
                        a = p.b(i5, i);
                    } catch (Throwable th) {
                        writableDatabase.endTransaction();
                    }
                }
                Object obj = ((i5 ^ a) & 1) != 0 ? 1 : null;
                boolean d = cx.d(cursor.getInt(4));
                if (!(!z2 || obj == null || d)) {
                    i3 = cursor.getInt(2);
                    String str = "followers";
                    if (z) {
                        i3++;
                    } else {
                        i3 = Math.max(0, i3 - 1);
                    }
                    contentValues.put(str, Integer.valueOf(i3));
                }
                contentValues.put("friendship", Integer.valueOf(a));
                contentValues.put("friendship_time", Long.valueOf(b));
                i3 = writableDatabase.update("users", contentValues, "user_id=?", new String[]{String.valueOf(j2)});
                i4 += i3;
                if (i3 > 0) {
                    arrayList.add(Long.valueOf(j2));
                }
                cfb.b("DatabaseHelper", "updateFriendship: " + j2 + " friendship now: " + a);
            } while (cursor.moveToNext());
            if (!(!z2 || j == -1 || arrayList.isEmpty())) {
                query = writableDatabase.query("users", ccn.a, "user_id=?", new String[]{String.valueOf(j)}, null, null, null);
                if (query != null) {
                    if (query.moveToFirst()) {
                        contentValues = new ContentValues(1);
                        i3 = query.getInt(3);
                        contentValues.put("friends", Integer.valueOf(z ? i3 + 1 : Math.max(0, i3 - 1)));
                        writableDatabase.update("users", contentValues, "user_id=?", new String[]{String.valueOf(j)});
                        arrayList.add(Long.valueOf(j));
                    }
                    query.close();
                }
            }
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
            i2 = i4;
        } else {
            i2 = 0;
        }
        if (i2 > 0 && eVar != null) {
            eVar.a(b);
            eVar.a(c);
            for (Long l : arrayList) {
                eVar.a(ContentUris.withAppendedId(dh.b, l.longValue()));
            }
        }
    }

    public void a(long j, boolean z) {
        int i = 1;
        cfb.b("DatabaseHelper", "updateFollowList: " + j + " follow: " + z);
        ContentValues contentValues = new ContentValues();
        Object l = l(j);
        if (!z) {
            i = 2;
        }
        l.f = i;
        contentValues.put("ev_content", a(l, com.twitter.model.topic.e.b));
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            writableDatabase.update("topics", contentValues, "ev_type=5 AND ev_id=?", new String[]{String.valueOf(j)});
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void a(cg cgVar) {
        cfb.b("DatabaseHelper", "updateList: " + cgVar.bf_());
        Object b = b(cgVar);
        ContentValues contentValues = new ContentValues();
        contentValues.put("ev_content", a(b, com.twitter.model.topic.e.b));
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            writableDatabase.update("topics", contentValues, "ev_type=5 AND ev_id=?", new String[]{String.valueOf(cgVar.bf_())});
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    private com.twitter.model.topic.e l(long j) {
        Cursor query;
        Throwable th;
        try {
            com.twitter.model.topic.e eVar;
            query = getReadableDatabase().query("topics", new String[]{"ev_content"}, "ev_type=5 AND ev_id=?", new String[]{String.valueOf(j)}, null, null, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        eVar = (com.twitter.model.topic.e) com.twitter.util.serialization.m.a(query.getBlob(0), com.twitter.model.topic.e.b);
                        if (query != null) {
                            query.close();
                        }
                        if (eVar != null) {
                            return new com.twitter.model.topic.e();
                        }
                        return eVar;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (query != null) {
                        query.close();
                    }
                    throw th;
                }
            }
            eVar = null;
            if (query != null) {
                query.close();
            }
            if (eVar != null) {
                return eVar;
            }
            return new com.twitter.model.topic.e();
        } catch (Throwable th3) {
            th = th3;
            query = null;
            if (query != null) {
                query.close();
            }
            throw th;
        }
    }

    private com.twitter.model.topic.e b(cg cgVar) {
        com.twitter.model.topic.e l = l(cgVar.bf_());
        l.f = cgVar.a ? 1 : 2;
        l.c = cgVar.c;
        l.d = cgVar.d;
        l.e = cgVar.b;
        return l;
    }

    public void h() {
        b().h();
    }

    public void g(long j) {
        String[] strArr = new String[]{String.valueOf(j)};
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        Cursor query;
        Cursor query2;
        try {
            String str;
            synchronized (this.h) {
                if (this.h.isEmpty()) {
                    str = null;
                } else {
                    str = "search_id NOT" + a(this.h);
                }
            }
            writableDatabase.delete("search_results", str, null);
            writableDatabase.delete("status_groups", "type IN (9,10,21,7) AND owner_id=?", strArr);
            writableDatabase.delete("timeline", "owner_id!=?", strArr);
            writableDatabase.delete("status_groups", "owner_id!=?", strArr);
            writableDatabase.delete("user_groups", "owner_id!=?", strArr);
            int length = a.length;
            for (int i = 0; i < length; i++) {
                writableDatabase.delete("user_groups", "type=?", new String[]{String.valueOf(r3[i])});
            }
            writableDatabase.delete("search_queries", "type=?", new String[]{String.valueOf(7)});
            writableDatabase.delete("cursors", "owner_id!=?", strArr);
            writableDatabase.delete("topics", "ev_type=5 AND ev_owner_id!=?", strArr);
            writableDatabase.delete("ads", " COALESCE(assigned_slot_id, slot_id) IS NOT NULL AND  COALESCE(assigned_slot_id, slot_id) NOT IN ( SELECT CAST(data AS TEXT) FROM timeline WHERE data_type=11)", null);
            for (int i2 : new int[]{0, 28, 27, 2, 17, 23, 24, 25, 5}) {
                writableDatabase.delete("status_groups", "type=? AND tag=? AND g_status_id NOT IN (SELECT DISTINCT data_id FROM timeline WHERE data_type=1 AND data_type_group=" + i2 + " AND " + "data_type_tag" + '=' + -1 + ')' + " AND " + "g_status_id" + " NOT IN (" + "SELECT " + "ad_id" + " FROM " + "ads" + ")", new String[]{String.valueOf(i2), String.valueOf(-1)});
                query = writableDatabase.query("status_groups", new String[]{"tag", "g_status_id", "_id"}, "type=? AND pc NOT NULL  AND g_status_id NOT IN (SELECT ad_id FROM ads)", new String[]{String.valueOf(i2)}, null, null, null, null);
                if (query != null) {
                    str = "data_type=? AND data_type_group=? AND data_type_tag=? AND data_id=?";
                    String[] strArr2 = new String[4];
                    strArr2[0] = String.valueOf(1);
                    strArr2[1] = String.valueOf(i2);
                    while (query.moveToNext()) {
                        strArr2[2] = String.valueOf(query.getLong(0));
                        strArr2[3] = String.valueOf(query.getLong(1));
                        query2 = writableDatabase.query("timeline", new String[]{"_id"}, "data_type=? AND data_type_group=? AND data_type_tag=? AND data_id=?", strArr2, null, null, null);
                        if (query2 != null) {
                            if (query2.getCount() == 0) {
                                writableDatabase.delete("status_groups", "_id=?", new String[]{String.valueOf(query.getLong(2))});
                            }
                            query2.close();
                        }
                    }
                    query.close();
                }
            }
            writableDatabase.delete("statuses", "status_id NOT IN (SELECT DISTINCT g_status_id FROM status_groups)", null);
            writableDatabase.delete("users", "user_id NOT IN (SELECT DISTINCT author_id FROM statuses) AND user_id NOT IN (SELECT DISTINCT sender_id FROM status_groups) AND user_id NOT IN (SELECT DISTINCT user_id FROM user_groups) AND user_id NOT IN (SELECT DISTINCT user_id FROM conversation_participants) AND user_id NOT IN (SELECT DISTINCT user_id FROM conversation_entries) AND user_id NOT IN (SELECT DISTINCT ev_owner_id FROM topics) AND user_id NOT IN (SELECT DISTINCT data_id FROM timeline WHERE data_type=8)", null);
            writableDatabase.delete("topics", "_id NOT IN (SELECT DISTINCT data_id FROM timeline WHERE (data_type=3 OR data_type=7)) AND _id NOT IN (SELECT DISTINCT data_id FROM search_results WHERE data_type=3)", null);
            writableDatabase.delete("ads_account_permissions", "last_synced < ?", new String[]{String.valueOf(com.twitter.util.m.b() - 3600000)});
            writableDatabase.delete("business_profiles", "last_synced < ?", new String[]{String.valueOf(com.twitter.util.m.b() - 3600000)});
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
        } catch (Throwable th) {
            writableDatabase.endTransaction();
        }
    }

    public boolean a(int i, int i2, long j, String str, String str2, e eVar) {
        String b = b(i, i2, j, str);
        if (b != null && Long.parseLong(b) >= Long.parseLong(str2)) {
            return false;
        }
        a(i, i2, j, str, str2);
        if (eVar != null && 14 == i) {
            a(ar.g(), eVar);
        }
        return true;
    }

    public String b(int i, long j, long j2) {
        return a(i, j, m(j2));
    }

    public String a(int i, long j, String str) {
        return a(i, 2, j, str);
    }

    public String c(int i, long j, long j2) {
        return b(i, j, m(j2));
    }

    public String b(int i, long j, String str) {
        return a(i, 3, j, str);
    }

    public String a(int i, int i2, long j, String str) {
        if (i2 != 2 && i2 != 3) {
            throw new IllegalArgumentException("Unexpected type: " + i2);
        } else if (i == -1) {
            return null;
        } else {
            String str2;
            String str3;
            String str4;
            String[] strArr;
            if (i2 == 2) {
                str2 = " DESC";
                str3 = "<?";
            } else {
                str2 = " ASC";
                str3 = ">?";
            }
            String str5 = "CAST(ref_id AS INT)";
            if (str != null) {
                str4 = "owner_id=? AND type=? AND kind=? AND CAST(ref_id AS INT)" + str3;
                strArr = new String[]{String.valueOf(j), String.valueOf(i2), String.valueOf(i), str};
            } else {
                str4 = "owner_id=? AND type=? AND kind=?";
                strArr = new String[]{String.valueOf(j), String.valueOf(i2), String.valueOf(i)};
            }
            Cursor query = getReadableDatabase().query("cursors", new String[]{"next", "ref_id"}, str4, strArr, null, null, "CAST(ref_id AS INT)" + str2, "1");
            try {
                if (query.moveToFirst()) {
                    str3 = query.getString(0);
                    return str3;
                }
                query.close();
                return null;
            } finally {
                query.close();
            }
        }
    }

    public String a(int i, int i2, long j) {
        return a(i, i2, j, 0);
    }

    public String a(int i, int i2, long j, long j2) {
        return b(i, i2, j, m(j2));
    }

    public String b(int i, int i2, long j, String str) {
        String str2;
        String[] strArr;
        String str3 = null;
        if (str != null) {
            str2 = "owner_id=? AND type=? AND kind=? AND ref_id=?";
            strArr = new String[]{String.valueOf(j), String.valueOf(i2), String.valueOf(i), String.valueOf(str)};
        } else {
            str2 = "owner_id=? AND type=? AND kind=? AND ref_id IS NULL";
            strArr = new String[]{String.valueOf(j), String.valueOf(i2), String.valueOf(i)};
        }
        Cursor query = getReadableDatabase().query("cursors", ccl.a, str2, strArr, null, null, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    str3 = query.getString(0);
                } else {
                    query.close();
                }
            } finally {
                query.close();
            }
        }
        return str3;
    }

    public void a(int i, int i2, long j, long j2, String str) {
        a(i, i2, j, m(j2), str);
    }

    public void a(int i, int i2, long j, String str, String str2) {
        if (str2 != null) {
            String str3;
            String[] strArr;
            ContentValues contentValues = new ContentValues();
            contentValues.put("kind", Integer.valueOf(i));
            contentValues.put("type", Integer.valueOf(i2));
            contentValues.put("owner_id", Long.valueOf(j));
            if (str != null) {
                contentValues.put("ref_id", str);
            } else {
                contentValues.putNull("ref_id");
            }
            contentValues.put("next", str2);
            if (str != null) {
                contentValues.put("ref_id", str);
                str3 = "owner_id=? AND type=? AND kind=? AND ref_id=?";
                strArr = new String[]{String.valueOf(j), String.valueOf(i2), String.valueOf(i), String.valueOf(str)};
            } else {
                contentValues.putNull("ref_id");
                str3 = "owner_id=? AND type=? AND kind=? AND ref_id IS NULL";
                strArr = new String[]{String.valueOf(j), String.valueOf(i2), String.valueOf(i)};
            }
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                if (writableDatabase.update("cursors", contentValues, str3, strArr) == 0) {
                    writableDatabase.insertOrThrow("cursors", "owner_id", contentValues);
                }
            } catch (Throwable e) {
                bbn.a(new bbl(e).a("cursor.kind", Integer.valueOf(i)).a("cursor.type", Integer.valueOf(i2)).a("cursor.ownerId", Long.valueOf(j)).a("cursor.refId", str).a("cursor.next", str2));
            } catch (Throwable th) {
                writableDatabase.endTransaction();
            }
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
            cfb.b("DatabaseHelper", "Saved cursor for type: " + i2 + ", kind: " + i + ", refId " + str + ", next: " + str2);
        }
    }

    private static void a(SQLiteDatabase sQLiteDatabase, long j, int i, int i2, long j2) {
        a(sQLiteDatabase, j, i, i2, m(j2));
    }

    private static void a(SQLiteDatabase sQLiteDatabase, long j, int i, int i2, String str) {
        int delete;
        if (str != null) {
            delete = sQLiteDatabase.delete("cursors", "owner_id=? AND type=? AND kind=? AND ref_id=?", new String[]{String.valueOf(j), String.valueOf(i), String.valueOf(i2), String.valueOf(str)});
        } else {
            delete = sQLiteDatabase.delete("cursors", "owner_id=? AND type=? AND kind=? AND ref_id IS NULL", new String[]{String.valueOf(j), String.valueOf(i), String.valueOf(i2)});
        }
        if (cfb.a() && r0 > 0) {
            cfb.b("DatabaseHelper", "Invalidated cursor: " + i2);
        }
    }

    public void a(long j, int i, int i2, long j2) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            a(writableDatabase, j, i, i2, j2);
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    private static String m(long j) {
        return j > 0 ? Long.toString(j) : null;
    }

    private void a(long j, int i, long[] jArr, e eVar) {
        cfb.b("DatabaseHelper", "Marking timeline owned by: " + j + ", of type: " + i + " as read.");
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            int update;
            ContentValues contentValues = new ContentValues();
            contentValues.put("is_read", Integer.valueOf(1));
            if (jArr == null) {
                update = writableDatabase.update("timeline", contentValues, "owner_id=? AND type=?", new String[]{String.valueOf(j), String.valueOf(i)});
            } else {
                update = 0;
                int i2 = 0;
                while (i2 < jArr.length) {
                    i2++;
                    update = writableDatabase.update("timeline", contentValues, "_id=?", new String[]{String.valueOf(jArr[i2])}) + update;
                }
            }
            writableDatabase.setTransactionSuccessful();
            if (update > 0 && eVar != null) {
                eVar.a(df.a);
            }
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void a(long j, int i, long j2, long[] jArr, e eVar) {
        cfb.b("DatabaseHelper", "Marking statuses owned by: " + j + ", of type: " + i + ", tag: " + j2 + " as read.");
        if (i == 0) {
            a(j, 0, jArr, eVar);
            return;
        }
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            int update;
            ContentValues contentValues = new ContentValues();
            contentValues.put("is_read", Integer.valueOf(1));
            if (jArr == null) {
                update = writableDatabase.update("status_groups", contentValues, "owner_id=? AND type=? AND tag=?", new String[]{String.valueOf(j), String.valueOf(i), String.valueOf(j2)});
            } else {
                update = 0;
                int i2 = 0;
                while (i2 < jArr.length) {
                    i2++;
                    update = writableDatabase.update("status_groups", contentValues, "_id=?", new String[]{String.valueOf(jArr[i2])}) + update;
                }
            }
            writableDatabase.setTransactionSuccessful();
            if (update != 0 && eVar != null) {
                switch (i) {
                    case WireMessage.WIRE_CHAT /*1*/:
                        eVar.a(ContentUris.withAppendedId(dd.k, j), ContentUris.withAppendedId(dc.b, j));
                    case WireMessage.WIRE_CONTROL /*2*/:
                        eVar.a(ContentUris.withAppendedId(dd.j, j));
                    case mx.UserView_actionButtonPaddingRight /*5*/:
                    case mx.TweetView_mediaDivider /*23*/:
                    case mx.TweetView_autoLink /*24*/:
                    case mx.TweetView_linkSelectedColor /*25*/:
                        eVar.a(ContentUris.withAppendedId(dd.e, j));
                    case mx.TwitterEditText_messageSize /*9*/:
                        eVar.a(ContentUris.withAppendedId(dd.d, j));
                    default:
                }
            }
        } finally {
            writableDatabase.endTransaction();
        }
    }

    private void c(long j, int i, e eVar) {
        long c = c(j, i);
        if (c != 0) {
            cfb.b("DatabaseHelper", "Tagging the oldest user of type: " + i + " owner id: " + j + " row id: " + c);
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("is_last", Integer.valueOf(0));
                writableDatabase.update("user_groups", contentValues, "is_last=1", null);
                contentValues.put("is_last", Integer.valueOf(1));
                writableDatabase.update("user_groups", contentValues, "_id=?", new String[]{String.valueOf(c)});
                writableDatabase.setTransactionSuccessful();
                if (eVar != null) {
                    eVar.a(dg.a);
                }
            } finally {
                writableDatabase.endTransaction();
            }
        }
    }

    private void d(long j, int i, e eVar) {
        long e = e(j, i);
        if (e != 0) {
            cfb.b("DatabaseHelper", "Tagging the oldest status of type: " + i + " owner id: " + j + " row id: " + e);
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("is_last", Integer.valueOf(0));
                writableDatabase.update("status_groups", contentValues, "is_last=1", null);
                contentValues.put("is_last", Integer.valueOf(1));
                writableDatabase.update("status_groups", contentValues, "_id=?", new String[]{String.valueOf(e)});
                writableDatabase.setTransactionSuccessful();
                if (eVar != null) {
                    eVar.a(b);
                }
            } finally {
                writableDatabase.endTransaction();
            }
        }
    }

    private void a(Set<String> set, e eVar) {
        if (eVar != null) {
            eVar.a(ct.a);
            eVar.a(cu.a);
            for (String str : set) {
                eVar.a(Uri.withAppendedPath(cr.a, str), Uri.withAppendedPath(cq.a, str));
            }
        }
    }

    private void g(long j, e eVar) {
        long i = i(j);
        if (i != 0) {
            cfb.b("DatabaseHelper", "Tagging the oldest list owned by: " + j + " row id: " + i);
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("list_is_last", Integer.valueOf(0));
                writableDatabase.update("list_mapping", contentValues, "list_is_last=1", null);
                contentValues.put("list_is_last", Integer.valueOf(1));
                writableDatabase.update("list_mapping", contentValues, "_id=?", new String[]{String.valueOf(i)});
                writableDatabase.setTransactionSuccessful();
                if (eVar != null) {
                    eVar.a(cw.a);
                }
            } finally {
                writableDatabase.endTransaction();
            }
        }
    }

    private void c(int i, e eVar) {
        long f = f(i);
        if (f != 0) {
            cfb.b("DatabaseHelper", "Tagging the oldest activity of type: " + i + " activity id: " + f);
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("is_last", Integer.valueOf(0));
                writableDatabase.update("activities", contentValues, "is_last=1", null);
                writableDatabase.update("notifications_tab", contentValues, "is_last=1", null);
                contentValues.put("is_last", Integer.valueOf(1));
                writableDatabase.update("activities", contentValues, "_id=?", new String[]{String.valueOf(f)});
                SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
                sQLiteQueryBuilder.setTables("notifications_tab");
                writableDatabase.update("notifications_tab", contentValues, "_id IN ( " + sQLiteQueryBuilder.buildQuery(new String[]{"_id"}, null, null, null, "sort_id ASC", "1") + ")", null);
                writableDatabase.setTransactionSuccessful();
                if (eVar != null) {
                    eVar.a(cl.a);
                }
            } finally {
                writableDatabase.endTransaction();
            }
        }
    }

    public long c(long j, int i) {
        Cursor query = getReadableDatabase().query("user_groups_view", ccs.a, "user_groups_owner_id=? AND user_groups_type=?", new String[]{String.valueOf(j), String.valueOf(i)}, null, null, "_id DESC", "1");
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    long j2 = query.getLong(0);
                    return j2;
                }
                query.close();
            } finally {
                query.close();
            }
        }
        return 0;
    }

    public long d(long j, int i) {
        Cursor query = getReadableDatabase().query("status_groups_view", ccy.a, "status_groups_owner_id=? AND status_groups_type=?", new String[]{String.valueOf(j), String.valueOf(i)}, null, null, "status_groups_preview_draft_id DESC, status_groups_updated_at ASC, _id DESC", "1");
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    long j2 = query.getLong(0);
                    return j2;
                }
                query.close();
            } finally {
                query.close();
            }
        }
        return 0;
    }

    public long e(long j, int i) {
        Cursor query = getReadableDatabase().query("status_groups_view", ccs.a, "status_groups_owner_id=? AND status_groups_type=?", new String[]{String.valueOf(j), String.valueOf(i)}, null, null, "status_groups_preview_draft_id DESC, status_groups_updated_at ASC, _id DESC", "1");
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    long j2 = query.getLong(0);
                    return j2;
                }
                query.close();
            } finally {
                query.close();
            }
        }
        return 0;
    }

    public int f(long j, int i) {
        Cursor query = getReadableDatabase().query("status_groups_view", ccs.a, "status_groups_owner_id=? AND status_groups_type=? AND status_groups_is_read=0", new String[]{String.valueOf(j), String.valueOf(i)}, null, null, null, null);
        if (query == null) {
            return 0;
        }
        try {
            int count = query.getCount();
            return count;
        } finally {
            query.close();
        }
    }

    public List<com.twitter.library.database.dm.d> a(boolean z) {
        Cursor query = getReadableDatabase().query("dm_inbox", bih.a, null, null, null, null, "conversations_sort_event_id DESC");
        com.twitter.util.collection.n d = com.twitter.util.collection.n.d();
        if (query != null) {
            cca cca = new cca(query, this.f, this.e, null, z);
            while (cca.moveToNext()) {
                try {
                    d.c(new com.twitter.library.database.dm.d(cca));
                } finally {
                    cca.close();
                }
            }
        }
        return (List) d.q();
    }

    public int i() {
        Cursor query = getReadableDatabase().query("conversation_entries", new String[]{"COUNT(_id)"}, null, null, null, null, null);
        if (query != null) {
            try {
                if (query.moveToNext()) {
                    int i = query.getInt(0);
                    return i;
                }
                query.close();
            } finally {
                query.close();
            }
        }
        return 0;
    }

    public void a(bia bia, e eVar) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            a(writableDatabase, bia);
            a(writableDatabase, (com.twitter.model.dms.o) bia, false, eVar);
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void a(com.twitter.model.dms.h hVar, boolean z) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            bic.a(writableDatabase, z, hVar);
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void a(com.twitter.model.dms.o oVar, boolean z, e eVar) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            a(writableDatabase, oVar, z, eVar);
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    private void a(SQLiteDatabase sQLiteDatabase, com.twitter.model.dms.o oVar, boolean z, e eVar) {
        if (oVar != null) {
            ar d = ar.d();
            Collection<a> a = oVar.a();
            Collection<TwitterUser> b = oVar.b();
            Collection<com.twitter.model.dms.h> c = oVar.c();
            long f = oVar.f();
            if (!CollectionUtils.b((Collection) b)) {
                for (TwitterUser f2 : b) {
                    f2.f();
                }
                a((Collection) b, -1, -1, -1, null, null, true, eVar);
            }
            if (!CollectionUtils.b((Collection) a)) {
                cfb.b("DatabaseHelper", "Adding conversation entries: " + a.size());
                for (a aVar : a) {
                    bkr.b(aVar.g(), sQLiteDatabase, this.f, z, true).b(aVar);
                    d.c(aVar.h);
                }
            }
            if (!CollectionUtils.b((Collection) c)) {
                cfb.b("DatabaseHelper", "Adding conversation info: " + c.size());
                for (com.twitter.model.dms.h hVar : c) {
                    a(hVar, true);
                    d.c(hVar.a);
                }
            }
            if (!(2 != oVar.d() || CollectionUtils.b((Collection) a) || ((a) CollectionUtils.b((List) a)) == null)) {
                long e = oVar.e();
                ContentValues contentValues = new ContentValues(1);
                contentValues.put("min_event_id", Long.valueOf(e));
                SQLiteDatabase sQLiteDatabase2 = sQLiteDatabase;
                sQLiteDatabase2.update("conversations", contentValues, "conversation_id=? AND (min_event_id < 0  OR min_event_id > ?)", new String[]{aVar.h, String.valueOf(e)});
            }
            if (f > 0) {
                a(14, 0, this.f, "server", String.valueOf(f), eVar);
            }
            if (!CollectionUtils.b((Collection) a) || !CollectionUtils.b((Collection) b) || !CollectionUtils.b((Collection) c)) {
                a((Set) d.q(), eVar);
            }
        }
    }

    public void a(bia bia) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            a(writableDatabase, bia);
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    private void a(SQLiteDatabase sQLiteDatabase, bia bia) {
        cfb.b("DatabaseHelper", "Clearing conversation data");
        sQLiteDatabase.delete("conversation_entries", "entry_type!=?", new String[]{String.valueOf(1)});
        if (bia == null || bia.c().isEmpty()) {
            sQLiteDatabase.delete("conversations", "conversation_id NOT IN (SELECT conversation_id FROM conversation_entries WHERE entry_type=1) AND conversation_id NOT LIKE 'CONV_%'", null);
            sQLiteDatabase.delete("dm_card_state", "card_conversation_id NOT IN (SELECT conversation_id FROM conversation_entries WHERE entry_type=1) AND card_conversation_id NOT LIKE 'CONV_%'", null);
        } else {
            sQLiteDatabase.delete("conversations", "conversation_id NOT IN (?) AND conversation_id NOT IN (SELECT conversation_id FROM conversation_entries WHERE entry_type=1) AND conversation_id NOT LIKE 'CONV_%'", new String[]{TextUtils.join(",", bia.c())});
            sQLiteDatabase.delete("dm_card_state", "card_conversation_id NOT IN (?) AND card_conversation_id NOT IN (SELECT conversation_id FROM conversation_entries WHERE entry_type=1) AND card_conversation_id NOT LIKE 'CONV_%'", new String[]{TextUtils.join(",", bia.c())});
        }
        sQLiteDatabase.execSQL("DELETE FROM conversation_participants WHERE conversation_id NOT IN (SELECT conversation_id FROM conversation_entries WHERE entry_type=1) AND conversation_id NOT LIKE 'CONV_%';");
        a(sQLiteDatabase, this.f, 0, 12, 0);
        a(sQLiteDatabase, this.f, 0, 13, 0);
        a(sQLiteDatabase, this.f, 0, 14, 0);
    }

    public List<Long> a(String str, long j) {
        Cursor query = getReadableDatabase().query("conversation_participants", cdl.a, "conversation_id=?", new String[]{str}, null, null, null, null);
        com.twitter.util.collection.n d = com.twitter.util.collection.n.d();
        if (query != null) {
            while (query.moveToNext()) {
                try {
                    d.c(Long.valueOf(query.getLong(1)));
                } finally {
                    query.close();
                }
            }
        }
        if (d.i() > 1) {
            d.d(Long.valueOf(j));
        }
        return (List) d.q();
    }

    public void a(bgv bgv, boolean z, e eVar) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            bkr.a(bgv.g(), writableDatabase, this.f, true, z).b(bgv);
            writableDatabase.setTransactionSuccessful();
            a(Collections.singleton(bgv.h), eVar);
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void a(String str, boolean z, e eVar) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues(1);
            contentValues.put("is_muted", Boolean.valueOf(z));
            writableDatabase.update("conversations", contentValues, "conversation_id=?", new String[]{str});
            writableDatabase.setTransactionSuccessful();
            if (eVar != null) {
                eVar.a(ct.a);
            }
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public String a(String str, String str2, e eVar) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            String a = a(str, writableDatabase);
            ContentValues contentValues = new ContentValues(1);
            contentValues.put("title", str2);
            writableDatabase.update("conversations", contentValues, "conversation_id=?", new String[]{str});
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
            if (eVar != null) {
                eVar.a(ct.a);
            }
            return a;
        } catch (Throwable th) {
            writableDatabase.endTransaction();
            if (eVar != null) {
                eVar.a(ct.a);
            }
        }
    }

    private String a(String str, SQLiteDatabase sQLiteDatabase) {
        String str2 = null;
        SQLiteDatabase sQLiteDatabase2 = sQLiteDatabase;
        Cursor query = sQLiteDatabase2.query("conversations", new String[]{"title"}, "conversation_id=?", new String[]{str}, null, null, null, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    str2 = query.getString(0);
                }
                query.close();
            } catch (Throwable th) {
                query.close();
            }
        }
        return str2;
    }

    public List<bie> b(String str) {
        String[] strArr;
        com.twitter.util.collection.n d = com.twitter.util.collection.n.d();
        List list = (List) com.twitter.util.collection.n.d().b(bie.b).c((Object) "max(conversation_entries_sort_entry_id)").q();
        StringBuilder stringBuilder = new StringBuilder("conversation_entries_entry_type" + a(Integer.valueOf(0), Integer.valueOf(19), Integer.valueOf(1), Integer.valueOf(10), Integer.valueOf(8), Integer.valueOf(20), Integer.valueOf(17), Integer.valueOf(21), Integer.valueOf(22)));
        if (str != null) {
            stringBuilder.append(" AND conversation_entries_conversation_id=?");
            strArr = new String[]{str};
        } else {
            strArr = null;
        }
        Cursor query = getReadableDatabase().query("conversation", (String[]) list.toArray(new String[list.size()]), stringBuilder.toString(), strArr, "conversation_entries_conversation_id", null, null, null);
        if (query != null) {
            while (query.moveToNext()) {
                try {
                    d.c(new bie(query));
                } finally {
                    query.close();
                }
            }
        }
        return (List) d.q();
    }

    public long c(String str) {
        Cursor query = getReadableDatabase().query("conversations", new String[]{"last_readable_event_id"}, str == null ? null : "conversation_id=?", str == null ? null : new String[]{str}, null, null, "last_readable_event_id DESC", "1");
        if (query != null) {
            try {
                if (query.moveToNext()) {
                    long j = query.getLong(0);
                    return j;
                }
                query.close();
            } finally {
                query.close();
            }
        }
        return -1;
    }

    public long a(String str, boolean z) {
        StringBuilder stringBuilder = new StringBuilder();
        com.twitter.util.collection.n d = com.twitter.util.collection.n.d();
        if (str != null) {
            stringBuilder.append("conversation_id=?");
            d.c((Object) str);
        }
        if (z) {
            if (str != null) {
                stringBuilder.append(" AND ");
            }
            stringBuilder.append("entry_type NOT IN (?)");
            d.c(TextUtils.join(",", new Integer[]{Integer.valueOf(1)}));
        }
        List list = (List) d.q();
        Cursor query = getReadableDatabase().query("conversation_entries", cci.a, stringBuilder.toString(), (String[]) list.toArray(new String[list.size()]), null, null, "sort_entry_id DESC", "1");
        if (query != null) {
            try {
                if (query.moveToNext()) {
                    long j = query.getLong(0);
                    return j;
                }
                query.close();
            } finally {
                query.close();
            }
        }
        return -1;
    }

    public Cursor d(String str) {
        return getReadableDatabase().query("conversations", cck.a, "conversation_id=?", new String[]{str}, null, null, null, "1");
    }

    public boolean e(String str) {
        Cursor query = getReadableDatabase().query("conversations", ccj.a, "conversation_id=?", new String[]{str}, null, null, null, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    boolean z = query.getInt(0) > 0;
                    query.close();
                    return z;
                }
                query.close();
            } catch (Throwable th) {
                query.close();
            }
        }
        return false;
    }

    public void a(String str, long j, e eVar) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            bkq.b(writableDatabase, str, j);
            writableDatabase.setTransactionSuccessful();
            if (eVar != null) {
                eVar.a(ct.a);
            }
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void b(String str, boolean z, e eVar) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put("is_hidden", Boolean.valueOf(z));
        String str2 = "conversations";
        String str3 = "conversation_id=? AND is_hidden!=?";
        String[] strArr = new String[2];
        strArr[0] = str;
        strArr[1] = z ? "1" : "0";
        if (writableDatabase.update(str2, contentValues, str3, strArr) > 0 && eVar != null) {
            eVar.a(ct.a);
        }
    }

    public void c(String str, boolean z, e eVar) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put("has_more", Boolean.valueOf(z));
        String str2 = "conversations";
        String str3 = "conversation_id=? AND has_more!=?";
        String[] strArr = new String[2];
        strArr[0] = str;
        strArr[1] = z ? "1" : "0";
        if (writableDatabase.update(str2, contentValues, str3, strArr) > 0 && eVar != null) {
            eVar.a(Uri.withAppendedPath(cr.a, str), Uri.withAppendedPath(cq.a, str));
        }
    }

    public void d(String str, boolean z, e eVar) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put("read_only", Boolean.valueOf(z));
        String str2 = "conversations";
        String str3 = "conversation_id=? AND read_only!=?";
        String[] strArr = new String[2];
        strArr[0] = str;
        strArr[1] = z ? "1" : "0";
        if (writableDatabase.update(str2, contentValues, str3, strArr) > 0 && eVar != null) {
            eVar.a(Uri.withAppendedPath(ct.a, str));
        }
    }

    public Cursor h(long j) {
        return getReadableDatabase().query("conversation_entries", cci.a, "entry_id=?", new String[]{String.valueOf(j)}, null, null, null, null);
    }

    public bii a(String str, String str2, long j, String str3, DraftAttachment draftAttachment, com.twitter.model.dms.c cVar, e eVar) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            long a = a(null, false) + 1;
            bgv bgv = (bii) ((bik) ((bik) ((bik) ((bik) ((bik) new bik().a(((bin) ((bin) ((bin) ((bin) ((bin) new bin().b(0).a(a)).a(str2)).b(str3)).a(null)).a(cVar)).a(draftAttachment).q())).b(a)).b(str)).c(com.twitter.util.m.b())).a(j)).q();
            a(bgv, true, eVar);
            writableDatabase.setTransactionSuccessful();
            return bgv;
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void a(bii bii, bip bip, com.twitter.model.dms.o oVar, e eVar) {
        Object obj = 1;
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            writableDatabase.delete("conversation_entries", "request_id=? AND entry_type=1", new String[]{bii.o()});
            if (bip == null || bip.h.equals(bii.h)) {
                obj = null;
            } else {
                writableDatabase.delete("conversations", "conversation_id=?", new String[]{bii.h});
                writableDatabase.delete("conversation_participants", "conversation_id=?", new String[]{bii.h});
            }
            a(writableDatabase, oVar, true, eVar);
            writableDatabase.setTransactionSuccessful();
            if (bip != null && r0 == null) {
                a(Collections.singleton(bip.h), eVar);
            }
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void a(long j, boolean z, e eVar) {
        Cursor h;
        bit bit = null;
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            Object obj;
            h = h(j);
            if (h != null) {
                String string;
                if (h.moveToFirst()) {
                    bit = (bit) com.twitter.util.serialization.m.a(h.getBlob(5), bit.i);
                    string = h.getString(1);
                } else {
                    string = null;
                }
                h.close();
                obj = string;
            } else {
                obj = null;
            }
            if (bit != null) {
                Object obj2 = (bit) ((biu) new biu(bit).a(z)).q();
                ContentValues contentValues = new ContentValues();
                contentValues.put("data", a(obj2, bit.i));
                writableDatabase.updateWithOnConflict("conversation_entries", contentValues, "entry_id=?", new String[]{String.valueOf(j)}, 5);
            }
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
            if (obj != null) {
                a(Collections.singleton(obj), eVar);
            }
        } catch (Throwable th) {
            writableDatabase.endTransaction();
        }
    }

    public void e(long j, e eVar) {
        Cursor h;
        Object obj = null;
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            h = h(j);
            if (h != null) {
                if (h.moveToFirst()) {
                    obj = h.getString(1);
                }
                h.close();
            }
            String[] strArr = new String[]{String.valueOf(j)};
            writableDatabase.delete("conversation_entries", "entry_id=?", strArr);
            writableDatabase.delete("dm_card_state", "card_message_id=?", strArr);
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
            a(obj == null ? Collections.emptySet() : Collections.singleton(obj), eVar);
        } catch (Throwable th) {
            writableDatabase.endTransaction();
        }
    }

    public void b(String str, e eVar) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            String[] strArr = new String[]{str};
            Object delete = writableDatabase.delete("conversation_entries", "conversation_id=?", strArr);
            Object delete2 = writableDatabase.delete("conversations", "conversation_id=?", strArr);
            Object delete3 = writableDatabase.delete("conversation_participants", "conversation_id=?", strArr);
            writableDatabase.delete("dm_card_state", "card_conversation_id=?", strArr);
            writableDatabase.setTransactionSuccessful();
            if (delete > null || delete2 > null || delete3 > null) {
                a(Collections.singleton(str), eVar);
            }
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void a(bii bii, int i, e eVar) {
        a((bii) ((bik) new bik(bii).a(new bin((bim) bii.c()).b(i).q())).q(), eVar);
    }

    public void b(bii bii, int i, e eVar) {
        a((bii) ((bik) new bik(bii).a(new bin((bim) bii.c()).c(i).q())).q(), eVar);
    }

    public void a(bii bii, DraftAttachment draftAttachment, e eVar) {
        a((bii) ((bik) new bik(bii).a(new bin((bim) bii.c()).a(draftAttachment).q())).q(), eVar);
    }

    private void a(bii bii, e eVar) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("data", a(bii.b()));
            Object updateWithOnConflict = writableDatabase.updateWithOnConflict("conversation_entries", contentValues, "entry_id=?", new String[]{bii.bg_()}, 5);
            writableDatabase.setTransactionSuccessful();
            if (updateWithOnConflict > null) {
                a(Collections.singleton(bii.h), eVar);
            }
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void a(String str, long[] jArr, e eVar) {
        com.twitter.util.collection.n a = com.twitter.util.collection.n.a(jArr.length);
        for (TwitterUser twitterUser : a(jArr)) {
            a.c(twitterUser.d);
        }
        if (!a.h()) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                a((bjv) ((bjw) ((bjw) ((bjw) ((bjw) ((bjw) new bjw().a(new ArrayList((Collection) a.q()))).a(false)).b(a(null, false) + 1)).b(str)).c(com.twitter.util.m.b())).q(), true, eVar);
                writableDatabase.setTransactionSuccessful();
            } finally {
                writableDatabase.endTransaction();
            }
        }
    }

    public long i(long j) {
        String str = "topics_ev_query DESC";
        Cursor query = getReadableDatabase().query("lists_view", new String[]{"list_mapping__id"}, "list_mapping_list_mapping_user_id=?", new String[]{String.valueOf(j)}, null, null, "topics_ev_query DESC", "1");
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    long j2 = query.getLong(0);
                    return j2;
                }
                query.close();
            } finally {
                query.close();
            }
        }
        return 0;
    }

    public long b(int i) {
        Cursor query = getReadableDatabase().query("activities", cce.a, "type=?", new String[]{String.valueOf(i)}, null, null, "max_position DESC", "1");
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    long j = query.getLong(3);
                    return j;
                }
                query.close();
            } finally {
                query.close();
            }
        }
        return 0;
    }

    private long f(int i) {
        Cursor query = getReadableDatabase().query("activities", cce.a, "type=?", new String[]{String.valueOf(i)}, null, null, "max_position ASC, _id DESC", "1");
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    long j = query.getLong(0);
                    return j;
                }
                query.close();
            } finally {
                query.close();
            }
        }
        return 0;
    }

    public void a(long j, int i, long j2, long j3) {
        cfb.b("DatabaseHelper", "deleteOldStatuses: owner id: " + j + ", type: " + i + ", statusId: " + j3);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            cfb.b("DatabaseHelper", "deleteOldStatuses: Deleted: " + writableDatabase.delete("status_groups", "owner_id=? AND type=? AND tag=? AND g_status_id<?", new String[]{String.valueOf(j), String.valueOf(i), String.valueOf(j2), String.valueOf(j3)}));
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void a(long j, int i, long j2) {
        cfb.b("DatabaseHelper", "deleteOldStatuses: owner id: " + j + ", type: " + i + ", tag: " + j2);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        String[] strArr = new String[]{String.valueOf(j), String.valueOf(i), String.valueOf(j2)};
        Cursor query = writableDatabase.query("status_groups", new String[]{"COUNT(*)"}, "owner_id=? AND type=? AND tag=?", strArr, null, null, null);
        if (query != null) {
            Cursor query2;
            try {
                int i2;
                if (query.moveToFirst()) {
                    i2 = query.getInt(0);
                } else {
                    i2 = 0;
                }
                query.close();
                cfb.b("DatabaseHelper", "deleteOldStatuses: total count: " + i2);
                if (i2 > 400) {
                    query2 = writableDatabase.query("status_groups LEFT JOIN statuses ON status_groups.g_status_id=statuses.status_id", new String[]{"status_groups._id"}, "owner_id=? AND type=? AND tag=?", strArr, null, null, "updated_at ASC", String.valueOf((i2 - 100) + 1));
                    if (query2 != null) {
                        if (query2.moveToFirst()) {
                            int i3 = 0;
                            String[] strArr2 = new String[1];
                            do {
                                strArr2[0] = String.valueOf(query2.getLong(0));
                                i3 += writableDatabase.delete("status_groups", "_id=?", strArr2);
                            } while (query2.moveToNext());
                            cfb.b("DatabaseHelper", "deleteOldStatuses: Deleted: " + i3);
                            if (i3 > 0) {
                                a(3, i, j, 0, String.valueOf(d(j, i)));
                            }
                        }
                        query2.close();
                    }
                }
            } catch (Throwable th) {
                writableDatabase.endTransaction();
            }
        }
        writableDatabase.setTransactionSuccessful();
        writableDatabase.endTransaction();
    }

    public void g(long j, int i) {
        int i2 = 0;
        cfb.b("DatabaseHelper", "deleteOldActivities: owner id: " + j + " type: " + i);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        String[] strArr = new String[]{String.valueOf(i)};
        Cursor query = writableDatabase.query("activities", new String[]{"COUNT(*)"}, "type=?", strArr, null, null, null);
        if (query != null) {
            try {
                int i3;
                if (query.moveToFirst()) {
                    i3 = query.getInt(0);
                } else {
                    i3 = 0;
                }
                query.close();
                i2 = i3;
            } catch (Throwable th) {
                writableDatabase.endTransaction();
            }
        }
        cfb.b("DatabaseHelper", "deleteOldActivities: Have count: " + i2);
        if (i2 <= 800) {
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
            return;
        }
        Cursor query2 = writableDatabase.query("activities", cce.a, "type=?", strArr, null, null, "created_at ASC ", String.valueOf((i2 - 400) + 1));
        if (query2 != null) {
            long j2;
            if (query2.moveToLast()) {
                j2 = query2.getLong(1);
            } else {
                j2 = 0;
            }
            if (j2 > 0) {
                cfb.b("DatabaseHelper", "deleteOldActivities: Deleted activities " + writableDatabase.delete("activities", "type=? AND created_at<=?", new String[]{String.valueOf(i), String.valueOf(j2)}));
            }
            query2.close();
        }
        writableDatabase.setTransactionSuccessful();
        writableDatabase.endTransaction();
    }

    public void b(e eVar) {
        TwitterSchema b = b();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            for (String delete : n()) {
                writableDatabase.delete(delete, null, null);
            }
            b.c(baa.class).a(null, new String[0]);
            writableDatabase.execSQL("DELETE FROM statuses;");
            writableDatabase.execSQL("DELETE FROM status_groups;");
            writableDatabase.setTransactionSuccessful();
            if (eVar != null) {
                eVar.a(ck.e);
            }
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public int a(Collection<com.twitter.model.timeline.s> collection, long j, e eVar) {
        cfb.b("DatabaseHelper", "Merge prompts: " + collection.size());
        int i = 0;
        Map hashMap = new HashMap();
        if (collection.isEmpty()) {
            return 0;
        }
        int i2;
        long a;
        int i3;
        Cursor query;
        for (com.twitter.model.timeline.s sVar : collection) {
            hashMap.put(sVar.bg_(), sVar);
        }
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        Cursor a2 = a(writableDatabase, "prompts", ccr.a, "p_id", null, null, (Collection) collection, null, hashMap);
        if (a2 != null) {
            try {
                ContentValues contentValues = new ContentValues();
                i2 = 0;
                while (a2.moveToNext()) {
                    contentValues.clear();
                    com.twitter.model.timeline.s sVar2 = (com.twitter.model.timeline.s) hashMap.remove(a2.getString(1));
                    if (sVar2 != null) {
                        a(sVar2, contentValues);
                        cfb.b("DatabaseHelper", "Updating prompt at row id: " + a2.getLong(0));
                        writableDatabase.update("prompts", contentValues, "_id=?", new String[]{String.valueOf(a)});
                        i3 = i2 + 1;
                    } else {
                        i3 = i2;
                    }
                    i2 = i3;
                }
                a2.close();
                i = i2;
            } catch (Throwable th) {
                writableDatabase.endTransaction();
            }
        }
        if (hashMap.isEmpty()) {
            i3 = i;
        } else {
            com.twitter.util.collection.n d = com.twitter.util.collection.n.d();
            com.twitter.util.collection.n d2 = com.twitter.util.collection.n.d();
            ContentValues contentValues2 = new ContentValues();
            for (com.twitter.model.timeline.s sVar3 : hashMap.values()) {
                contentValues2.clear();
                long j2 = sVar3.o;
                int g = g(sVar3.d);
                if (g != -1) {
                    if (j2 <= 0) {
                        a = sVar3.p > 0 ? a(j, g, sVar3.p - 1) : 0;
                    } else {
                        a = j2;
                    }
                    if (a > 0) {
                        query = writableDatabase.query("timeline_view", new String[]{"status_groups_updated_at", "timeline_sort_index"}, "timeline_data_type=1 AND timeline_data_id=?", new String[]{String.valueOf(a)}, null, null, null);
                    } else {
                        query = null;
                    }
                    long j3 = 0;
                    j2 = 0;
                    if (query != null) {
                        if (query.moveToFirst()) {
                            a(sVar3, contentValues2);
                            if (writableDatabase.insert("prompts", null, contentValues2) > 0) {
                                j3 = query.getLong(0) - 1;
                                j2 = query.getLong(1);
                            }
                        }
                        query.close();
                    } else if (sVar3.p == 0) {
                        a(sVar3, contentValues2);
                        if (writableDatabase.insert("prompts", null, contentValues2) > 0) {
                            j3 = -1;
                            j2 = 0;
                        }
                    }
                    Object obj = (bq) ((bs) ((bs) ((bs) new bs().b(sVar3.bg_())).a(sVar3).b(j3)).a(j2)).q();
                    if ("home_timeline".equals(sVar3.d)) {
                        d.c(obj);
                    } else if ("profile_self".equals(sVar3.d) || "profile_other".equals(sVar3.d)) {
                        d2.c(obj);
                    }
                }
            }
            if (d.h()) {
                i2 = i;
            } else {
                i2 = i + a((ch) new cj().a((List) d.q()).a(j).a(0).q());
            }
            i3 = !d2.h() ? a((ch) new cj().a((List) d2.q()).a(j).a(1).q()) + i2 : i2;
        }
        writableDatabase.setTransactionSuccessful();
        writableDatabase.endTransaction();
        if (eVar != null && i3 > 0) {
            eVar.a(df.a);
        }
        return i3;
    }

    public int a(int i, e eVar) {
        int i2 = "Delete prompt: ";
        cfb.b("DatabaseHelper", i2 + i);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            int[] iArr = new int[]{i};
            i2 = a(writableDatabase, "timeline", "data_type=6 AND data_id=?", iArr);
            a(writableDatabase, "prompts", "p_id=?", iArr);
            writableDatabase.setTransactionSuccessful();
            if (eVar != null && i2 > 0) {
                eVar.a(df.a);
            }
            return i2;
        } finally {
            writableDatabase.endTransaction();
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private int g(java.lang.String r5) {
        /*
        r4 = this;
        r1 = 1;
        r0 = 0;
        r2 = -1;
        r3 = r5.hashCode();
        switch(r3) {
            case -1959191647: goto L_0x0010;
            case -718288646: goto L_0x0026;
            case 1223860258: goto L_0x001b;
            default: goto L_0x000a;
        };
    L_0x000a:
        r3 = r2;
    L_0x000b:
        switch(r3) {
            case 0: goto L_0x000f;
            case 1: goto L_0x0031;
            case 2: goto L_0x0031;
            default: goto L_0x000e;
        };
    L_0x000e:
        r0 = r2;
    L_0x000f:
        return r0;
    L_0x0010:
        r3 = "home_timeline";
        r3 = r5.equals(r3);
        if (r3 == 0) goto L_0x000a;
    L_0x0019:
        r3 = r0;
        goto L_0x000b;
    L_0x001b:
        r3 = "profile_self";
        r3 = r5.equals(r3);
        if (r3 == 0) goto L_0x000a;
    L_0x0024:
        r3 = r1;
        goto L_0x000b;
    L_0x0026:
        r3 = "profile_other";
        r3 = r5.equals(r3);
        if (r3 == 0) goto L_0x000a;
    L_0x002f:
        r3 = 2;
        goto L_0x000b;
    L_0x0031:
        r0 = r1;
        goto L_0x000f;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.library.provider.di.g(java.lang.String):int");
    }

    private void a(com.twitter.model.timeline.s sVar, ContentValues contentValues) {
        contentValues.put("p_id", Integer.valueOf(sVar.c));
        contentValues.put("p_format", sVar.d);
        contentValues.put("p_template", sVar.n);
        contentValues.put("p_header_text", sVar.e);
        contentValues.put("p_body_text", sVar.b);
        contentValues.put("p_primary_action_text", sVar.f);
        contentValues.put("p_primary_action_url", sVar.g);
        contentValues.put("p_icon", sVar.i);
        contentValues.put("p_background_image_url", sVar.k);
        contentValues.put("p_persistence", Integer.valueOf(sVar.j));
        contentValues.put("p_status_id", Long.valueOf(sVar.o));
        contentValues.put("p_insertion_index", Integer.valueOf(sVar.p));
        contentValues.put("p_trigger", sVar.h);
        if (sVar.l != null) {
            contentValues.put("p_entities", a(sVar.l, bg.b));
        }
        if (sVar.m != null) {
            contentValues.put("p_header_entities", a(sVar.m, bg.b));
        }
    }

    private static void a(bd bdVar, int i, ContentValues contentValues) {
        contentValues.put("p_id", Integer.valueOf(i));
        contentValues.put("p_header_text", bdVar.b);
        contentValues.put("p_body_text", bdVar.c);
        com.twitter.model.timeline.o oVar = bdVar.d;
        com.twitter.model.timeline.o oVar2 = bdVar.e;
        if (oVar != null) {
            contentValues.put("p_primary_action_text", oVar.a);
            contentValues.put("p_primary_action_dismiss", Boolean.valueOf(oVar.c));
            if (bdVar.d.b != null) {
                contentValues.put("p_primary_action_url", oVar.b);
            }
        }
        if (oVar2 != null) {
            contentValues.put("p_secondary_action_text", oVar2.a);
            contentValues.put("p_secondary_action_dismiss", Boolean.valueOf(oVar2.c));
            if (bdVar.e.b != null) {
                contentValues.put("p_secondary_action_url", oVar2.b);
            }
        }
        contentValues.put("p_dismissible", Boolean.valueOf(bdVar.a));
    }

    private void a(long j, long j2, long j3, int i) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("type", Integer.valueOf(i));
            contentValues.put(NotificationCompatApi21.CATEGORY_EVENT, Integer.valueOf(8));
            contentValues.put("created_at", Long.valueOf(j3));
            contentValues.put("hash", Integer.valueOf(0));
            contentValues.put("max_position", Long.valueOf(j));
            contentValues.put("min_position", Long.valueOf(j2));
            contentValues.put("source_type", Integer.valueOf(0));
            contentValues.put("target_type", Integer.valueOf(0));
            contentValues.put("target_object_type", Integer.valueOf(0));
            writableDatabase.insert("activities", null, contentValues);
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public int h(long j, int i) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            int delete = writableDatabase.delete("activities", "type=" + i + " AND " + NotificationCompatApi21.CATEGORY_EVENT + "=" + 8 + " AND " + "max_position" + "=?", new String[]{String.valueOf(j)});
            writableDatabase.setTransactionSuccessful();
            return delete;
        } finally {
            writableDatabase.endTransaction();
        }
    }

    static boolean a(cm cmVar, ContentValues contentValues, long j) {
        contentValues.put("status_id", Long.valueOf(cmVar.b));
        contentValues.put("author_id", Long.valueOf(cmVar.C.c));
        contentValues.put("source", cmVar.i);
        contentValues.put("created", Long.valueOf(cmVar.h));
        contentValues.put("in_r_status_id", Long.valueOf(cmVar.k));
        contentValues.put("in_r_user_id", Long.valueOf(cmVar.j));
        contentValues.put("in_r_screen_name", cmVar.l);
        contentValues.put("favorited", Boolean.valueOf(cmVar.D));
        contentValues.put("retweeted", Boolean.valueOf(cmVar.m));
        if (cmVar.x != null) {
            contentValues.put("latitude", Double.valueOf(cmVar.x.a()));
            contentValues.put("longitude", Double.valueOf(cmVar.x.b()));
        }
        if (cmVar.y != null) {
            contentValues.put("place_data", a(cmVar.y, TwitterPlace.a));
        }
        contentValues.put("retweet_count", Integer.valueOf(cmVar.p));
        contentValues.put("favorite_count", Integer.valueOf(cmVar.E));
        if (cmVar.q > -1) {
            contentValues.put("view_count", Long.valueOf(cmVar.q));
        }
        Object obj = cmVar.z;
        if (obj != null) {
            contentValues.put("card", a(obj, cgl.a));
        }
        contentValues.put("entities", a(cmVar.e, bg.b));
        a(contentValues, cmVar);
        contentValues.put("flags", Integer.valueOf(cpi.a(cmVar, j)));
        contentValues.put("lang", cmVar.r);
        contentValues.put("supplemental_language", cmVar.v);
        if (cmVar.F != null) {
            contentValues.put("quoted_tweet_data", a(new as(cmVar.F), as.a));
        }
        contentValues.put("quoted_tweet_id", Long.valueOf(cmVar.G));
        return true;
    }

    public static int a(TwitterUser twitterUser) {
        int i = twitterUser.K;
        if (twitterUser.n) {
            i |= 2;
        }
        if (twitterUser.m) {
            i |= 1;
        }
        if (twitterUser.o) {
            i |= 4;
        }
        if (twitterUser.p) {
            i |= 8;
        }
        if (twitterUser.y) {
            i |= 16;
        }
        if (twitterUser.s) {
            i |= AccessibilityNodeInfoCompat.ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY;
        }
        if (twitterUser.J) {
            i |= 32;
        }
        if (twitterUser.O) {
            return i | AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT;
        }
        return i;
    }

    public static void a(TwitterUser twitterUser, ContentValues contentValues, int i, boolean z) {
        contentValues.put("user_id", Long.valueOf(twitterUser.c));
        contentValues.put(UsernameError.USERNAME_ERROR_FIELD, twitterUser.k);
        contentValues.put("name", twitterUser.d);
        contentValues.put("location", twitterUser.q);
        if (twitterUser.r != null) {
            contentValues.put("structured_location", a(twitterUser.r, x.a(TwitterPlace.a)));
        }
        if (twitterUser.s && !boo.f()) {
            contentValues.put("extended_profile_fields", (byte[]) null);
        } else if (twitterUser.t != null) {
            contentValues.put("extended_profile_fields", a(twitterUser.t, ExtendedProfile.a));
        }
        if (twitterUser.M != -1) {
            contentValues.put("pinned_tweet_id", Long.valueOf(twitterUser.M));
        }
        contentValues.put("user_flags", Integer.valueOf(a(twitterUser)));
        contentValues.put("image_url", twitterUser.e);
        contentValues.put("updated", Long.valueOf(com.twitter.util.m.b()));
        if (z) {
            contentValues.put("friendship", Integer.valueOf(twitterUser.S));
        }
        if (15 != i) {
            contentValues.put("header_url", twitterUser.G);
            contentValues.put("description", twitterUser.g);
            contentValues.put("web_url", twitterUser.h);
            contentValues.put("bg_color", Integer.valueOf(twitterUser.i));
            contentValues.put("link_color", Integer.valueOf(twitterUser.j));
            contentValues.put("profile_created", Long.valueOf(twitterUser.Q));
            contentValues.put("followers", Integer.valueOf(twitterUser.P));
            contentValues.put("fast_followers", Integer.valueOf(twitterUser.u));
            contentValues.put("friends", Integer.valueOf(twitterUser.v));
            contentValues.put("statuses", Integer.valueOf(twitterUser.w));
            contentValues.put("media_count", Integer.valueOf(twitterUser.x));
            contentValues.put("hash", Integer.valueOf(twitterUser.hashCode()));
            contentValues.put("favorites", Integer.valueOf(twitterUser.A));
            if (twitterUser.D == null) {
                contentValues.putNull("description_entities");
            } else {
                contentValues.put("description_entities", a(twitterUser.D, bg.b));
            }
            if (twitterUser.E == null) {
                contentValues.putNull("url_entities");
            } else {
                contentValues.put("url_entities", a(twitterUser.E, bg.b));
            }
            if (twitterUser.L != AdvertiserType.NONE) {
                contentValues.put("advertiser_type", twitterUser.L.toString());
            }
            if (twitterUser.N != BusinessProfileState.NONE) {
                contentValues.put("business_profile_state", twitterUser.N.toString());
            }
        }
    }

    private static long a(SQLiteDatabase sQLiteDatabase, long j, long j2) {
        String[] strArr = new String[]{"MAX(status_id)"};
        String str = "status_id>" + j + " AND " + "status_id" + '<' + j2;
        Cursor query = sQLiteDatabase.query("statuses", strArr, str, null, null, null, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    j = Math.max(j, query.getLong(0));
                }
                query.close();
            } catch (Throwable th) {
                query.close();
            }
        }
        return 1 + j;
    }

    long i(long j, int i) {
        return a("timeline_group_id", j, i, 0);
    }

    long j(long j, int i) {
        return a("sort_index", j, i, 0);
    }

    private long a(String str, long j, int i, long j2) {
        String str2 = "owner_id=? AND type=?";
        String[] strArr = new String[]{"MAX(" + str + ")"};
        Cursor query = getReadableDatabase().query("timeline", strArr, "owner_id=? AND type=?", new String[]{String.valueOf(j), String.valueOf(i)}, null, null, null);
        try {
            if (query.moveToFirst() && query.getType(0) == 1) {
                j2 = query.getLong(0);
            }
            query.close();
            return j2;
        } catch (Throwable th) {
            query.close();
        }
    }

    private long l(long j, int i) {
        String str = "owner_id=? AND type=?";
        String[] strArr = new String[]{"MAX(updated_at)"};
        Cursor query = getReadableDatabase().query("timeline", strArr, "owner_id=? AND type=?", new String[]{String.valueOf(j), String.valueOf(i)}, null, null, null);
        if (query == null) {
            return 0;
        }
        try {
            long j2;
            if (query.moveToFirst()) {
                j2 = query.getLong(0);
            } else {
                j2 = 0;
            }
            query.close();
            return j2;
        } catch (Throwable th) {
            query.close();
        }
    }

    public int a(long j, int i, long j2, e eVar) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            int delete = writableDatabase.delete("timeline", "owner_id=? AND type=? AND entity_id=?", new String[]{String.valueOf(j), String.valueOf(i), String.valueOf(j2)});
            writableDatabase.setTransactionSuccessful();
            if (delete > 0 && eVar != null) {
                eVar.a(ck.a(i));
            }
            return delete;
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public int f(long j, e eVar) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            int a = a(writableDatabase, "timeline", "entity_id=?", new long[]{j});
            writableDatabase.setTransactionSuccessful();
            if (a > 0 && eVar != null) {
                eVar.a(df.b);
            }
            return a;
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public int a(int i, String str, boolean z, e eVar) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            int delete = writableDatabase.delete("timeline", "type=? AND timeline_tag=? AND " + (z ? "(flags&?)!=0" : "NOT ((flags&?)!=0)"), new String[]{String.valueOf(i), str, String.valueOf(AccessibilityNodeInfoCompat.ACTION_DISMISS)});
            writableDatabase.setTransactionSuccessful();
            if (delete > 0 && eVar != null) {
                eVar.a(ck.a(i));
            }
            return delete;
        } finally {
            writableDatabase.endTransaction();
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.util.List<defpackage.cfz> a(java.util.List<defpackage.cfz> r37, long r38, int r40, boolean r41, boolean r42, boolean r43, long r44, boolean r46, com.twitter.library.provider.e r47) {
        /*
        r36 = this;
        r4 = r37.isEmpty();
        if (r4 == 0) goto L_0x0016;
    L_0x0006:
        if (r42 == 0) goto L_0x0011;
    L_0x0008:
        r0 = r36;
        r1 = r40;
        r2 = r47;
        r0.c(r1, r2);
    L_0x0011:
        r4 = com.twitter.util.collection.n.g();
    L_0x0015:
        return r4;
    L_0x0016:
        r24 = com.twitter.util.collection.n.d();
        r0 = r37;
        r1 = r40;
        r25 = a(r0, r1);
        r4 = r36.b();
        r5 = aur.class;
        r4 = r4.c(r5);
        r26 = r4.b();
        r27 = r36.getWritableDatabase();
        r27.beginTransaction();
        if (r41 != 0) goto L_0x0187;
    L_0x0039:
        r0 = r27;
        r1 = r40;
        r4 = a(r0, r1);	 Catch:{ all -> 0x01e7 }
        r23 = r4;
    L_0x0043:
        r28 = com.twitter.util.collection.n.d();	 Catch:{ all -> 0x01e7 }
        r29 = com.twitter.util.collection.n.d();	 Catch:{ all -> 0x01e7 }
        r30 = com.twitter.util.collection.n.d();	 Catch:{ all -> 0x01e7 }
        r31 = com.twitter.util.collection.n.d();	 Catch:{ all -> 0x01e7 }
        r18 = 0;
        r32 = r37.size();	 Catch:{ all -> 0x01e7 }
        r33 = new android.content.ContentValues;	 Catch:{ all -> 0x01e7 }
        r33.<init>();	 Catch:{ all -> 0x01e7 }
        r4 = 0;
        r20 = 0;
        r34 = r37.iterator();	 Catch:{ all -> 0x01e7 }
        r5 = r4;
    L_0x0066:
        r4 = r34.hasNext();	 Catch:{ all -> 0x01e7 }
        if (r4 == 0) goto L_0x036d;
    L_0x006c:
        r4 = r34.next();	 Catch:{ all -> 0x01e7 }
        r0 = r4;
        r0 = (defpackage.cfz) r0;	 Catch:{ all -> 0x01e7 }
        r16 = r0;
        r22 = r5 + 1;
        r0 = r22;
        r1 = r32;
        if (r0 != r1) goto L_0x018c;
    L_0x007d:
        r4 = 1;
        r7 = r4;
    L_0x007f:
        r33.clear();	 Catch:{ all -> 0x01e7 }
        r4 = "type";
        r5 = java.lang.Integer.valueOf(r40);	 Catch:{ all -> 0x01e7 }
        r0 = r33;
        r0.put(r4, r5);	 Catch:{ all -> 0x01e7 }
        r5 = "is_last";
        if (r42 == 0) goto L_0x0190;
    L_0x0093:
        if (r7 == 0) goto L_0x0190;
    L_0x0095:
        r4 = 1;
    L_0x0096:
        r4 = java.lang.Boolean.valueOf(r4);	 Catch:{ all -> 0x01e7 }
        r0 = r33;
        r0.put(r5, r4);	 Catch:{ all -> 0x01e7 }
        r0 = r16;
        r4 = r0.a;	 Catch:{ all -> 0x01e7 }
        r9 = r4.bf_();	 Catch:{ all -> 0x01e7 }
        if (r7 == 0) goto L_0x0260;
    L_0x00a9:
        r0 = r23;
        r1 = r16;
        r5 = a(r0, r1);	 Catch:{ all -> 0x01e7 }
        r0 = r33;
        r1 = r23;
        r2 = r16;
        a(r0, r5, r1, r2);	 Catch:{ all -> 0x01e7 }
        if (r5 != 0) goto L_0x0196;
    L_0x00bc:
        r4 = "tag";
        r5 = 1;
        r5 = java.lang.Integer.valueOf(r5);	 Catch:{ all -> 0x01e7 }
        r0 = r33;
        r0.put(r4, r5);	 Catch:{ all -> 0x01e7 }
        r4 = "activities";
        r5 = 0;
        r0 = r27;
        r1 = r33;
        r4 = r0.insert(r4, r5, r1);	 Catch:{ all -> 0x01e7 }
        r12 = 0;
        r4 = (r4 > r12 ? 1 : (r4 == r12 ? 0 : -1));
        if (r4 <= 0) goto L_0x0193;
    L_0x00db:
        r4 = 1;
    L_0x00dc:
        if (r4 == 0) goto L_0x042a;
    L_0x00de:
        r0 = r24;
        r1 = r16;
        r0.c(r1);	 Catch:{ all -> 0x01e7 }
        r0 = r16;
        r0 = r0.a;	 Catch:{ all -> 0x01e7 }
        r21 = r0;
        if (r46 == 0) goto L_0x012e;
    L_0x00ed:
        r0 = r26;
        r4 = r0.d;	 Catch:{ all -> 0x01e7 }
        r4 = (aus) r4;	 Catch:{ all -> 0x01e7 }
        r0 = r40;
        r4 = r4.a(r0);	 Catch:{ all -> 0x01e7 }
        r5 = 0;
        r4 = r4.b(r5);	 Catch:{ all -> 0x01e7 }
        r12 = r21.bf_();	 Catch:{ all -> 0x01e7 }
        r4 = r4.a(r12);	 Catch:{ all -> 0x01e7 }
        r0 = r21;
        r12 = r0.b;	 Catch:{ all -> 0x01e7 }
        r4 = r4.b(r12);	 Catch:{ all -> 0x01e7 }
        r0 = r21;
        r12 = r0.b;	 Catch:{ all -> 0x01e7 }
        r4 = r4.c(r12);	 Catch:{ all -> 0x01e7 }
        r0 = r21;
        r12 = r0.c;	 Catch:{ all -> 0x01e7 }
        r5 = r4.d(r12);	 Catch:{ all -> 0x01e7 }
        if (r42 == 0) goto L_0x028e;
    L_0x0120:
        if (r7 == 0) goto L_0x028e;
    L_0x0122:
        r4 = 1;
    L_0x0123:
        r4 = r5.a(r4);	 Catch:{ all -> 0x01e7 }
        r5 = 1;
        r4.b(r5);	 Catch:{ all -> 0x01e7 }
        r26.b();	 Catch:{ all -> 0x01e7 }
    L_0x012e:
        if (r20 != 0) goto L_0x0291;
    L_0x0130:
        r17 = r21;
    L_0x0132:
        r0 = r21;
        r4 = r0.f;	 Catch:{ all -> 0x01e7 }
        r5 = 1;
        if (r4 != r5) goto L_0x0152;
    L_0x0139:
        r4 = r21.c();	 Catch:{ all -> 0x01e7 }
        r0 = r28;
        r0.c(r4);	 Catch:{ all -> 0x01e7 }
        r5 = r21.c();	 Catch:{ all -> 0x01e7 }
        r8 = 8;
        r11 = 0;
        r4 = r36;
        r6 = r38;
        r12 = r47;
        r4.a(r5, r6, r8, r9, r11, r12);	 Catch:{ all -> 0x01e7 }
    L_0x0152:
        r4 = 14;
        r0 = r21;
        r5 = r0.d;	 Catch:{ all -> 0x01e7 }
        if (r4 != r5) goto L_0x02a1;
    L_0x015a:
        r4 = r16.c();	 Catch:{ all -> 0x01e7 }
        r4 = r4.isEmpty();	 Catch:{ all -> 0x01e7 }
        if (r4 != 0) goto L_0x02a1;
    L_0x0164:
        r4 = r16.c();	 Catch:{ all -> 0x01e7 }
        r5 = 0;
        r4 = r4.get(r5);	 Catch:{ all -> 0x01e7 }
        r4 = (com.twitter.model.core.cm) r4;	 Catch:{ all -> 0x01e7 }
        r20 = r4;
    L_0x0171:
        r0 = r21;
        r4 = r0.i;	 Catch:{ all -> 0x01e7 }
        switch(r4) {
            case 1: goto L_0x0300;
            case 2: goto L_0x02a6;
            default: goto L_0x0178;
        };	 Catch:{ all -> 0x01e7 }
    L_0x0178:
        r0 = r21;
        r4 = r0.l;	 Catch:{ all -> 0x01e7 }
        switch(r4) {
            case 2: goto L_0x031b;
            case 3: goto L_0x0360;
            default: goto L_0x017f;
        };	 Catch:{ all -> 0x01e7 }
    L_0x017f:
        r4 = r17;
    L_0x0181:
        r20 = r4;
        r5 = r22;
        goto L_0x0066;
    L_0x0187:
        r4 = 0;
        r23 = r4;
        goto L_0x0043;
    L_0x018c:
        r4 = 0;
        r7 = r4;
        goto L_0x007f;
    L_0x0190:
        r4 = 0;
        goto L_0x0096;
    L_0x0193:
        r4 = 0;
        goto L_0x00dc;
    L_0x0196:
        r0 = r23;
        r12 = r0.a;	 Catch:{ all -> 0x01e7 }
        r4 = "activities";
        r6 = "_id=?";
        r8 = 1;
        r8 = new java.lang.String[r8];	 Catch:{ all -> 0x01e7 }
        r11 = 0;
        r14 = java.lang.String.valueOf(r12);	 Catch:{ all -> 0x01e7 }
        r8[r11] = r14;	 Catch:{ all -> 0x01e7 }
        r0 = r27;
        r1 = r33;
        r4 = r0.update(r4, r1, r6, r8);	 Catch:{ all -> 0x01e7 }
        if (r4 <= 0) goto L_0x01ec;
    L_0x01b4:
        r4 = 1;
    L_0x01b5:
        if (r4 == 0) goto L_0x00dc;
    L_0x01b7:
        r0 = r16;
        r6 = r0.a;	 Catch:{ all -> 0x01e7 }
        r6 = r6.d;	 Catch:{ all -> 0x01e7 }
        r0 = r38;
        r2 = r40;
        com.twitter.library.api.activity.c.a(r0, r2, r6);	 Catch:{ all -> 0x01e7 }
        switch(r5) {
            case 1: goto L_0x01ee;
            case 2: goto L_0x0203;
            case 3: goto L_0x0218;
            case 4: goto L_0x022d;
            default: goto L_0x01c7;
        };	 Catch:{ all -> 0x01e7 }
    L_0x01c7:
        r6 = 0;
        r5 = 0;
    L_0x01c9:
        if (r6 == 0) goto L_0x0242;
    L_0x01cb:
        r5 = new android.content.ContentValues;	 Catch:{ all -> 0x01e7 }
        r5.<init>();	 Catch:{ all -> 0x01e7 }
        r8 = "tag";
        r11 = java.lang.Long.valueOf(r12);	 Catch:{ all -> 0x01e7 }
        r5.put(r8, r11);	 Catch:{ all -> 0x01e7 }
        r8 = "user_groups";
        r11 = "type=? AND tag=?";
        r0 = r27;
        r0.update(r8, r5, r11, r6);	 Catch:{ all -> 0x01e7 }
        goto L_0x00dc;
    L_0x01e7:
        r4 = move-exception;
        r27.endTransaction();
        throw r4;
    L_0x01ec:
        r4 = 0;
        goto L_0x01b5;
    L_0x01ee:
        r5 = 2;
        r6 = new java.lang.String[r5];	 Catch:{ all -> 0x01e7 }
        r5 = 0;
        r8 = 8;
        r8 = java.lang.String.valueOf(r8);	 Catch:{ all -> 0x01e7 }
        r6[r5] = r8;	 Catch:{ all -> 0x01e7 }
        r5 = 1;
        r8 = java.lang.String.valueOf(r9);	 Catch:{ all -> 0x01e7 }
        r6[r5] = r8;	 Catch:{ all -> 0x01e7 }
        r5 = 0;
        goto L_0x01c9;
    L_0x0203:
        r5 = 2;
        r6 = new java.lang.String[r5];	 Catch:{ all -> 0x01e7 }
        r5 = 0;
        r8 = 13;
        r8 = java.lang.String.valueOf(r8);	 Catch:{ all -> 0x01e7 }
        r6[r5] = r8;	 Catch:{ all -> 0x01e7 }
        r5 = 1;
        r8 = java.lang.String.valueOf(r9);	 Catch:{ all -> 0x01e7 }
        r6[r5] = r8;	 Catch:{ all -> 0x01e7 }
        r5 = 0;
        goto L_0x01c9;
    L_0x0218:
        r6 = 0;
        r5 = 2;
        r5 = new java.lang.String[r5];	 Catch:{ all -> 0x01e7 }
        r8 = 0;
        r11 = 12;
        r11 = java.lang.String.valueOf(r11);	 Catch:{ all -> 0x01e7 }
        r5[r8] = r11;	 Catch:{ all -> 0x01e7 }
        r8 = 1;
        r11 = java.lang.String.valueOf(r9);	 Catch:{ all -> 0x01e7 }
        r5[r8] = r11;	 Catch:{ all -> 0x01e7 }
        goto L_0x01c9;
    L_0x022d:
        r6 = 0;
        r5 = 2;
        r5 = new java.lang.String[r5];	 Catch:{ all -> 0x01e7 }
        r8 = 0;
        r11 = 14;
        r11 = java.lang.String.valueOf(r11);	 Catch:{ all -> 0x01e7 }
        r5[r8] = r11;	 Catch:{ all -> 0x01e7 }
        r8 = 1;
        r11 = java.lang.String.valueOf(r9);	 Catch:{ all -> 0x01e7 }
        r5[r8] = r11;	 Catch:{ all -> 0x01e7 }
        goto L_0x01c9;
    L_0x0242:
        if (r5 == 0) goto L_0x00dc;
    L_0x0244:
        r6 = new android.content.ContentValues;	 Catch:{ all -> 0x01e7 }
        r6.<init>();	 Catch:{ all -> 0x01e7 }
        r8 = "tag";
        r11 = java.lang.Long.valueOf(r12);	 Catch:{ all -> 0x01e7 }
        r6.put(r8, r11);	 Catch:{ all -> 0x01e7 }
        r8 = "status_groups";
        r11 = "type=? AND tag=?";
        r0 = r27;
        r0.update(r8, r6, r11, r5);	 Catch:{ all -> 0x01e7 }
        goto L_0x00dc;
    L_0x0260:
        r4 = 0;
        r5 = 0;
        r0 = r33;
        r1 = r16;
        a(r0, r4, r5, r1);	 Catch:{ all -> 0x01e7 }
        r4 = "tag";
        r5 = 1;
        r5 = java.lang.Integer.valueOf(r5);	 Catch:{ all -> 0x01e7 }
        r0 = r33;
        r0.put(r4, r5);	 Catch:{ all -> 0x01e7 }
        r4 = "activities";
        r5 = 0;
        r0 = r27;
        r1 = r33;
        r4 = r0.insert(r4, r5, r1);	 Catch:{ all -> 0x01e7 }
        r12 = 0;
        r4 = (r4 > r12 ? 1 : (r4 == r12 ? 0 : -1));
        if (r4 <= 0) goto L_0x028b;
    L_0x0288:
        r4 = 1;
        goto L_0x00dc;
    L_0x028b:
        r4 = 0;
        goto L_0x00dc;
    L_0x028e:
        r4 = 0;
        goto L_0x0123;
    L_0x0291:
        r0 = r21;
        r1 = r20;
        r4 = r0.b(r1);	 Catch:{ all -> 0x01e7 }
        if (r4 >= 0) goto L_0x029d;
    L_0x029b:
        r20 = r21;
    L_0x029d:
        r17 = r20;
        goto L_0x0132;
    L_0x02a1:
        r4 = 0;
        r20 = r4;
        goto L_0x0171;
    L_0x02a6:
        r4 = 3;
        r0 = r21;
        r5 = r0.d;	 Catch:{ all -> 0x01e7 }
        if (r4 != r5) goto L_0x02c8;
    L_0x02ad:
        r4 = r16.a();	 Catch:{ all -> 0x01e7 }
        r0 = r29;
        r0.c(r4);	 Catch:{ all -> 0x01e7 }
        r4 = r16.a();	 Catch:{ all -> 0x01e7 }
        r4 = com.twitter.util.collection.CollectionUtils.c(r4);	 Catch:{ all -> 0x01e7 }
        r4 = (com.twitter.model.core.cm) r4;	 Catch:{ all -> 0x01e7 }
        if (r4 == 0) goto L_0x0432;
    L_0x02c2:
        r4 = r4.b;	 Catch:{ all -> 0x01e7 }
    L_0x02c4:
        r18 = r4;
        goto L_0x0178;
    L_0x02c8:
        r4 = r16.a();	 Catch:{ all -> 0x01e7 }
        r5 = r4.iterator();	 Catch:{ all -> 0x01e7 }
    L_0x02d0:
        r4 = r5.hasNext();	 Catch:{ all -> 0x01e7 }
        if (r4 == 0) goto L_0x02ec;
    L_0x02d6:
        r4 = r5.next();	 Catch:{ all -> 0x01e7 }
        r4 = (com.twitter.model.core.cm) r4;	 Catch:{ all -> 0x01e7 }
        if (r20 == 0) goto L_0x02e6;
    L_0x02de:
        r6 = r4.F;	 Catch:{ all -> 0x01e7 }
        if (r6 != 0) goto L_0x02e6;
    L_0x02e2:
        r0 = r20;
        r4.F = r0;	 Catch:{ all -> 0x01e7 }
    L_0x02e6:
        r0 = r30;
        r0.c(r4);	 Catch:{ all -> 0x01e7 }
        goto L_0x02d0;
    L_0x02ec:
        r5 = r16.a();	 Catch:{ all -> 0x01e7 }
        r8 = 12;
        r11 = 0;
        r12 = 0;
        r13 = 1;
        r14 = 0;
        r15 = 0;
        r4 = r36;
        r6 = r38;
        r4.a(r5, r6, r8, r9, r11, r12, r13, r14, r15);	 Catch:{ all -> 0x01e7 }
        goto L_0x0178;
    L_0x0300:
        r4 = r16.b();	 Catch:{ all -> 0x01e7 }
        r0 = r28;
        r0.c(r4);	 Catch:{ all -> 0x01e7 }
        r5 = r16.b();	 Catch:{ all -> 0x01e7 }
        r8 = 13;
        r11 = 0;
        r4 = r36;
        r6 = r38;
        r12 = r47;
        r4.a(r5, r6, r8, r9, r11, r12);	 Catch:{ all -> 0x01e7 }
        goto L_0x0178;
    L_0x031b:
        r4 = 2;
        r0 = r21;
        r5 = r0.d;	 Catch:{ all -> 0x01e7 }
        if (r4 != r5) goto L_0x033f;
    L_0x0322:
        r4 = r16.c();	 Catch:{ all -> 0x01e7 }
        r0 = r29;
        r0.c(r4);	 Catch:{ all -> 0x01e7 }
        r4 = r16.c();	 Catch:{ all -> 0x01e7 }
        r4 = com.twitter.util.collection.CollectionUtils.c(r4);	 Catch:{ all -> 0x01e7 }
        r4 = (com.twitter.model.core.cm) r4;	 Catch:{ all -> 0x01e7 }
        if (r4 == 0) goto L_0x042e;
    L_0x0337:
        r4 = r4.b;	 Catch:{ all -> 0x01e7 }
    L_0x0339:
        r18 = r4;
        r4 = r17;
        goto L_0x0181;
    L_0x033f:
        if (r20 != 0) goto L_0x017f;
    L_0x0341:
        r4 = r16.c();	 Catch:{ all -> 0x01e7 }
        r0 = r30;
        r0.c(r4);	 Catch:{ all -> 0x01e7 }
        r5 = r16.c();	 Catch:{ all -> 0x01e7 }
        r8 = 14;
        r11 = 0;
        r12 = 0;
        r13 = 1;
        r14 = 0;
        r15 = 0;
        r4 = r36;
        r6 = r38;
        r4.a(r5, r6, r8, r9, r11, r12, r13, r14, r15);	 Catch:{ all -> 0x01e7 }
        r4 = r17;
        goto L_0x0181;
    L_0x0360:
        r4 = r16.d();	 Catch:{ all -> 0x01e7 }
        r0 = r31;
        r0.c(r4);	 Catch:{ all -> 0x01e7 }
        r4 = r17;
        goto L_0x0181;
    L_0x036d:
        r4 = r28.h();	 Catch:{ all -> 0x01e7 }
        if (r4 != 0) goto L_0x0388;
    L_0x0373:
        r5 = r28.q();	 Catch:{ all -> 0x01e7 }
        r5 = (java.util.Collection) r5;	 Catch:{ all -> 0x01e7 }
        r8 = -1;
        r9 = -1;
        r11 = 0;
        r12 = 0;
        r13 = 1;
        r4 = r36;
        r6 = r38;
        r14 = r47;
        r4.a(r5, r6, r8, r9, r11, r12, r13, r14);	 Catch:{ all -> 0x01e7 }
    L_0x0388:
        r4 = r30.h();	 Catch:{ all -> 0x01e7 }
        if (r4 != 0) goto L_0x03a7;
    L_0x038e:
        r5 = r30.q();	 Catch:{ all -> 0x01e7 }
        r5 = (java.util.Collection) r5;	 Catch:{ all -> 0x01e7 }
        r8 = -1;
        r9 = -1;
        r11 = 0;
        r12 = 0;
        r13 = 1;
        r14 = 0;
        r15 = 0;
        r16 = 0;
        r17 = 1;
        r4 = r36;
        r6 = r38;
        r4.a(r5, r6, r8, r9, r11, r12, r13, r14, r15, r16, r17);	 Catch:{ all -> 0x01e7 }
    L_0x03a7:
        r4 = r29.h();	 Catch:{ all -> 0x01e7 }
        if (r4 != 0) goto L_0x03cf;
    L_0x03ad:
        if (r41 == 0) goto L_0x0426;
    L_0x03af:
        r14 = java.lang.String.valueOf(r18);	 Catch:{ all -> 0x01e7 }
    L_0x03b3:
        r5 = r29.q();	 Catch:{ all -> 0x01e7 }
        r5 = (java.util.Collection) r5;	 Catch:{ all -> 0x01e7 }
        r8 = 5;
        r9 = -1;
        if (r14 != 0) goto L_0x0428;
    L_0x03be:
        r13 = 1;
    L_0x03bf:
        r15 = 1;
        r17 = 1;
        r4 = r36;
        r6 = r38;
        r11 = r41;
        r12 = r41;
        r16 = r47;
        r4.a(r5, r6, r8, r9, r11, r12, r13, r14, r15, r16, r17);	 Catch:{ all -> 0x01e7 }
    L_0x03cf:
        r4 = r31.h();	 Catch:{ all -> 0x01e7 }
        if (r4 != 0) goto L_0x03e7;
    L_0x03d5:
        r5 = r31.q();	 Catch:{ all -> 0x01e7 }
        r5 = (java.util.Collection) r5;	 Catch:{ all -> 0x01e7 }
        r8 = 3;
        r9 = 0;
        r10 = 0;
        r4 = r36;
        r6 = r38;
        r11 = r47;
        r4.a(r5, r6, r8, r9, r10, r11);	 Catch:{ all -> 0x01e7 }
    L_0x03e7:
        r4 = r24.h();	 Catch:{ all -> 0x01e7 }
        if (r4 != 0) goto L_0x03f8;
    L_0x03ed:
        if (r41 != 0) goto L_0x03f8;
    L_0x03ef:
        r0 = r36;
        r1 = r38;
        r3 = r40;
        r0.g(r1, r3);	 Catch:{ all -> 0x01e7 }
    L_0x03f8:
        if (r20 == 0) goto L_0x0415;
    L_0x03fa:
        if (r43 == 0) goto L_0x0415;
    L_0x03fc:
        r0 = r20;
        r4 = r0.b;	 Catch:{ all -> 0x01e7 }
        r6 = 1;
        r6 = r4 - r6;
        r0 = r20;
        r4 = r0.a;	 Catch:{ all -> 0x01e7 }
        r8 = 1;
        r10 = r4 - r8;
        r5 = r36;
        r8 = r44;
        r12 = r40;
        r5.a(r6, r8, r10, r12);	 Catch:{ all -> 0x01e7 }
    L_0x0415:
        r24.d(r25);	 Catch:{ all -> 0x01e7 }
        r27.setTransactionSuccessful();	 Catch:{ all -> 0x01e7 }
        r27.endTransaction();
        r4 = r24.q();
        r4 = (java.util.List) r4;
        goto L_0x0015;
    L_0x0426:
        r14 = 0;
        goto L_0x03b3;
    L_0x0428:
        r13 = 0;
        goto L_0x03bf;
    L_0x042a:
        r4 = r20;
        goto L_0x0181;
    L_0x042e:
        r4 = r18;
        goto L_0x0339;
    L_0x0432:
        r4 = r18;
        goto L_0x02c4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.library.provider.di.a(java.util.List, long, int, boolean, boolean, boolean, long, boolean, com.twitter.library.provider.e):java.util.List<cfz>");
    }

    private static List<cfz> a(List<cfz> list, int i) {
        List<cfz> arrayList = new ArrayList();
        List<cfz> arrayList2 = new ArrayList(list);
        Collections.reverse(arrayList2);
        Set hashSet = new HashSet();
        for (cfz cfz : arrayList2) {
            if (hashSet.contains(a(cfz.a, i))) {
                arrayList.add(cfz);
            } else {
                hashSet.add(a(cfz.a, i));
            }
        }
        return arrayList;
    }

    private static String a(cga cga, int i) {
        return Long.valueOf(cga.b).toString() + '|' + Integer.valueOf(i).toString();
    }

    private void g(int i) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            writableDatabase.delete("tokens", "type=?", new String[]{String.valueOf(i)});
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    private int a(List<TwitterTypeAhead> list, long j, e eVar) {
        int i = 0;
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            g(1);
            e(15);
            Collection arrayList = new ArrayList();
            y yVar = new y(100, list);
            while (yVar.hasNext()) {
                arrayList.clear();
                for (TwitterTypeAhead twitterTypeAhead : yVar.a()) {
                    int i2;
                    if (twitterTypeAhead.d.isEmpty()) {
                        i2 = i;
                    } else {
                        int i3 = twitterTypeAhead.c;
                        long j2 = twitterTypeAhead.e.c;
                        arrayList.add(twitterTypeAhead.e);
                        ContentValues contentValues = new ContentValues();
                        Iterator it = twitterTypeAhead.d.iterator();
                        while (it.hasNext()) {
                            contentValues.put("text", (String) it.next());
                            contentValues.put("weight", Integer.valueOf(i3));
                            contentValues.put("type", Integer.valueOf(1));
                            contentValues.put("ref_id", Long.valueOf(j2));
                            writableDatabase.insert("tokens", null, contentValues);
                        }
                        i2 = i + 1;
                    }
                    i = i2;
                }
                if (!arrayList.isEmpty()) {
                    a(arrayList, j, 15, -1, null, null, true, eVar);
                }
            }
            writableDatabase.setTransactionSuccessful();
            return i;
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public long a(int i, long j) {
        k b = b().c(baa.class).b();
        ((bab) b.d).a(i).a(j);
        return b.c();
    }

    public long c(int i) {
        com.twitter.database.model.j a = ((azy) b().a(azy.class)).f().a("type=?", String.valueOf(i));
        try {
            long b;
            if (a.b()) {
                b = ((azz) a.a).b();
            } else {
                b = -1;
            }
            a.close();
            return b;
        } catch (Throwable th) {
            a.close();
        }
    }

    public int a(List<TwitterTypeAhead> list, long j, int i, e eVar) {
        if (list.isEmpty()) {
            return 0;
        }
        switch (i) {
            case mx.View_android_theme /*0*/:
                throw new IllegalArgumentException("Must specify a valid type!");
            case WireMessage.WIRE_CHAT /*1*/:
                return a((List) list, j, eVar);
            default:
                return 0;
        }
    }

    public int b(List<TwitterLocation> list) {
        int i = 0;
        if (!list.isEmpty()) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                writableDatabase.delete("locations", null, null);
                ContentValues contentValues = new ContentValues(4);
                for (TwitterLocation twitterLocation : list) {
                    int i2;
                    contentValues.put("name", twitterLocation.a());
                    contentValues.put("woeid", Long.valueOf(twitterLocation.d()));
                    contentValues.put("country", twitterLocation.b());
                    contentValues.put("country_code", twitterLocation.c());
                    if (writableDatabase.insert("locations", null, contentValues) > 0) {
                        i2 = i + 1;
                    } else {
                        i2 = i;
                    }
                    i = i2;
                }
                writableDatabase.setTransactionSuccessful();
            } finally {
                writableDatabase.endTransaction();
            }
        }
        return i;
    }

    private static void a(ContentValues contentValues, int i, dp dpVar, cfz cfz) {
        cga cga = cfz.a;
        contentValues.put(NotificationCompatApi21.CATEGORY_EVENT, Integer.valueOf(cga.d));
        contentValues.put("created_at", Long.valueOf(cga.a));
        contentValues.put("hash", Integer.valueOf(cga.hashCode()));
        contentValues.put("max_position", Long.valueOf(cga.b));
        contentValues.put("min_position", Long.valueOf(cga.c));
        contentValues.put("source_type", Integer.valueOf(cga.f));
        contentValues.put("target_type", Integer.valueOf(cga.i));
        contentValues.put("target_object_type", Integer.valueOf(cga.l));
        if (dpVar != null) {
            com.twitter.util.serialization.n a = s.a(s.f);
            Object d;
            switch (i) {
                case WireMessage.WIRE_CHAT /*1*/:
                    d = d(dpVar.h, cga.c());
                    contentValues.put("sources_size", Integer.valueOf(d.size()));
                    contentValues.put("sources", a(d, a));
                    break;
                case WireMessage.WIRE_CONTROL /*2*/:
                    d = d(dpVar.k, cfz.b());
                    contentValues.put("targets_size", Integer.valueOf(d.size()));
                    contentValues.put("targets", a(d, a));
                    break;
                case WireMessage.WIRE_AUTH /*3*/:
                    d = e(dpVar.l, cfz.a());
                    contentValues.put("targets_size", Integer.valueOf(d.size()));
                    contentValues.put("targets", a(d, a));
                    break;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    d = e(dpVar.o, cfz.c());
                    contentValues.put("target_objects_size", Integer.valueOf(d.size()));
                    contentValues.put("target_objects", a(d, a));
                    break;
            }
        }
        if (!contentValues.containsKey("sources")) {
            contentValues.put("sources_size", Integer.valueOf(cga.e));
            if (cga.f == 1) {
                contentValues.put("sources", a(cga.g));
            } else {
                contentValues.putNull("sources");
            }
        }
        if (!contentValues.containsKey("targets")) {
            contentValues.put("targets_size", Integer.valueOf(cga.h));
            switch (cga.i) {
                case WireMessage.WIRE_CHAT /*1*/:
                case WireMessage.WIRE_CONTROL /*2*/:
                    contentValues.put("targets", a(cga.j));
                    break;
                default:
                    contentValues.putNull("targets");
                    break;
            }
        }
        if (!contentValues.containsKey("target_objects")) {
            contentValues.put("target_objects_size", Integer.valueOf(cga.k));
            switch (cga.l) {
                case WireMessage.WIRE_CONTROL /*2*/:
                    contentValues.put("target_objects", a(cga.m));
                case WireMessage.WIRE_AUTH /*3*/:
                    contentValues.put("target_objects", a(a.a(cfz.d())));
                default:
                    contentValues.putNull("target_objects");
            }
        }
    }

    private static void a(ContentValues contentValues, com.twitter.model.search.p pVar) {
        TwitterSocialProof twitterSocialProof = pVar.f;
        if (twitterSocialProof != null) {
            contentValues.put("soc_type", Integer.valueOf(twitterSocialProof.b));
            contentValues.put("soc_name", twitterSocialProof.c);
            contentValues.put("soc_fav_count", Integer.valueOf(twitterSocialProof.d));
            contentValues.put("soc_rt_count", Integer.valueOf(twitterSocialProof.e));
            contentValues.put("soc_second_name", twitterSocialProof.h);
            contentValues.put("soc_others_count", Integer.valueOf(twitterSocialProof.i));
        }
        if (!CollectionUtils.b(pVar.a)) {
            contentValues.put("highlights", a(pVar.a, s.a(com.twitter.model.search.a.a)));
        }
        if (!TextUtils.isEmpty(pVar.h) && !TextUtils.isEmpty(pVar.g)) {
            contentValues.put("reason_icon_type", pVar.h);
            contentValues.put("reason_text", pVar.g);
        }
    }

    public void a(long j, int i, int i2, e eVar) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues(2);
            contentValues.put("soc_fav_count", Integer.valueOf(i));
            contentValues.put("soc_rt_count", Integer.valueOf(i2));
            Object update = writableDatabase.update("status_metadata", contentValues, "status_id=?", new String[]{String.valueOf(j)});
            contentValues.clear();
            contentValues.put("favorite_count", Integer.valueOf(i));
            contentValues.put("retweet_count", Integer.valueOf(i2));
            Object update2 = writableDatabase.update("statuses", contentValues, "status_id=?", new String[]{String.valueOf(j)});
            writableDatabase.setTransactionSuccessful();
            if ((update > null || update2 > null) && eVar != null) {
                eVar.a(b);
                eVar.a(c);
            }
        } finally {
            writableDatabase.endTransaction();
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public long[] a(int r12, int r13) {
        /*
        r11 = this;
        r5 = 0;
        r10 = 1;
        r9 = 0;
        r0 = r11.getReadableDatabase();
        r1 = "activities";
        r2 = ccd.a;
        r3 = "type=?";
        r4 = new java.lang.String[r10];
        r6 = java.lang.String.valueOf(r9);
        r4[r9] = r6;
        r7 = "max_position DESC";
        r6 = r5;
        r8 = r5;
        r4 = r0.query(r1, r2, r3, r4, r5, r6, r7, r8);
        r5 = new java.util.HashSet;
        r5.<init>();
        if (r4 == 0) goto L_0x0081;
    L_0x0027:
        r0 = r4.moveToFirst();	 Catch:{ all -> 0x00a8 }
        if (r0 == 0) goto L_0x007e;
    L_0x002d:
        r2 = r9;
        r3 = r9;
    L_0x002f:
        r0 = 4;
        r0 = r4.getInt(r0);	 Catch:{ all -> 0x00a8 }
        r1 = 1;
        r1 = r4.getInt(r1);	 Catch:{ all -> 0x00a8 }
        if (r10 != r0) goto L_0x00b3;
    L_0x003b:
        r0 = 5;
        r0 = r4.getBlob(r0);	 Catch:{ all -> 0x00a8 }
        r6 = com.twitter.util.serialization.s.f;	 Catch:{ all -> 0x00a8 }
        r6 = com.twitter.util.serialization.s.a(r6);	 Catch:{ all -> 0x00a8 }
        r0 = com.twitter.util.serialization.m.a(r0, r6);	 Catch:{ all -> 0x00a8 }
        r0 = (java.util.List) r0;	 Catch:{ all -> 0x00a8 }
        r6 = 2;
        if (r1 == r6) goto L_0x0056;
    L_0x004f:
        r6 = 3;
        if (r1 == r6) goto L_0x0056;
    L_0x0052:
        r6 = 15;
        if (r1 != r6) goto L_0x0086;
    L_0x0056:
        if (r2 >= r13) goto L_0x0086;
    L_0x0058:
        r6 = r0.iterator();	 Catch:{ all -> 0x00a8 }
        r1 = r2;
    L_0x005d:
        r0 = r6.hasNext();	 Catch:{ all -> 0x00a8 }
        if (r0 == 0) goto L_0x0073;
    L_0x0063:
        r0 = r6.next();	 Catch:{ all -> 0x00a8 }
        r0 = (java.lang.Long) r0;	 Catch:{ all -> 0x00a8 }
        r0 = r5.add(r0);	 Catch:{ all -> 0x00a8 }
        if (r0 == 0) goto L_0x00b6;
    L_0x006f:
        r0 = r1 + 1;
    L_0x0071:
        r1 = r0;
        goto L_0x005d;
    L_0x0073:
        r0 = r3;
    L_0x0074:
        r2 = r4.moveToNext();	 Catch:{ all -> 0x00a8 }
        if (r2 == 0) goto L_0x007e;
    L_0x007a:
        if (r1 < r13) goto L_0x00ad;
    L_0x007c:
        if (r0 < r12) goto L_0x00ad;
    L_0x007e:
        r4.close();
    L_0x0081:
        r0 = com.twitter.util.collection.CollectionUtils.e(r5);
        return r0;
    L_0x0086:
        if (r3 >= r12) goto L_0x00b3;
    L_0x0088:
        r6 = r0.iterator();	 Catch:{ all -> 0x00a8 }
        r1 = r3;
    L_0x008d:
        r0 = r6.hasNext();	 Catch:{ all -> 0x00a8 }
        if (r0 == 0) goto L_0x00b0;
    L_0x0093:
        r0 = r6.next();	 Catch:{ all -> 0x00a8 }
        r0 = (java.lang.Long) r0;	 Catch:{ all -> 0x00a8 }
        r0 = r5.add(r0);	 Catch:{ all -> 0x00a8 }
        if (r0 == 0) goto L_0x00a5;
    L_0x009f:
        r0 = r1 + 1;
        if (r0 < r12) goto L_0x00a6;
    L_0x00a3:
        r1 = r2;
        goto L_0x0074;
    L_0x00a5:
        r0 = r1;
    L_0x00a6:
        r1 = r0;
        goto L_0x008d;
    L_0x00a8:
        r0 = move-exception;
        r4.close();
        throw r0;
    L_0x00ad:
        r2 = r1;
        r3 = r0;
        goto L_0x002f;
    L_0x00b0:
        r0 = r1;
        r1 = r2;
        goto L_0x0074;
    L_0x00b3:
        r1 = r2;
        r0 = r3;
        goto L_0x0074;
    L_0x00b6:
        r0 = r1;
        goto L_0x0071;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.library.provider.di.a(int, int):long[]");
    }

    private static dp a(SQLiteDatabase sQLiteDatabase, int i) {
        Cursor query = sQLiteDatabase.query("activities", ccd.a, "type=?", new String[]{String.valueOf(i)}, null, null, "max_position DESC", "1");
        if (query == null) {
            return null;
        }
        try {
            dp dpVar;
            if (query.moveToFirst()) {
                int i2 = query.getInt(4);
                com.twitter.util.serialization.n a = s.a(s.f);
                List list = 1 == i2 ? (List) com.twitter.util.serialization.m.a(query.getBlob(5), a) : null;
                int i3 = query.getInt(7);
                List list2 = null;
                List list3 = null;
                switch (i3) {
                    case WireMessage.WIRE_CHAT /*1*/:
                        list2 = (List) com.twitter.util.serialization.m.a(query.getBlob(8), a);
                        break;
                    case WireMessage.WIRE_CONTROL /*2*/:
                        list3 = (List) com.twitter.util.serialization.m.a(query.getBlob(8), a);
                        break;
                }
                int i4 = query.getInt(10);
                List list4 = null;
                List list5 = null;
                switch (i4) {
                    case WireMessage.WIRE_CONTROL /*2*/:
                        list4 = (List) com.twitter.util.serialization.m.a(query.getBlob(11), a);
                        break;
                    case WireMessage.WIRE_AUTH /*3*/:
                        list5 = a.a(query.getBlob(11));
                        break;
                }
                dpVar = new dp(query.getLong(0), query.getInt(1), query.getLong(2), query.getLong(12), query.getLong(13), query.getInt(3), i2, list, query.getInt(6), i3, list2, list3, query.getInt(9), i4, list4, list5);
            } else {
                dpVar = null;
            }
            query.close();
            return dpVar;
        } catch (Throwable th) {
            query.close();
        }
    }

    private static int a(dp dpVar, cfz cfz) {
        int i = 1;
        if (dpVar == null || cfz == null) {
            return 0;
        }
        cga cga = cfz.a;
        if (dpVar.b != cga.d) {
            return 0;
        }
        switch (dpVar.b) {
            case WireMessage.WIRE_CHAT /*1*/:
            case mx.TwitterEditText_messageSize /*9*/:
            case mx.TwitterEditText_messageStyle /*10*/:
            case mx.TwitterEditText_maxCharacterCount /*11*/:
            case mx.TwitterEditText_characterCounterColor /*12*/:
            case mx.TwitterButton_nodpiBaseIconName /*16*/:
            case mx.TwitterButton_bounded /*17*/:
                if (dpVar.j != 2 || dpVar.j != cga.i || dpVar.l == null || cfz.a().isEmpty()) {
                    return 0;
                }
                if (!b(dpVar.l, cfz.a())) {
                    i = 0;
                }
                return i;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                if (dpVar.n != 2 || dpVar.n != cga.l || dpVar.o == null || cfz.c().isEmpty()) {
                    return 0;
                }
                if (!b(dpVar.o, cfz.c())) {
                    i = 0;
                }
                return i;
            case mx.UserView_actionButtonPaddingRight /*5*/:
                if (dpVar.j != 1 || dpVar.j != cga.i || dpVar.k == null || cfz.b().isEmpty()) {
                    return 0;
                }
                if (!c(dpVar.k, cfz.b())) {
                    i = 0;
                }
                return i;
            default:
                return 0;
        }
    }

    private static boolean b(List<Long> list, List<cm> list2) {
        int size = list.size();
        if (size != list2.size()) {
            return false;
        }
        if (size == 1) {
            return ((Long) list.get(0)).longValue() == ((cm) list2.get(0)).b;
        }
        HashSet hashSet = new HashSet();
        for (Long add : list) {
            hashSet.add(add);
        }
        for (cm cmVar : list2) {
            if (!hashSet.contains(Long.valueOf(cmVar.b))) {
                return false;
            }
        }
        return true;
    }

    private static boolean c(List<Long> list, List<TwitterUser> list2) {
        int size = list.size();
        if (size != list2.size()) {
            return false;
        }
        if (size == 1) {
            return ((Long) list.get(0)).longValue() == ((TwitterUser) list2.get(0)).c;
        }
        HashSet hashSet = new HashSet();
        for (Long add : list) {
            hashSet.add(add);
        }
        for (TwitterUser twitterUser : list2) {
            if (!hashSet.contains(Long.valueOf(twitterUser.c))) {
                return false;
            }
        }
        return true;
    }

    private static List<Long> d(List<Long> list, List<TwitterUser> list2) {
        Collection linkedHashSet = new LinkedHashSet();
        for (TwitterUser twitterUser : list2) {
            linkedHashSet.add(Long.valueOf(twitterUser.c));
        }
        for (Long add : list) {
            linkedHashSet.add(add);
        }
        return new ArrayList(linkedHashSet);
    }

    private static List<Long> e(List<Long> list, List<cm> list2) {
        Collection linkedHashSet = new LinkedHashSet();
        for (cm cmVar : list2) {
            linkedHashSet.add(Long.valueOf(cmVar.b));
        }
        for (Long add : list) {
            linkedHashSet.add(add);
        }
        return new ArrayList(linkedHashSet);
    }

    static String k(long j, int i) {
        return j + "-" + i + ".db";
    }

    public static void b(Context context, long j) {
        String k = k(j, 46);
        synchronized (d) {
            di diVar = (di) d.remove(k);
            if (diVar != null) {
                diVar.close();
            }
            if (!context.deleteDatabase(k)) {
                bbn.a(new SQLiteException("Cannot delete: " + k));
            }
        }
    }

    public Long b(long j, long j2) {
        String str = "SELECT g_status_id FROM status_groups WHERE owner_id=? AND preview_draft_id=?";
        Cursor rawQuery = getReadableDatabase().rawQuery("SELECT g_status_id FROM status_groups WHERE owner_id=? AND preview_draft_id=?", new String[]{Long.toString(j), Long.toString(j2)});
        if (rawQuery != null) {
            try {
                if (rawQuery.moveToFirst()) {
                    Long valueOf = Long.valueOf(rawQuery.getLong(0));
                    return valueOf;
                }
                rawQuery.close();
            } finally {
                rawQuery.close();
            }
        }
        return null;
    }

    public int a(int i, long[] jArr, e eVar) {
        int i2;
        Uri uri;
        if (i == 0 || i == 1) {
            i2 = "timeline";
            uri = df.a;
        } else if (i == 13) {
            i2 = "search_results";
            uri = db.a;
        } else {
            i2 = "status_groups";
            uri = dd.a;
        }
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            i2 = a(writableDatabase, (String) i2, "_id=?", jArr);
            writableDatabase.setTransactionSuccessful();
            if (i2 > 0 && eVar != null) {
                eVar.a(uri);
            }
            return i2;
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void e(long j, long j2, e eVar) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            String str = "UPDATE timeline SET flags = flags & -67371009 WHERE entity_type = 1 AND owner_id=? AND type=? AND entity_id IN (SELECT status_id FROM statuses WHERE author_id = ?)";
            writableDatabase.execSQL("UPDATE timeline SET flags = flags & -67371009 WHERE entity_type = 1 AND owner_id=? AND type=? AND entity_id IN (SELECT status_id FROM statuses WHERE author_id = ?)", new String[]{String.valueOf(j), String.valueOf(0), String.valueOf(j2)});
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public int a(int i, long j, e eVar) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues(1);
            contentValues.put("tag", Integer.valueOf(0));
            int update = writableDatabase.update("activities", contentValues, "type=? AND max_position<=?", new String[]{String.valueOf(i), String.valueOf(j)});
            writableDatabase.setTransactionSuccessful();
            if (update > 0 && eVar != null) {
                eVar.a(cl.a);
            }
            return update;
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void b(int i, long[] jArr, e eVar) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues(1);
            contentValues.put("tag", Integer.valueOf(0));
            if (jArr == null || jArr.length == 0) {
                writableDatabase.update("activities", contentValues, "type=?", new String[]{String.valueOf(i)});
            } else {
                a("activities", contentValues, jArr);
            }
            writableDatabase.setTransactionSuccessful();
            if (eVar != null) {
                eVar.a(cl.a);
            }
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public int a(boolean z, long j) {
        Cursor query = getReadableDatabase().query("search_results", new String[]{"type_id"}, "search_id=?", new String[]{String.valueOf(j)}, null, null, "type_id" + (z ? " ASC" : " DESC"), "1");
        if (query == null) {
            return 0;
        }
        try {
            if (query.moveToFirst()) {
                int i = query.getInt(0);
                return i;
            }
            query.close();
            return 0;
        } finally {
            query.close();
        }
    }

    public int d(int i) {
        Cursor query = getReadableDatabase().query("activities", new String[]{"_id"}, "type=? AND tag=1", new String[]{String.valueOf(i)}, null, null, null);
        if (query == null) {
            return 0;
        }
        try {
            int count = query.getCount();
            return count;
        } finally {
            query.close();
        }
    }

    private void a(SQLiteDatabase sQLiteDatabase, ContentValues contentValues, blh blh, int i, int i2, long j) {
        Set hashSet = new HashSet();
        Collection hashSet2 = new HashSet();
        ContentValues contentValues2 = contentValues;
        contentValues2.put("story_id", blh.a);
        contentValues.put("story_order", Integer.valueOf(i));
        contentValues.put("story_type", Integer.valueOf(blh.b));
        contentValues.put("story_proof_type", Integer.valueOf(blh.c.a));
        contentValues.put("story_proof_addl_count", Integer.valueOf(blh.c.b));
        contentValues.put("data_type", Integer.valueOf(1));
        contentValues.putNull("data_id");
        contentValues.put("story_is_read", Integer.valueOf(0));
        contentValues2 = contentValues;
        contentValues2.put("story_meta_title", blh.d);
        contentValues2 = contentValues;
        contentValues2.put("story_meta_subtitle", blh.e);
        contentValues2 = contentValues;
        contentValues2.put("story_meta_query", blh.f);
        contentValues2 = contentValues;
        contentValues2.put("story_meta_header_img_url", blh.g);
        contentValues2 = contentValues;
        contentValues2.put("story_source", blh.h);
        contentValues2 = contentValues;
        contentValues2.put("story_impression_info", blh.i);
        contentValues.put("story_tag", Integer.valueOf(i2));
        sQLiteDatabase.insert("stories", null, contentValues);
        contentValues.remove("story_proof_type");
        contentValues.remove("story_proof_addl_count");
        contentValues.remove("story_meta_title");
        contentValues.remove("story_meta_subtitle");
        contentValues.remove("story_meta_query");
        contentValues.remove("story_meta_header_img_url");
        contentValues.remove("story_source");
        contentValues.remove("story_impression_info");
        if (blh.c.c != null) {
            for (TwitterUser twitterUser : blh.c.c) {
                hashSet2.add(twitterUser);
                contentValues.put("data_type", Integer.valueOf(2));
                contentValues.put("data_id", Long.valueOf(twitterUser.c));
                sQLiteDatabase.insert("stories", null, contentValues);
            }
        } else if (blh.c.a == 14 && blh.j != null) {
            hashSet2.add(blh.j.C);
            contentValues.put("data_type", Integer.valueOf(2));
            contentValues.put("data_id", Long.valueOf(blh.j.C.c));
            sQLiteDatabase.insert("stories", null, contentValues);
        }
        if (blh.k != null) {
            hashSet2.add(blh.k);
            contentValues.put("data_type", Integer.valueOf(3));
            contentValues.put("data_id", Long.valueOf(blh.k.c));
            sQLiteDatabase.insert("stories", null, contentValues);
        }
        if (!hashSet2.isEmpty()) {
            a(hashSet2, j, 34, (long) i, null, null, true, null);
        }
        if (i2 == 1) {
            if (blh.j != null) {
                hashSet.add(blh.j);
                contentValues.put("data_type", Integer.valueOf(4));
                contentValues.put("data_id", Long.valueOf(blh.j.b));
                sQLiteDatabase.insert("stories", null, contentValues);
                if (blh.m != null) {
                    hashSet.add(blh.m);
                    contentValues.put("data_type", Integer.valueOf(4));
                    contentValues.put("data_id", Long.valueOf(blh.m.b));
                    sQLiteDatabase.insert("stories", null, contentValues);
                }
            }
            if (blh.l != null) {
                for (cm cmVar : blh.l) {
                    hashSet.add(cmVar);
                    contentValues.put("data_type", Integer.valueOf(4));
                    contentValues.put("data_id", Long.valueOf(cmVar.b));
                    sQLiteDatabase.insert("stories", null, contentValues);
                }
            }
            if (!hashSet.isEmpty()) {
                a(hashSet, j, 29, (long) i, false, false, false, null, true, null, true);
            }
        }
    }

    public int a(long j, List<blh> list, int i, e eVar) {
        int i2;
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        writableDatabase.delete("stories", "story_is_read=? AND story_tag=?", new String[]{String.valueOf(0), String.valueOf(1)});
        Cursor query = writableDatabase.query("stories", new String[]{"story_order"}, "data_type=? AND story_tag=?", new String[]{String.valueOf(1), String.valueOf(1)}, null, null, "story_order DESC", "1");
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    i2 = query.getInt(0) + 1;
                } else {
                    i2 = 0;
                }
                query.close();
            } catch (Throwable th) {
                writableDatabase.endTransaction();
            }
        } else {
            i2 = 0;
        }
        ContentValues contentValues = new ContentValues();
        SQLiteStatement compileStatement = writableDatabase.compileStatement("SELECT COUNT(*)  FROM stories WHERE story_id=? AND story_tag=?");
        List<blh> subList = list.subList(0, Math.min(i, list.size()));
        Collections.reverse(subList);
        int i3 = 0;
        for (blh blh : subList) {
            compileStatement.bindString(1, blh.a);
            compileStatement.bindString(2, String.valueOf(1));
            if (compileStatement.simpleQueryForLong() == 0) {
                cfb.b("DatabaseHelper", "Adding story " + blh.a + " at order " + i2);
                a(writableDatabase, contentValues, blh, i2, 1, j);
                i2++;
                i3++;
            } else if (cfb.a()) {
                cfb.b("DatabaseHelper", "Story already exists " + blh.a);
            }
        }
        cfb.b("DatabaseHelper", "Should be clearing all stories with story order <= " + ((i2 - 1) - i));
        writableDatabase.delete("stories", "story_order <= ?", new String[]{String.valueOf(r4)});
        compileStatement.close();
        writableDatabase.setTransactionSuccessful();
        writableDatabase.endTransaction();
        if (i3 > 0 && eVar != null) {
            eVar.a(de.a);
        }
        return i3;
    }

    public void a(String[] strArr, int i) {
        int i2 = 0;
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues(1);
            contentValues.put("story_is_read", Integer.valueOf(1));
            int i3 = 0;
            while (i2 < strArr.length) {
                i3 += writableDatabase.update("stories", contentValues, "story_id=? AND story_tag=?", new String[]{strArr[i2], String.valueOf(i)});
                i2++;
            }
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public Set<String> j() {
        Cursor query = getReadableDatabase().query("stories", new String[]{"story_id"}, "story_is_read=? AND story_tag=?", new String[]{String.valueOf(1), String.valueOf(1)}, null, null, null);
        Set<String> hashSet = new HashSet();
        if (query != null) {
            while (query.moveToNext()) {
                try {
                    hashSet.add(query.getString(0));
                } finally {
                    query.close();
                }
            }
        }
        return hashSet;
    }

    public void c(String str, e eVar) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        Cursor query;
        try {
            int i;
            int i2;
            query = writableDatabase.query("stories", new String[]{"story_order"}, "data_type=? AND story_tag=?", new String[]{String.valueOf(1), String.valueOf(1)}, null, null, "story_order DESC", "1");
            if (query != null) {
                if (query.moveToFirst()) {
                    i = query.getInt(0) + 1;
                } else {
                    i = 0;
                }
                query.close();
            } else {
                i = 0;
            }
            query = writableDatabase.query("stories", new String[]{"story_id", "story_order"}, "data_type=? AND story_tag=?", new String[]{String.valueOf(1), String.valueOf(1)}, null, null, "story_order DESC");
            List<Pair> arrayList = new ArrayList();
            int i3 = 0;
            if (query != null) {
                while (query.moveToNext()) {
                    String string = query.getString(0);
                    Integer valueOf = Integer.valueOf(query.getInt(1));
                    if (string.equals(str)) {
                        i3 = valueOf.intValue();
                    }
                    arrayList.add(new Pair(string, valueOf));
                }
                query.close();
                i2 = i3;
            } else {
                i2 = 0;
            }
            if (arrayList.size() > 0) {
                ContentValues contentValues = new ContentValues(1);
                ContentValues contentValues2 = new ContentValues(1);
                int i4 = 0;
                for (Pair pair : arrayList) {
                    int i5;
                    String str2 = (String) pair.first;
                    Integer num = (Integer) pair.second;
                    if (num.intValue() == i2) {
                        i5 = i;
                    } else if (num.intValue() < i2) {
                        i5 = num.intValue() + 1;
                    }
                    contentValues.put("story_order", Integer.valueOf(i5));
                    contentValues2.put("tag", Integer.valueOf(i5));
                    i4 += writableDatabase.update("stories", contentValues, "story_id=? AND story_tag=?", new String[]{str2, String.valueOf(1)});
                    writableDatabase.update("status_groups", contentValues2, "type=? AND tag=?", new String[]{String.valueOf(29), String.valueOf(num)});
                    writableDatabase.update("user_groups", contentValues2, "type=? AND tag=?", new String[]{String.valueOf(34), String.valueOf(num)});
                }
                i3 = i4;
            } else {
                i3 = 0;
            }
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
            if (i3 > 0 && eVar != null) {
                eVar.a(de.a);
            }
        } catch (Throwable th) {
            writableDatabase.endTransaction();
        }
    }

    public int a(String str, int i, String str2, String str3, long j, String str4, String str5, byte[] bArr) {
        int c = ar.a(this.e).c(str);
        if (c == -1) {
            return 0;
        }
        int a;
        TwitterSchema b = b();
        com.twitter.database.model.j a2 = b.b(ayu.class).a(new com.twitter.database.model.i().a(ays.c).b("notif_id ASC").a());
        int i2 = c + 1;
        while (a2.c()) {
            try {
                a = ((ayv) a2.a).a();
                if (a > i2) {
                    break;
                }
                i2 = a + 1;
            } catch (Throwable th) {
                a2.close();
            }
        }
        a2.close();
        a = i2 - c;
        if (a < 1 || a > 999) {
            cfb.d("DatabaseHelper", "Notification id out of range");
        } else {
            k b2 = b.c(ayw.class).b();
            ((ayx) b2.d).b(i2).a(i).a(str2).b(str3).a(j).c(str4).d(str5).a(bArr);
            if (b2.b() != -1) {
                return i2;
            }
            cfb.d("DatabaseHelper", "Failed to save notification id");
        }
        return c;
    }

    public int a(String str, int i, String str2, String str3, long j, String str4, boolean z) {
        String str5;
        String[] strArr;
        int a;
        r c = b().c(ayw.class);
        c.b();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        if (!z) {
            try {
                if (!TextUtils.isEmpty(str2)) {
                    str5 = ays.e;
                    strArr = new String[]{String.valueOf(i), str2};
                    c.a(str5, strArr);
                    a = a(str, i, str2, str3, j, str4, str2, null);
                    writableDatabase.setTransactionSuccessful();
                    writableDatabase.endTransaction();
                    return a;
                }
            } catch (Throwable th) {
                writableDatabase.endTransaction();
            }
        }
        str5 = ays.d;
        strArr = new String[]{String.valueOf(i)};
        c.a(str5, strArr);
        a = a(str, i, str2, str3, j, str4, str2, null);
        writableDatabase.setTransactionSuccessful();
        writableDatabase.endTransaction();
        return a;
    }

    public List<com.twitter.library.platform.notifications.i> f(String str) {
        return f(auc.a(ays.g, auc.c("aggregation_data")), new String[]{str});
    }

    public List<com.twitter.library.platform.notifications.i> k() {
        return h(ays.f);
    }

    public List<com.twitter.library.platform.notifications.i> l() {
        return h(ays.h);
    }

    public int a(int[] iArr) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            int a = a(writableDatabase, "notifications", ays.b, iArr);
            writableDatabase.setTransactionSuccessful();
            return a;
        } finally {
            writableDatabase.endTransaction();
        }
    }

    private List<com.twitter.library.platform.notifications.i> h(String str) {
        return f(str, null);
    }

    private List<com.twitter.library.platform.notifications.i> f(String str, String[] strArr) {
        com.twitter.database.model.j a = ((ays) b().a(ays.class)).f().a(new com.twitter.database.model.i().a(auc.a(str, ays.a), strArr).b("notif_id DESC").a());
        try {
            com.twitter.util.collection.n a2 = com.twitter.util.collection.n.a(a.a());
            while (a.c()) {
                a2.c((com.twitter.library.platform.notifications.i) new com.twitter.library.platform.notifications.j().b(((ayt) a.a).c()).a(((ayt) a.a).g()).b(((ayt) a.a).e()).a(((ayt) a.a).f()).c(((ayt) a.a).d()).a(((ayt) a.a).b()).d(((ayt) a.a).h()).a(((ayt) a.a).i()).q());
            }
            List<com.twitter.library.platform.notifications.i> list = (List) a2.q();
            return list;
        } finally {
            a.close();
        }
    }

    public int a(int i, String str) {
        String str2;
        String[] strArr;
        if (TextUtils.isEmpty(str)) {
            str2 = ays.d;
            strArr = new String[]{String.valueOf(i)};
        } else {
            str2 = ays.e;
            strArr = new String[]{String.valueOf(i), str};
        }
        return c(str2, strArr);
    }

    public int c(String str, String[] strArr) {
        return b().c(ayw.class).a(str, strArr);
    }

    private int a(SQLiteDatabase sQLiteDatabase, String str, String str2, int[] iArr) {
        int i = 0;
        sQLiteDatabase.beginTransaction();
        int i2 = 1;
        try {
            String[] strArr = new String[1];
            int length = iArr.length;
            i2 = 0;
            while (i < length) {
                strArr[0] = String.valueOf((long) iArr[i]);
                i2 += sQLiteDatabase.delete(str, str2, strArr);
                i++;
            }
            sQLiteDatabase.setTransactionSuccessful();
            return i2;
        } finally {
            sQLiteDatabase.endTransaction();
        }
    }

    private int a(SQLiteDatabase sQLiteDatabase, String str, String str2, long[] jArr) {
        int i = 0;
        sQLiteDatabase.beginTransaction();
        int i2 = 1;
        try {
            String[] strArr = new String[1];
            int length = jArr.length;
            i2 = 0;
            while (i < length) {
                strArr[0] = String.valueOf(jArr[i]);
                i2 += sQLiteDatabase.delete(str, str2, strArr);
                i++;
            }
            sQLiteDatabase.setTransactionSuccessful();
            return i2;
        } finally {
            sQLiteDatabase.endTransaction();
        }
    }

    private static <T extends t> Cursor a(SQLiteDatabase sQLiteDatabase, String str, String[] strArr, String str2, String str3, String[] strArr2, Collection<T> collection, Map<Long, T> map, Map<String, T> map2) {
        StringBuilder append;
        String stringBuilder;
        String[] a;
        t tVar;
        Cursor query;
        ArrayList arrayList = new ArrayList();
        Iterator it = collection.iterator();
        int size = collection.size() / 10;
        if (size > 0) {
            append = new StringBuilder(str2).append(" IN (?,?,?,?,?,?,?,?,?,?)");
            if (str3 != null) {
                append.append(" AND ").append(str3);
            }
            stringBuilder = append.toString();
            a = a(10, strArr2);
            for (int i = 0; i < size; i++) {
                for (int i2 = 0; i2 < 10; i2++) {
                    tVar = (t) it.next();
                    a[i2] = tVar.bg_();
                    if (map != null) {
                        map.put(Long.valueOf(tVar.bf_()), tVar);
                    }
                    if (map2 != null) {
                        map2.put(tVar.bg_(), tVar);
                    }
                }
                query = sQLiteDatabase.query(str, strArr, stringBuilder, a, null, null, null);
                if (query != null) {
                    arrayList.add(query);
                }
            }
        }
        append = new StringBuilder(str2).append("=?");
        if (str3 != null) {
            append.append(" AND ").append(str3);
        }
        stringBuilder = append.toString();
        a = a(1, strArr2);
        while (it.hasNext()) {
            tVar = (t) it.next();
            a[0] = tVar.bg_();
            if (map != null) {
                map.put(Long.valueOf(tVar.bf_()), tVar);
            }
            if (map2 != null) {
                map2.put(tVar.bg_(), tVar);
            }
            query = sQLiteDatabase.query(str, strArr, stringBuilder, a, null, null, null);
            if (query != null) {
                arrayList.add(query);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new MergeCursor((Cursor[]) arrayList.toArray(new Cursor[arrayList.size()]));
    }

    private static String[] a(int i, String[] strArr) {
        int i2;
        if (strArr == null) {
            i2 = 0;
        } else {
            i2 = strArr.length;
        }
        Object obj = new String[(i + i2)];
        if (i2 > 0) {
            System.arraycopy(strArr, 0, obj, i, i2);
        }
        return obj;
    }

    public void j(long j) {
        this.h.add(Long.valueOf(j));
    }

    public void a(Collection<Long> collection) {
        this.h.addAll(collection);
    }

    public void k(long j) {
        this.h.remove(Long.valueOf(j));
    }

    public void b(Collection<Long> collection) {
        this.h.removeAll(collection);
    }

    public int a(long j, List<cbk> list, String str, String str2, long j2, boolean z, e eVar) {
        cfb.b("DatabaseHelper", "Updating news table: " + list.size());
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        if (z) {
            try {
                writableDatabase.delete("news", "country=? AND language=? AND topic_id=?", new String[]{str, str2, String.valueOf(j2)});
            } catch (Throwable th) {
                writableDatabase.endTransaction();
            }
        }
        ContentValues contentValues = new ContentValues();
        int i = 0;
        for (cbk cbk : list) {
            contentValues.clear();
            a(cbk, contentValues, str, str2, j2);
            writableDatabase.insert("news", null, contentValues);
            long a = (long) cbk.a(cbk.a);
            if (cbk.j != null) {
                Collection arrayList = new ArrayList(1);
                arrayList.add(cbk.j);
                a(arrayList, j, 35, a, null, null, true, eVar);
            }
            i = (a > 0 ? 1 : 0) + i;
        }
        writableDatabase.setTransactionSuccessful();
        writableDatabase.endTransaction();
        if (eVar != null) {
            eVar.a(Uri.withAppendedPath(cx.a, String.valueOf(j2)));
        }
        return i;
    }

    private static void a(cbk cbk, ContentValues contentValues, String str, String str2, long j) {
        if (str != null) {
            contentValues.put("country", str);
        }
        if (str2 != null) {
            contentValues.put("language", str2);
        }
        if (j > -1) {
            contentValues.put("topic_id", Long.valueOf(j));
        }
        contentValues.put("news_id", cbk.a);
        contentValues.put("title", cbk.b);
        contentValues.put("image_url", cbk.c);
        contentValues.put("author_name", cbk.d);
        contentValues.put("article_description", cbk.e);
        contentValues.put("article_url", cbk.f);
        contentValues.put("tweet_count", Long.valueOf(cbk.h));
        contentValues.put("start_time", Long.valueOf(cbk.g));
        contentValues.put("news_id_hash", Integer.valueOf(cbk.a(cbk.a)));
    }

    public void a(long j, cbk cbk, e eVar, boolean z) {
        cfb.b("DatabaseHelper", "Updating news table: news_id=" + cbk.a);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            Cursor query = writableDatabase.query("news", new String[]{"_id"}, "news_id=?", new String[]{cbk.a}, null, null, null);
            Object obj = query.getCount() != 0 ? 1 : null;
            query.close();
            ContentValues contentValues = new ContentValues();
            if (obj == null) {
                a(cbk, contentValues, null, null, -1);
                writableDatabase.insert("news", null, contentValues);
            } else if (!z) {
                a(cbk, contentValues, null, null, -1);
                writableDatabase.update("news", contentValues, "news_id=?", new String[]{cbk.a});
            }
            long a = (long) cbk.a(cbk.a);
            if (cbk.i != null) {
                a(cbk.i, j, 32, a, true, false, false, null, false, eVar, true);
            }
            if ((obj == null || !z) && cbk.j != null) {
                Collection arrayList = new ArrayList(1);
                arrayList.add(cbk.j);
                a(arrayList, j, 35, a, null, null, true, eVar);
            }
            writableDatabase.setTransactionSuccessful();
            if (eVar != null) {
                eVar.a(cx.a);
            }
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public long a(com.twitter.model.ads.e eVar, e eVar2) {
        long b = com.twitter.util.m.b();
        cfb.b("DatabaseHelper", "Updating Ads Account permissions: " + eVar);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("promotable_users", a((Object) eVar, com.twitter.model.ads.e.a));
            contentValues.put("last_synced", Long.valueOf(b));
            writableDatabase.insertWithOnConflict("ads_account_permissions", null, contentValues, 5);
            cfb.b("DatabaseHelper", "Updated Ads Account permissions: " + eVar);
            writableDatabase.setTransactionSuccessful();
            if (eVar2 != null) {
                eVar2.a(cm.a(this.f));
            }
            return b;
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void a(com.twitter.model.businessprofiles.m mVar) {
        long b = com.twitter.util.m.b();
        cfb.b("DatabaseHelper", "Saving business profile: " + mVar);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("user_id", Long.valueOf(mVar.b));
            contentValues.put("business_profile", a((Object) mVar, com.twitter.model.businessprofiles.m.a));
            contentValues.put("last_synced", Long.valueOf(b));
            writableDatabase.insertWithOnConflict("business_profiles", null, contentValues, 5);
            cfb.b("DatabaseHelper", "Saved business profile: " + mVar);
            writableDatabase.setTransactionSuccessful();
            Uri a = co.a(mVar.b, this.f);
            cfb.b("DatabaseHelper", "Notifying change of: " + a);
            this.e.getContentResolver().notifyChange(a, null);
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public static String a(Iterable<?> iterable) {
        return " IN ('" + TextUtils.join("','", iterable) + "')";
    }

    public static <T> String a(T... tArr) {
        return " IN ('" + TextUtils.join("','", tArr) + "')";
    }

    public void b(String... strArr) {
        cfb.b("DatabaseHelper", "Deleting all from " + strArr);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            for (String delete : strArr) {
                writableDatabase.delete(delete, null, null);
            }
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public List<Long> a(String str, Collection<ContentValues> collection) {
        return a(str, (Collection) collection, 0);
    }

    public List<Long> a(String str, Collection<ContentValues> collection, int i) {
        cfb.b("DatabaseHelper", "Inserting " + str + " table: " + collection);
        com.twitter.util.collection.n d = com.twitter.util.collection.n.d();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            for (ContentValues insertWithOnConflict : collection) {
                d.c(Long.valueOf(writableDatabase.insertWithOnConflict(str, null, insertWithOnConflict, i)));
            }
            writableDatabase.setTransactionSuccessful();
            return (List) d.q();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void a(String str, ContentValues contentValues, long j) {
        cfb.b("DatabaseHelper", "Updating " + str + " table: " + contentValues);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            String str2 = "_id=?";
            writableDatabase.update(str, contentValues, "_id=?", new String[]{String.valueOf(j)});
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public Cursor m() {
        return getWritableDatabase().query("moments_guide_user_states", new String[]{"moment_id", "is_updated"}, null, null, null, null, null);
    }

    public void a(ContentValues contentValues, long j, String str) {
        String str2 = "moments_pages";
        cfb.b("DatabaseHelper", "Updating moments_pages table: " + contentValues);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            str2 = "moment_id=? AND page_id=?";
            writableDatabase.update("moments_pages", contentValues, "moment_id=? AND page_id=?", new String[]{String.valueOf(j), str});
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void a(ContentValues contentValues, long j) {
        String str = "moments_guide_user_states";
        cfb.b("DatabaseHelper", "Updating moments_guide_user_states table: " + contentValues);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            str = "moment_id=?";
            writableDatabase.update("moments_guide_user_states", contentValues, "moment_id=?", new String[]{String.valueOf(j)});
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void a(long j, long j2, cly cly) {
        Object obj = 1;
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues(3);
            contentValues.put("card_status_id", Long.valueOf(j2));
            contentValues.put("card_id", Long.valueOf(j));
            contentValues.put("card_state", a((Object) cly, cly.a));
            if (writableDatabase.update("card_state", contentValues, "card_id=?", new String[]{String.valueOf(j)}) <= 0) {
                obj = null;
            }
            if (obj == null) {
                writableDatabase.insert("card_state", null, contentValues);
            }
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void a(long j, long j2, String str, cly cly, e eVar) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            ContentValues contentValues = new ContentValues(4);
            contentValues.put("card_id", Long.valueOf(j));
            contentValues.put("card_message_id", Long.valueOf(j2));
            contentValues.put("card_conversation_id", str);
            contentValues.put("card_state", com.twitter.util.serialization.m.a((Object) cly, cly.a));
            if ((writableDatabase.update("dm_card_state", contentValues, "card_message_id=? AND card_id=? AND card_conversation_id=?", new String[]{String.valueOf(j2), String.valueOf(j), str}) > 0 ? 1 : null) == null) {
                writableDatabase.insert("dm_card_state", null, contentValues);
            }
            writableDatabase.setTransactionSuccessful();
            if (eVar != null) {
                eVar.a(cs.a);
            }
            writableDatabase.endTransaction();
        } catch (Throwable th) {
            writableDatabase.endTransaction();
        }
    }

    public int a(String str, String str2, Object obj) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            int delete = writableDatabase.delete(str, str2 + "=?", new String[]{obj.toString()});
            writableDatabase.setTransactionSuccessful();
            return delete;
        } finally {
            writableDatabase.endTransaction();
        }
    }

    private static <T> byte[] a(T t, com.twitter.util.serialization.n<T> nVar) {
        return a(com.twitter.util.serialization.m.a((Object) t, (com.twitter.util.serialization.n) nVar));
    }

    private static byte[] a(byte[] bArr) {
        if (bArr != null && bArr.length > 51200) {
            bbn.a(new IllegalArgumentException("Blob is too large: " + bArr.length + " bytes."));
        }
        return bArr;
    }

    public void e(int i) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            writableDatabase.delete("user_groups", "type=?", new String[]{String.valueOf(i)});
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }
}
