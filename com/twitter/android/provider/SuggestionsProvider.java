package com.twitter.android.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.MatrixCursor;
import android.database.MatrixCursor.RowBuilder;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.net.Uri.Builder;
import android.support.v7.recyclerview.BuildConfig;
import com.twitter.android.client.bu;
import com.twitter.android.mx;
import com.twitter.config.a;
import com.twitter.library.api.search.TwitterTypeAhead;
import com.twitter.library.api.search.TwitterTypeAheadGroup;
import com.twitter.library.client.bg;
import com.twitter.library.provider.ParcelableMatrixCursor;
import com.twitter.library.provider.cb;
import com.twitter.library.provider.da;
import com.twitter.library.provider.di;
import com.twitter.library.provider.el;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.util.aq;
import com.twitter.util.aj;
import com.twitter.util.ao;
import com.twitter.util.object.e;
import com.twitter.util.serialization.m;
import com.twitter.util.serialization.s;
import defpackage.bih;
import defpackage.cca;
import defpackage.cew;
import defpackage.cey;
import defpackage.cfb;
import defpackage.cto;
import defpackage.cuj;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class SuggestionsProvider extends ContentProvider {
    public static final String a;
    public static final String b;
    public static final Uri c;
    public static final Uri d;
    public static final Uri e;
    public static final Uri f;
    public static final Uri g;
    public static final Uri h;
    public static final Uri i;
    public static final Pattern j;
    public static final Pattern k;
    private static final Map<String, TwitterTypeAheadGroup> l;
    private static final Map<String, List<TwitterTypeAhead>> m;
    private static final Map<String, List<TwitterTypeAhead>> n;
    private static final Map<String, Integer> o;
    private static final UriMatcher p;
    private static final String[] q;

    static {
        a = a.a() + ".provider.SuggestionsProvider";
        b = "content://" + a + '/';
        c = Uri.parse(b + "compose_users");
        d = Uri.parse(b + "hashtags");
        e = Uri.parse(b + "dmableusers");
        f = Uri.parse(b + "dmsharetweetusers");
        g = Uri.parse(b + "locations");
        h = Uri.parse(b + "users");
        i = Uri.parse(b + "search_suggest_query");
        j = Pattern.compile("[\\w ]+");
        k = Pattern.compile("\\A@?#?\\w+\\z");
        q = new String[]{"_id", "s_type", "suggest_text_1", "suggest_intent_query", "suggest_intent_action", "suggest_text_2", "suggest_intent_data", "suggest_intent_extra_data", "filter_name", "filter_location", "filter_follow", "user_id", "image_url", "user_verified", "friendship", "soc_name"};
        l = new HashMap();
        m = new HashMap();
        n = new HashMap();
        p = new UriMatcher(-1);
        p.addURI(a, "search_suggest_query", 1);
        p.addURI(a, "search_suggest_query/*", 1);
        p.addURI(a, "search_suggest_shortcut", 2);
        p.addURI(a, "search_suggest_shortcut/*", 2);
        p.addURI(a, "compose_users", 3);
        p.addURI(a, "compose_users/*", 3);
        p.addURI(a, "hashtags", 4);
        p.addURI(a, "hashtags/*", 4);
        p.addURI(a, "locations", 5);
        p.addURI(a, "dmableusers", 7);
        p.addURI(a, "dmableusers/*", 7);
        p.addURI(a, "dmsharetweetusers", 8);
        p.addURI(a, "users", 6);
        o = new HashMap(4);
        o.put("news", Integer.valueOf(6));
        o.put("users", Integer.valueOf(2));
        o.put("images", Integer.valueOf(3));
        o.put("videos", Integer.valueOf(5));
    }

    public boolean onCreate() {
        return true;
    }

    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        cfb.b("SuggestionsProvider", "QUERY uri: " + uri + " -> " + p.match(uri));
        switch (p.match(uri)) {
            case WireMessage.WIRE_CHAT /*1*/:
                return e(e.b(uri.getPathSegments().size() > 1 ? uri.getLastPathSegment() : null));
            case WireMessage.WIRE_CONTROL /*2*/:
                return null;
            case WireMessage.WIRE_AUTH /*3*/:
                return a(str, new MatrixCursor(y.a));
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                if (aj.a((CharSequence) str) || str.charAt(0) != '#') {
                    str = str != null ? "#" + str : "#";
                }
                return a(str, new MatrixCursor(p.a), ao.a(uri, "add_query_to_empty_result", false));
            case mx.UserView_actionButtonPaddingRight /*5*/:
                return a(str, new ParcelableMatrixCursor(r.a));
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                return a(str, ao.a(uri, "friendship", 0), ao.a(uri, "add_real_time_suggestions", false), true, false, ao.a(uri, "additional_user_ids", null), null);
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                return a(str, 2, ao.a(uri, "add_real_time_suggestions", false), false, ao.a(uri, "add_query", true), null, new f());
            case ControlMessage.CONTROL_BAN /*8*/:
                return d();
            default:
                throw new IllegalArgumentException("Unknown URL " + uri);
        }
    }

    Cursor a(String str, MatrixCursor matrixCursor) {
        String[] strArr;
        String str2;
        Context context = getContext();
        if (aj.b((CharSequence) str)) {
            String str3;
            if (cew.b.matcher(str).find()) {
                str3 = "users_name LIKE ?";
            } else {
                str3 = "tokens_text LIKE ? AND users_username NOT NULL";
            }
            strArr = new String[]{str + "%"};
            str2 = str3;
        } else {
            strArr = null;
            str2 = null;
        }
        Set hashSet = new HashSet();
        long g = bg.a().c().g();
        int g2 = bu.g();
        Cursor query = di.a(context, g).getReadableDatabase().query(true, "tokens_user_view", n.a, str2, strArr, null, null, "tokens_weight DESC, LOWER(users_username) ASC", String.valueOf(g2));
        if (query != null) {
            int i = 0;
            while (query.moveToNext()) {
                str2 = query.getString(1);
                if (str2 != null) {
                    RowBuilder newRow = matrixCursor.newRow();
                    int i2 = i + 1;
                    newRow.add(Integer.valueOf(i));
                    newRow.add(Long.valueOf(query.getLong(0)));
                    newRow.add(str2);
                    newRow.add(query.getString(2));
                    newRow.add(query.getString(3));
                    newRow.add(Integer.valueOf(query.getInt(4)));
                    newRow.add(Integer.valueOf(query.getInt(5)));
                    hashSet.add(Long.valueOf(query.getLong(0)));
                    i = i2;
                }
            }
            query.close();
        }
        a(matrixCursor, str, g2, hashSet, null);
        return matrixCursor;
    }

    private Cursor d() {
        long g = bg.a().c().g();
        SQLiteDatabase readableDatabase = di.a(getContext(), g).getReadableDatabase();
        SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
        Cursor matrixCursor = new MatrixCursor(y.a);
        sQLiteQueryBuilder.setTables("dm_inbox");
        Cursor query = sQLiteQueryBuilder.query(readableDatabase, bih.a, null, null, null, null, "conversations_sort_event_id DESC", null);
        cca cca = new cca(query, g, getContext(), null, false);
        Set hashSet = new HashSet();
        hashSet.add(Long.valueOf(g));
        int g2 = bu.g();
        while (cca.moveToNext()) {
            try {
                long j = cca.j();
                if (!(cca.i() || j == 0 || hashSet.contains(Long.valueOf(j)))) {
                    a((MatrixCursor) matrixCursor, j, aq.a(cca.g()), cca.f(), cca.m(), 0, 0);
                    hashSet.add(Long.valueOf(j));
                    if (matrixCursor.getCount() >= g2) {
                        break;
                    }
                }
            } catch (Throwable th) {
                query.close();
            }
        }
        query.close();
        if (matrixCursor.getCount() < g2) {
            Cursor a = a(null, 2, false);
            if (a != null) {
                while (a.moveToNext()) {
                    try {
                        long j2 = a.getLong(3);
                        if (!hashSet.contains(Long.valueOf(j2))) {
                            a((MatrixCursor) matrixCursor, j2, a.getString(1), a.getString(0), a.getString(4), a.getInt(5), a.getInt(6));
                            hashSet.add(Long.valueOf(j2));
                            if (matrixCursor.getCount() >= g2) {
                                break;
                            }
                        }
                    } catch (Throwable th2) {
                        a.close();
                    }
                }
                a.close();
            }
        }
        return matrixCursor;
    }

    private Cursor a(String str, int i, boolean z, boolean z2, boolean z3, List<Long> list, cuj<TwitterTypeAhead> cuj_com_twitter_library_api_search_TwitterTypeAhead) {
        MatrixCursor matrixCursor = new MatrixCursor(y.a);
        int g = bu.g();
        if (list == null || list.isEmpty()) {
            Object hashSet = new HashSet();
        } else {
            Set a = a(matrixCursor, (List) list, g);
        }
        Cursor a2 = a(str, i, z2);
        if (a2 != null) {
            while (a2.moveToNext()) {
                long j = a2.getLong(3);
                if (!a.contains(Long.valueOf(j))) {
                    a(matrixCursor, j, a2.getString(1), a2.getString(0), a2.getString(4), a2.getInt(5), a2.getInt(6));
                    a.add(Long.valueOf(j));
                    if (matrixCursor.getCount() >= g) {
                        break;
                    }
                }
            }
            a2.close();
        }
        if (z) {
            a(matrixCursor, aq.a(str), g, a, (cuj) cuj_com_twitter_library_api_search_TwitterTypeAhead);
        }
        if (z3) {
            a(matrixCursor, str);
        }
        return matrixCursor;
    }

    private Set<Long> a(MatrixCursor matrixCursor, List<Long> list, int i) {
        Context context = getContext();
        Set<Long> hashSet = new HashSet();
        if (matrixCursor.getCount() < i) {
            Cursor query = di.a(context, bg.a().c().g()).getReadableDatabase().query("users", y.a, "user_id IN (" + aj.a((CharSequence) ",", (Iterable) list) + ") AND " + "friendship" + " <> 0", null, null, null, null);
            if (query != null) {
                Map hashMap = new HashMap(query.getCount());
                while (query.moveToNext()) {
                    hashMap.put(Long.valueOf(query.getLong(1)), Integer.valueOf(query.getPosition()));
                }
                for (Long l : list) {
                    Integer num = (Integer) hashMap.get(l);
                    if (num != null) {
                        query.moveToPosition(num.intValue());
                        a(matrixCursor, l.longValue(), query.getString(2), query.getString(3), query.getString(4), query.getInt(5), query.getInt(6));
                        hashSet.add(l);
                        if (matrixCursor.getCount() >= i) {
                            break;
                        }
                    }
                }
                query.close();
            }
        }
        return hashSet;
    }

    private void a(MatrixCursor matrixCursor, String str, int i, Set<Long> set, cuj<TwitterTypeAhead> cuj_com_twitter_library_api_search_TwitterTypeAhead) {
        if (aj.b((CharSequence) str) && matrixCursor.getCount() < i) {
            Iterable b = b(str);
            if (b != null) {
                if (cuj_com_twitter_library_api_search_TwitterTypeAhead != null) {
                    b = cto.a(b, (cuj) cuj_com_twitter_library_api_search_TwitterTypeAhead);
                }
                for (TwitterTypeAhead twitterTypeAhead : r0) {
                    if (matrixCursor.getCount() < i) {
                        if (!set.contains(Long.valueOf(twitterTypeAhead.e.c))) {
                            a(matrixCursor, twitterTypeAhead.e.c, twitterTypeAhead.e.k, twitterTypeAhead.e.d, twitterTypeAhead.e.e, twitterTypeAhead.e.n ? 2 : 0, twitterTypeAhead.e.S);
                        }
                    } else {
                        return;
                    }
                }
            }
        }
    }

    private void a(MatrixCursor matrixCursor, long j, String str, String str2, String str3, int i, int i2) {
        RowBuilder newRow = matrixCursor.newRow();
        newRow.add(Integer.valueOf(matrixCursor.getCount() - 1));
        newRow.add(Long.valueOf(j));
        newRow.add(str);
        newRow.add(str2);
        newRow.add(str3);
        newRow.add(Integer.valueOf(i));
        newRow.add(Integer.valueOf(i2));
    }

    private Cursor a(String str, int i, boolean z) {
        String sqlEscapeString;
        int i2 = 0;
        StringBuilder stringBuilder = new StringBuilder();
        if (aj.b((CharSequence) str)) {
            if (str.charAt(0) != '@') {
                i2 = 1;
            }
            String str2 = aq.a(str) + '%';
            sqlEscapeString = DatabaseUtils.sqlEscapeString(str2);
            stringBuilder.append("(users_username LIKE ").append(sqlEscapeString);
            if (i2 != 0) {
                stringBuilder.append(" OR users_name LIKE ").append(sqlEscapeString).append(" OR ").append("users_name").append(" LIKE ").append(DatabaseUtils.sqlEscapeString("% " + str2));
            }
            stringBuilder.append(')');
        }
        Context context = getContext();
        long g = bg.a().c().g();
        if (i != 0) {
            if (stringBuilder.length() != 0) {
                stringBuilder.append(" AND ");
            }
            stringBuilder.append("(users_friendship&").append(i).append('=').append(i);
            if (z) {
                stringBuilder.append(" OR users_user_id = ").append(g);
            }
            stringBuilder.append(')');
        }
        if (stringBuilder.length() > 0) {
            sqlEscapeString = stringBuilder.toString();
        } else {
            sqlEscapeString = null;
        }
        return di.a(context, g).getReadableDatabase().query(true, "tokens_user_view", v.a, sqlEscapeString, null, null, null, "tokens_weight DESC, LOWER(users_username) ASC", null);
    }

    private void a(MatrixCursor matrixCursor, String str) {
        if (aj.b((CharSequence) str) && cey.b.matcher(str).matches()) {
            int count = matrixCursor.getCount();
            RowBuilder newRow = matrixCursor.newRow();
            newRow.add(Integer.valueOf(count));
            newRow.add(Integer.valueOf(0));
            String a = aq.a(str);
            newRow.add(a);
            newRow.add("@" + a);
            newRow.add(null);
            newRow.add(Integer.valueOf(0));
            newRow.add(Integer.valueOf(0));
        }
    }

    Cursor a(String str, MatrixCursor matrixCursor, boolean z) {
        int i;
        int i2;
        Context context = getContext();
        Set hashSet = new HashSet();
        List<TwitterTypeAhead> c = c(str);
        if (c != null) {
            i = 0;
            for (TwitterTypeAhead twitterTypeAhead : c) {
                RowBuilder newRow = matrixCursor.newRow();
                int i3 = i + 1;
                newRow.add(Integer.valueOf(i));
                newRow.add(twitterTypeAhead.g);
                hashSet.add(new s(twitterTypeAhead.g));
                i = i3;
            }
            i2 = i;
        } else {
            i2 = 0;
        }
        int g = bu.g();
        if (i2 < g) {
            Cursor query = di.a(context, bg.a().c().g()).getReadableDatabase().query(true, "tokens_topic_view", u.a, "tokens_text LIKE ? AND search_queries_query NOT NULL", new String[]{str + "%"}, null, null, "tokens_weight DESC, LOWER(search_queries_query) ASC", String.valueOf(g));
            if (query != null) {
                while (query.moveToNext()) {
                    String string = query.getString(0);
                    if (!hashSet.contains(new s(string))) {
                        if (i2 >= g) {
                            break;
                        }
                        RowBuilder newRow2 = matrixCursor.newRow();
                        int i4 = i2 + 1;
                        newRow2.add(Integer.valueOf(i2));
                        newRow2.add(string);
                        i2 = i4;
                    }
                }
                query.close();
            }
        }
        if (i2 < g && str.length() > 1 && ((matrixCursor.getCount() > 0 || z) && !hashSet.contains(new s(str)))) {
            RowBuilder newRow3 = matrixCursor.newRow();
            i = i2 + 1;
            newRow3.add(Integer.valueOf(i2));
            newRow3.add(str);
        }
        return matrixCursor;
    }

    Cursor a(String str, ParcelableMatrixCursor parcelableMatrixCursor) {
        SQLiteDatabase readableDatabase = di.a(getContext(), bg.a().c().g()).getReadableDatabase();
        Set hashSet = new HashSet();
        if (aj.a((CharSequence) str)) {
            return a(readableDatabase, parcelableMatrixCursor, "country=name OR country=''", null, "country ASC", hashSet);
        }
        String[] strArr = new String[]{str + "%"};
        a(readableDatabase, parcelableMatrixCursor, "country LIKE ? AND country=name", strArr, "country ASC", hashSet);
        a(readableDatabase, parcelableMatrixCursor, "name LIKE ?", strArr, "name ASC,country ASC", hashSet);
        return parcelableMatrixCursor;
    }

    private Cursor a(SQLiteDatabase sQLiteDatabase, ParcelableMatrixCursor parcelableMatrixCursor, String str, String[] strArr, String str2, Set<s> set) {
        Cursor query = sQLiteDatabase.query("locations", q.a, str, strArr, null, null, str2, null);
        if (query != null) {
            Resources resources = getContext().getResources();
            while (query.moveToNext()) {
                String string = query.getString(2);
                s sVar = new s(string);
                if (!set.contains(sVar)) {
                    set.add(sVar);
                    cb a = parcelableMatrixCursor.a();
                    a.a(Long.valueOf(query.getLong(0)));
                    a.a(Long.valueOf(query.getLong(1)));
                    a.a(string);
                    CharSequence string2 = query.getString(3);
                    if (string.equalsIgnoreCase(string2) || !aj.b(string2)) {
                        a.a(string);
                    } else {
                        a.a(resources.getString(2131363965, new Object[]{string, string2}));
                    }
                }
            }
            query.close();
        }
        return parcelableMatrixCursor;
    }

    public String getType(Uri uri) {
        switch (p.match(uri)) {
            case WireMessage.WIRE_CHAT /*1*/:
                return "vnd.android.cursor.dir/vnd.android.search.suggest";
            case WireMessage.WIRE_CONTROL /*2*/:
                return "vnd.android.cursor.item/vnd.android.search.suggest";
            case WireMessage.WIRE_AUTH /*3*/:
                return "vnd.android.cursor.item/vnd.twitter.android.suggest_compose_users";
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                return "vnd.android.cursor.item/vnd.twitter.android.suggest_hashtags";
            case mx.UserView_actionButtonPaddingRight /*5*/:
                return "vnd.android.cursor.item/vnd.twitter.android.suggest_locations";
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                return "vnd.android.cursor.item/vnd.twitter.android.suggest_users";
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                return "vnd.android.cursor.item/vnd.twitter.android.suggest_dmable_users";
            case ControlMessage.CONTROL_BAN /*8*/:
                return "vnd.android.cursor.item/vnd.twitter.android.suggest_dm_share_tweet_users";
            default:
                throw new IllegalArgumentException("Unknown URL " + uri);
        }
    }

    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("Insert not supported " + uri);
    }

    public int delete(Uri uri, String str, String[] strArr) {
        throw new UnsupportedOperationException("Delete not supported " + uri);
    }

    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("Update not supported " + uri);
    }

    public static void a(String str, TwitterTypeAheadGroup twitterTypeAheadGroup) {
        synchronized (l) {
            l.put(d(str), twitterTypeAheadGroup);
        }
    }

    public static TwitterTypeAheadGroup a(String str) {
        TwitterTypeAheadGroup twitterTypeAheadGroup;
        synchronized (l) {
            twitterTypeAheadGroup = (TwitterTypeAheadGroup) l.get(d(str));
        }
        return twitterTypeAheadGroup;
    }

    public static void a() {
        synchronized (l) {
            l.clear();
        }
    }

    public static void a(String str, List<TwitterTypeAhead> list) {
        synchronized (m) {
            if (!str.startsWith("@")) {
                str = "@" + str;
            }
            m.put(str, list);
        }
    }

    public static List<TwitterTypeAhead> b(String str) {
        List<TwitterTypeAhead> list;
        synchronized (m) {
            if (!str.startsWith("@")) {
                str = "@" + str;
            }
            list = (List) m.get(str);
        }
        return list;
    }

    public static void b() {
        synchronized (m) {
            m.clear();
        }
    }

    public static void b(String str, List<TwitterTypeAhead> list) {
        synchronized (n) {
            if (!str.startsWith("#")) {
                str = "#" + str;
            }
            n.put(str, list);
        }
    }

    public static List<TwitterTypeAhead> c(String str) {
        List<TwitterTypeAhead> list;
        synchronized (n) {
            if (!str.startsWith("#")) {
                str = "#" + str;
            }
            list = (List) n.get(str);
        }
        return list;
    }

    public static void c() {
        synchronized (n) {
            n.clear();
        }
    }

    private Cursor e(String str) {
        CharSequence d = d(str);
        s sVar = new s(d);
        Context context = getContext();
        di a = di.a(context, el.b(context));
        Set hashSet = new HashSet();
        SQLiteDatabase readableDatabase = a.getReadableDatabase();
        int e = bu.e();
        int d2 = bu.d();
        int c = bu.c();
        int f = bu.f();
        MatrixCursor matrixCursor = new MatrixCursor(q);
        SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
        sQLiteQueryBuilder.setTables("search_queries");
        sQLiteQueryBuilder.appendWhere("name LIKE ");
        sQLiteQueryBuilder.appendWhereEscapeString(d + "%");
        sQLiteQueryBuilder.appendWhere(" AND query!=''");
        sQLiteQueryBuilder.appendWhere(" AND query NOT LIKE 'place:%'");
        sQLiteQueryBuilder.setDistinct(true);
        Cursor query = sQLiteQueryBuilder.query(readableDatabase, t.a, "type IN (6,0)", null, "name", null, "type ASC, query_id DESC, time DESC");
        int i;
        if (aj.b(d)) {
            TwitterTypeAheadGroup twitterTypeAheadGroup;
            int i2;
            int a2;
            int a3;
            Object obj;
            boolean z;
            boolean z2;
            int i3;
            if (d2 + e == 0) {
                twitterTypeAheadGroup = null;
            } else {
                twitterTypeAheadGroup = a(d);
            }
            i = 0;
            if (query == null || !query.moveToFirst()) {
                i2 = 0;
            } else {
                i2 = a(matrixCursor, 0, query, hashSet, d2);
                i = 0 + (i2 - 0);
                int b = b(matrixCursor, i2, query, hashSet, d2 - i);
                i += b - i2;
                i2 = b;
            }
            if (twitterTypeAheadGroup != null) {
                a2 = a(matrixCursor, i2, twitterTypeAheadGroup.b, hashSet, d2 - i);
                i += a2 - i2;
            } else {
                a2 = i2;
            }
            Set hashSet2 = new HashSet();
            String[] strArr = new String[]{d + '%'};
            if (k.matcher(d).matches()) {
                boolean z3;
                int i4;
                Object obj2;
                char charAt = d.charAt(0);
                if (charAt == '@') {
                    if (i == 0) {
                        a3 = a(context, matrixCursor, a2, sVar, hashSet);
                    } else {
                        a3 = a2;
                    }
                    a2 = a(readableDatabase, matrixCursor, a3, "tokens_text LIKE ? AND users_username NOT NULL", strArr, "tokens_weight DESC, LOWER(users_username) ASC", hashSet2, e);
                    z3 = false;
                    a3 = 0 + (a2 - a3);
                    i4 = i;
                    obj2 = 1;
                } else if (charAt == '#') {
                    i4 = b(readableDatabase, matrixCursor, a2, "tokens_text LIKE ? AND search_queries_query NOT NULL", strArr, "tokens_weight DESC, LOWER(search_queries_query) ASC", hashSet, d2);
                    a3 = i + (i4 - a2);
                    obj2 = null;
                    z3 = false;
                    a2 = i4;
                    i4 = a3;
                    a3 = 0;
                } else {
                    i4 = i;
                    obj2 = null;
                    z3 = true;
                    a3 = 0;
                }
                obj = obj2;
                z = false;
                z2 = z3;
                i = a3;
                i2 = i4;
            } else {
                boolean matches = j.matcher(d).matches();
                z = matches;
                z2 = matches;
                i2 = i;
                i = 0;
                obj = null;
            }
            if (z2) {
                String str2;
                String str3;
                String str4;
                if (z) {
                    str2 = "search_queries_query LIKE ?";
                    str3 = "users_name LIKE ?";
                    str4 = "tokens_weight DESC, LOWER(users_name) ASC";
                } else {
                    str2 = "tokens_text LIKE ? AND search_queries_query NOT NULL";
                    str3 = "tokens_text LIKE ? AND users_username NOT NULL";
                    str4 = "tokens_weight DESC, LOWER(users_username) ASC";
                }
                a3 = b(readableDatabase, matrixCursor, a2, str2, strArr, "tokens_weight DESC, LOWER(search_queries_query) ASC", hashSet, d2 - i2);
                if (i2 + (a3 - a2) == 0) {
                    a3 = a(context, matrixCursor, a3, sVar, hashSet);
                }
                a2 = a(readableDatabase, matrixCursor, a3, str3, strArr, str4, hashSet2, e);
                i2 = i + (a2 - a3);
                i3 = a2;
            } else if (i2 == 0 && obj == null) {
                i2 = i;
                i3 = a(context, matrixCursor, a2, sVar, hashSet);
            } else {
                i2 = i;
                i3 = a2;
            }
            if (twitterTypeAheadGroup != null) {
                i = b(matrixCursor, i3, twitterTypeAheadGroup.a, hashSet2, e - i2);
                i3 = (i - i3) + i2;
            } else {
                i = i3;
            }
            if (!z) {
                if (obj != null) {
                    a(context, matrixCursor, i, new s(d.substring(1)));
                } else if (z2) {
                    a(context, matrixCursor, i, sVar);
                }
            }
        } else {
            i = a(readableDatabase, matrixCursor, 0, context.getString(2131364289), hashSet, f, true);
            if (query != null && query.moveToFirst()) {
                b(matrixCursor, a(matrixCursor, i, query, hashSet, c), query, hashSet, (int) ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
            }
        }
        if (query != null) {
            query.close();
        }
        return matrixCursor;
    }

    private static int a(SQLiteDatabase sQLiteDatabase, MatrixCursor matrixCursor, int i, String str, String[] strArr, String str2, Set<s> set, int i2) {
        if (set.size() < i2) {
            Cursor query = sQLiteDatabase.query(true, "tokens_user_view", v.a, str, strArr, null, null, str2, String.valueOf(100));
            if (query != null) {
                while (query.moveToNext() && set.size() < i2) {
                    String string = query.getString(1);
                    s sVar = new s(string);
                    if (!set.contains(sVar)) {
                        set.add(sVar);
                        RowBuilder newRow = matrixCursor.newRow();
                        newRow.add(Integer.valueOf(i));
                        newRow.add(Integer.valueOf(7));
                        newRow.add(query.getString(0));
                        newRow.add(string);
                        if (1 == query.getInt(2)) {
                            newRow.add("com.twitter.android.action.USER_SHOW_TYPEAHEAD");
                        } else {
                            newRow.add("com.twitter.android.action.USER_SHOW_SEARCH_SUGGESTION");
                        }
                        newRow.add('@' + string);
                        newRow.add(null);
                        long j = query.getLong(3);
                        newRow.add(TwitterScribeItem.a(j, null, 3, i).toString());
                        newRow.add(null);
                        newRow.add(null);
                        newRow.add(null);
                        newRow.add(Long.valueOf(j));
                        newRow.add(query.getString(4));
                        newRow.add(Integer.valueOf(query.getInt(5)));
                        newRow.add(Integer.valueOf(query.getInt(6)));
                        newRow.add(query.getString(7));
                        i++;
                    }
                }
                query.close();
            }
        }
        return i;
    }

    private static int a(Context context, MatrixCursor matrixCursor, int i, s sVar) {
        RowBuilder newRow = matrixCursor.newRow();
        newRow.add(Integer.valueOf(i));
        newRow.add(Integer.valueOf(1));
        newRow.add(context.getString(2131363562, new Object[]{sVar.a}));
        newRow.add(sVar.a);
        newRow.add("com.twitter.android.action.USER_SHOW");
        return i + 1;
    }

    private static int a(Context context, MatrixCursor matrixCursor, int i, s sVar, Set<s> set) {
        if (set.contains(sVar)) {
            return i;
        }
        set.add(sVar);
        String trim = sVar.a.trim();
        RowBuilder newRow = matrixCursor.newRow();
        newRow.add(Integer.valueOf(i));
        newRow.add(Integer.valueOf(1));
        newRow.add(context.getString(2131363560, new Object[]{trim}));
        newRow.add(trim);
        newRow.add("com.twitter.android.action.SEARCH");
        return i + 1;
    }

    private static int a(MatrixCursor matrixCursor, int i, Cursor cursor, Set<s> set, int i2) {
        if (!(cursor.isAfterLast() || i2 == 0)) {
            int i3 = 0;
            while (cursor.getInt(2) == 0) {
                String string = cursor.getString(0);
                s sVar = new s(string);
                if (!set.contains(sVar)) {
                    set.add(sVar);
                    RowBuilder newRow = matrixCursor.newRow();
                    newRow.add(Integer.valueOf(i));
                    newRow.add(Integer.valueOf(4));
                    newRow.add(string);
                    newRow.add(cursor.getString(1));
                    newRow.add("com.twitter.android.action.SEARCH_RECENT");
                    newRow.add(null);
                    Builder buildUpon = da.a.buildUpon();
                    buildUpon.appendQueryParameter("type", String.valueOf(0));
                    newRow.add(buildUpon.build());
                    i++;
                    i3++;
                }
                if (cursor.moveToNext()) {
                    if (i3 >= i2) {
                        break;
                    }
                }
                break;
            }
            if (!cursor.isAfterLast()) {
                while (cursor.getInt(2) == 0) {
                    if (!cursor.moveToNext()) {
                        break;
                    }
                }
            }
        }
        return i;
    }

    private static int b(MatrixCursor matrixCursor, int i, Cursor cursor, Set<s> set, int i2) {
        if (!(cursor.isAfterLast() || i2 == 0)) {
            int i3 = 0;
            while (cursor.getInt(2) == 6) {
                String string = cursor.getString(0);
                s sVar = new s(string);
                if (!set.contains(sVar)) {
                    set.add(sVar);
                    RowBuilder newRow = matrixCursor.newRow();
                    newRow.add(Integer.valueOf(i));
                    newRow.add(Integer.valueOf(5));
                    newRow.add(string);
                    newRow.add(cursor.getString(1));
                    newRow.add("com.twitter.android.action.SEARCH_QUERY_SAVED");
                    newRow.add(null);
                    Builder buildUpon = da.a.buildUpon();
                    buildUpon.appendQueryParameter("type", String.valueOf(6));
                    newRow.add(buildUpon.build());
                    newRow.add(TwitterScribeItem.a(cursor.getLong(3), string, 13, i).toString());
                    i++;
                    i3++;
                }
                if (cursor.moveToNext()) {
                    if (i3 >= i2) {
                        break;
                    }
                }
                break;
            }
            if (!cursor.isAfterLast()) {
                while (cursor.getInt(2) == 6) {
                    if (!cursor.moveToNext()) {
                        break;
                    }
                }
            }
        }
        return i;
    }

    private static int a(MatrixCursor matrixCursor, int i, List<TwitterTypeAhead> list, Set<s> set, int i2) {
        int i3 = 0;
        for (TwitterTypeAhead twitterTypeAhead : list) {
            if (i3 >= i2) {
                break;
            }
            int intValue;
            int i4;
            if (o.containsKey(twitterTypeAhead.f.l)) {
                intValue = ((Integer) o.get(twitterTypeAhead.f.l)).intValue();
            } else {
                intValue = 0;
            }
            s sVar = new s(twitterTypeAhead.f.b, intValue);
            if (set.contains(sVar)) {
                i4 = i3;
            } else {
                set.add(sVar);
                RowBuilder newRow = matrixCursor.newRow();
                newRow.add(Integer.valueOf(i));
                newRow.add(Integer.valueOf(2));
                newRow.add(twitterTypeAhead.f.a);
                newRow.add(twitterTypeAhead.f.b);
                newRow.add("com.twitter.android.action.SEARCH_TYPEAHEAD_TOPIC");
                newRow.add(null);
                newRow.add(null);
                newRow.add(TwitterScribeItem.a(-1, twitterTypeAhead.f.b, 12, i).toString());
                newRow.add(Integer.valueOf(intValue));
                i++;
                i4 = i3 + 1;
            }
            i3 = i4;
        }
        return i;
    }

    private static int b(MatrixCursor matrixCursor, int i, List<TwitterTypeAhead> list, Set<s> set, int i2) {
        int i3 = 0;
        for (TwitterTypeAhead twitterTypeAhead : list) {
            if (i3 >= i2) {
                break;
            }
            int i4;
            s sVar = new s(twitterTypeAhead.e.k);
            if (set.contains(sVar)) {
                i4 = i3;
            } else {
                set.add(sVar);
                RowBuilder newRow = matrixCursor.newRow();
                newRow.add(Integer.valueOf(i));
                newRow.add(Integer.valueOf(6));
                newRow.add(twitterTypeAhead.e.d);
                newRow.add(twitterTypeAhead.e.k);
                newRow.add("com.twitter.android.action.USER_SHOW_TYPEAHEAD");
                newRow.add('@' + twitterTypeAhead.e.k);
                newRow.add(null);
                newRow.add(TwitterScribeItem.a(twitterTypeAhead.e.bf_(), null, 3, i).toString());
                newRow.add(null);
                newRow.add(null);
                newRow.add(null);
                newRow.add(Long.valueOf(twitterTypeAhead.e.bf_()));
                newRow.add(twitterTypeAhead.e.e);
                if (twitterTypeAhead.e.n) {
                    i4 = 2;
                } else {
                    i4 = 0;
                }
                newRow.add(Integer.valueOf(i4));
                i++;
                i4 = i3 + 1;
            }
            i3 = i4;
        }
        return i;
    }

    private static int b(SQLiteDatabase sQLiteDatabase, MatrixCursor matrixCursor, int i, String str, String[] strArr, String str2, Set<s> set, int i2) {
        if (i2 <= 0) {
            return i;
        }
        Cursor query = sQLiteDatabase.query(true, "tokens_topic_view", u.a, str, strArr, null, null, str2, String.valueOf(100));
        if (query == null) {
            return i;
        }
        int i3 = 0;
        int i4 = i;
        while (query.moveToNext() && i3 < i2) {
            try {
                String string = query.getString(0);
                s sVar = new s(string);
                if (!set.contains(sVar)) {
                    set.add(sVar);
                    RowBuilder newRow = matrixCursor.newRow();
                    newRow.add(Integer.valueOf(i4));
                    newRow.add(Integer.valueOf(3));
                    newRow.add(string);
                    newRow.add(string);
                    newRow.add("com.twitter.android.action.SEARCH_TYPEAHEAD_TOPIC");
                    newRow.add(null);
                    newRow.add(null);
                    newRow.add(TwitterScribeItem.a(-1, string, 12, i4).toString());
                    i4++;
                    i3++;
                }
            } catch (Throwable th) {
                query.close();
            }
        }
        query.close();
        return i4;
    }

    private static int a(SQLiteDatabase sQLiteDatabase, MatrixCursor matrixCursor, int i, String str, Set<s> set, int i2, boolean z) {
        Cursor query = sQLiteDatabase.query("search_queries", w.a, "cluster_titles NOT NULL", null, null, null, null);
        if (query == null) {
            return i;
        }
        int i3 = 0;
        int i4 = i;
        while (query.moveToNext() && i3 < i2) {
            try {
                CharSequence a;
                int i5;
                String string = query.getString(0);
                Iterable iterable = (List) m.a(query.getBlob(1), s.a(s.i));
                if (iterable != null) {
                    a = aj.a((CharSequence) str, iterable);
                } else {
                    a = null;
                }
                if (aj.b(a)) {
                    RowBuilder newRow = matrixCursor.newRow();
                    newRow.add(Integer.valueOf(i4));
                    newRow.add(Integer.valueOf(8));
                    newRow.add(string);
                    newRow.add(string);
                    newRow.add("com.twitter.android.action.SEARCH_TREND");
                    newRow.add(a);
                    i4++;
                    set.add(new s(string));
                    i5 = i3 + 1;
                    i3 = i4;
                } else {
                    i5 = i3;
                    i3 = i4;
                }
                i4 = i3;
                i3 = i5;
            } catch (Throwable th) {
                query.close();
            }
        }
        query.close();
        return i4;
    }

    static String d(String str) {
        boolean matches;
        int length = str.length();
        if (length > 1) {
            matches = cew.b.matcher(str.substring(length - 1)).matches();
        } else {
            matches = false;
        }
        return str.toLowerCase().trim() + (matches ? " " : BuildConfig.VERSION_NAME);
    }
}
