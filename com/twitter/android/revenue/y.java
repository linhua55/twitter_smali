package com.twitter.android.revenue;

import android.content.Context;
import cmb;
import cmc;
import com.twitter.android.av.video.a;
import com.twitter.android.client.OpenUriHelper;
import com.twitter.config.c;
import com.twitter.config.d;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.ui.view.s;
import com.twitter.ui.view.u;
import com.twitter.util.aj;
import java.util.List;

/* compiled from: Twttr */
public class y {
    public static boolean a(Context context, String str, String str2) {
        return aj.b(str2) && OpenUriHelper.a(context, str);
    }

    public static boolean a(cmb cmb, List<String> list) {
        return !b(cmb, list);
    }

    public static boolean b(cmb cmb, List<String> list) {
        return cmc.a(list, cmb) != null;
    }

    public static boolean a(DisplayMode displayMode, cmb cmb, List<String> list) {
        return !(DisplayMode.FORWARD == displayMode || DisplayMode.COMPOSE == displayMode) || b(cmb, list);
    }

    public static boolean a() {
        return d.a("ad_formats_tweet_view_dwell_enabled");
    }

    public static float b() {
        return d.a("ad_formats_tweet_view_visibility_threshold", 0.5f);
    }

    public static double c() {
        return d.a("ad_formats_tweet_view_dwell_threshold", 0.01d);
    }

    public static boolean d() {
        return d.a("ad_formats_media_tweet_dwell_enabled");
    }

    public static boolean e() {
        return d.a("ad_formats_qualified_tweet_dwell_enabled");
    }

    public static int f() {
        return 2130969478;
    }

    private static boolean m() {
        return c.a("promoted_header_text_4149", new String[]{"promoted_tweet_text"});
    }

    public static int g() {
        return m() ? 2130969249 : 2130969428;
    }

    public static int h() {
        return m() ? 2131363421 : 2131363917;
    }

    public static a i() {
        return a.a(1.91f);
    }

    public static s a(s sVar) {
        return new u().b(sVar.b).c(sVar.c).g(sVar.g).i(sVar.i).j(true).a();
    }

    public static boolean j() {
        return c.c("ad_formats_promoted_account_redesign_android_4569");
    }

    public static boolean k() {
        String a = c.a("ad_formats_promoted_account_redesign_android_4569");
        return ("unassigned".equals(a) || "control".equals(a)) ? false : true;
    }

    public static String l() {
        return c.a("ad_formats_promoted_account_redesign_android_4569");
    }

    public static boolean a(String str) {
        return "wtf_view".equals(str);
    }

    public static boolean b(String str) {
        return !"small_button".equals(str);
    }

    public static boolean c(String str) {
        return "large_button".equals(str);
    }

    public static boolean d(String str) {
        return "small_button_bio_full_tap".equals(str);
    }
}
