package defpackage;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.database.Cursor;
import android.support.v7.recyclerview.BuildConfig;
import bdc;
import bhz;
import bif;
import bix;
import biy;
import com.twitter.android.mx;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.p;
import com.twitter.model.dms.a;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.m;
import java.util.List;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
/* renamed from: biw */
public class biw {
    public static String a(Context context, List<TwitterUser> list, boolean z, long j) {
        if (list == null) {
            return BuildConfig.VERSION_NAME;
        }
        List a = biw.a((List) list, j);
        switch (a.size()) {
            case mx.View_android_theme /*0*/:
                return context.getString(bdc.media_tag_you);
            case WireMessage.WIRE_CHAT /*1*/:
                if (!z) {
                    return biw.b((TwitterUser) a.get(0));
                }
                return context.getResources().getString(bdc.dm_conversation_title_two, new Object[]{biw.b((TwitterUser) a.get(0))});
            case WireMessage.WIRE_CONTROL /*2*/:
                return context.getResources().getString(bdc.dm_conversation_title_three, new Object[]{biw.b((TwitterUser) a.get(0)), biw.b((TwitterUser) a.get(1))});
            default:
                return context.getResources().getString(bdc.dm_conversation_title_many, new Object[]{biw.b((TwitterUser) a.get(0)), Integer.valueOf(r2 - 1)});
        }
    }

    public static List<TwitterUser> a(List<TwitterUser> list, long j) {
        return CollectionUtils.a((Iterable) list, new bix(j));
    }

    public static boolean a(TwitterUser twitterUser) {
        return (p.d(twitterUser.S) || p.e(twitterUser.S)) ? false : true;
    }

    private static String b(TwitterUser twitterUser) {
        return (twitterUser == null || twitterUser.d == null) ? BuildConfig.VERSION_NAME : twitterUser.d.trim();
    }

    public static String a(long j, long j2) {
        return Math.min(j, j2) + "-" + Math.max(j, j2);
    }

    public static boolean a(String str, long j, long j2) {
        return biw.a(j, j2).equals(str);
    }

    public static String a(long j, long[] jArr) {
        if (jArr.length == 1) {
            return biw.a(j, jArr[0]);
        }
        return "CONV_" + m.b();
    }

    public static boolean a(String str) {
        return str != null && str.startsWith("CONV_");
    }

    public static int a(List<a> list) {
        return CollectionUtils.a((Iterable) list, new biy()).size();
    }

    public static int a(Cursor cursor, int i, long j) {
        int i2 = 0;
        if (cursor != null) {
            int position = cursor.getPosition();
            bhz bhz = new bhz();
            try {
                cursor.moveToPosition(i - 1);
                while (cursor.moveToNext()) {
                    if (bhz.a(cursor) && biw.a(bhz.b(cursor), j)) {
                        i2++;
                    }
                }
            } finally {
                cursor.moveToPosition(position);
            }
        }
        return i2;
    }

    public static boolean a(bgv bgv, long j) {
        return !bgv.b(j) && bgv.f();
    }

    public static long a(Cursor cursor) {
        long j = 0;
        if (cursor != null) {
            int position = cursor.getPosition();
            try {
                if (cursor.moveToLast()) {
                    j = new bif(cursor).c;
                }
                cursor.moveToPosition(position);
            } catch (Throwable th) {
                cursor.moveToPosition(position);
            }
        }
        return j;
    }

    public static Cursor a(Cursor cursor, long j) {
        if (cursor == null) {
            return null;
        }
        cursor.moveToFirst();
        while (cursor.moveToNext()) {
            if (new bif(cursor).c == j) {
                return cursor;
            }
        }
        return null;
    }

    public static boolean a(Context context) {
        return context.getSharedPreferences("dm_prefs", 0).getBoolean("conversation_cache_cleared_for_groups", false);
    }

    public static void b(Context context) {
        biw.a(context, "conversation_cache_cleared_for_groups", true);
    }

    public static void c(Context context) {
        biw.a(context, "has_gone_through_share_tweet_flow", true);
    }

    public static boolean d(Context context) {
        return context.getSharedPreferences("dm_prefs", 0).getBoolean("has_gone_through_share_tweet_flow", false);
    }

    public static void a(Context context, String str, boolean z) {
        Editor edit = context.getSharedPreferences("dm_prefs", 0).edit();
        edit.putBoolean(str, z);
        edit.apply();
    }
}
