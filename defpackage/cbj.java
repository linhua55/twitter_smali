package defpackage;

import com.twitter.config.c;
import com.twitter.config.d;

/* compiled from: Twttr */
/* renamed from: cbj */
public class cbj {
    public static boolean a(long j) {
        return c.a(j, "japan_news_android_3357", "news_view", "news_view_without_umf");
    }

    public static boolean b(long j) {
        return c.a(j, "japan_news_us_android_3459", "us_news");
    }

    public static boolean c(long j) {
        return c.a(j, "japan_news_india_android_3560", "india_news", "india_news_with_push");
    }

    public static boolean d(long j) {
        return !cbj.a(j) && d.a(j, "japan_news_seamful_enabled", false);
    }

    public static boolean e(long j) {
        return cbj.c(j);
    }

    public static boolean f(long j) {
        return cbj.c(j);
    }

    public static boolean g(long j) {
        boolean z = false;
        for (String a : new String[]{"japan_news_br_android_3618", "japan_news_uk_android_3619", "japan_news_mx_android_3620", "japan_news_id_android_3621"}) {
            if (c.a(j, a, "news_tab", "news_tab_with_push")) {
                return true;
            }
        }
        if (cbj.a(j) || cbj.b(j) || cbj.c(j)) {
            z = true;
        }
        return z;
    }

    public static String a() {
        return d.b("japan_news_country", "US");
    }

    public static String b() {
        return d.b("japan_news_lang", "en");
    }
}
