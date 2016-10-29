package defpackage;

import bym;
import com.twitter.config.c;
import com.twitter.config.d;
import com.twitter.model.timeline.bn;
import com.twitter.model.timeline.bp;

/* compiled from: Twttr */
/* renamed from: cdu */
public class cdu {
    public static bn a() {
        return new bp().b(cdu.c()).c(cdu.d()).d(cdu.f()).e(cdu.g()).f(bym.a()).g(bym.k()).h(cdu.e()).i(cdu.b()).a(cdu.h()).j(cdu.i()).k(cdu.j()).a();
    }

    private static boolean c() {
        return d.a("recap_enabled");
    }

    private static boolean d() {
        return d.a("wtf_tweet_enabled");
    }

    private static boolean e() {
        return d.a("timeline_user_messaging_enabled");
    }

    private static boolean f() {
        return d.a("wtf_follow_module_enabled");
    }

    private static boolean g() {
        return d.a("wtf_profile_card_carousel_enabled");
    }

    private static boolean h() {
        return d.a("ad_formats_carousel_enabled");
    }

    private static boolean i() {
        return d.a("timeline_module_footers_enabled");
    }

    private static boolean j() {
        return d.a("ad_formats_no_screen_name_ads_enabled");
    }

    public static boolean b() {
        return c.a("ad_formats_ad_slots_android_4189", new String[]{"ad_slots"});
    }
}
