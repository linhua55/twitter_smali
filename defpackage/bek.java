package defpackage;

import android.content.Context;
import android.support.v7.recyclerview.BuildConfig;
import com.twitter.library.client.l;
import com.twitter.util.aj;

/* compiled from: Twttr */
/* renamed from: bek */
public class bek {
    public static boolean a(Context context, String str) {
        return new l(context, str, "login_verification").getBoolean("login_verification", false);
    }

    public static void a(Context context, String str, String str2, String str3, String str4, int i) {
        new l(context, str, "login_verification").a().a("login_verification", true).a("lv_private_key", str2).a("lv_public_key", str3).a("lv_secret", str4).a("lv_times_to_hash", i).apply();
    }

    public static void b(Context context, String str) {
        new l(context, str, "login_verification").a().a("login_verification", false).a("lv_private_key").a("lv_public_key").a("lv_secret").a("lv_times_to_hash").apply();
    }

    public static void c(Context context, String str) {
        l lVar = new l(context, str, "login_verification");
        lVar.a().a("lv_times_to_hash", lVar.getInt("lv_times_to_hash", 0) - 1).apply();
    }

    public static String d(Context context, String str) {
        return new l(context, str, "login_verification").getString("lv_public_key", BuildConfig.VERSION_NAME);
    }

    public static boolean e(Context context, String str) {
        l lVar = new l(context, str, "login_verification");
        return aj.b(lVar.getString("lv_private_key", BuildConfig.VERSION_NAME)) && aj.b(lVar.getString("lv_public_key", BuildConfig.VERSION_NAME));
    }

    static String f(Context context, String str) {
        return new l(context, str, "login_verification").getString("lv_private_key", BuildConfig.VERSION_NAME);
    }

    static String g(Context context, String str) {
        return new l(context, str, "login_verification").getString("lv_secret", BuildConfig.VERSION_NAME);
    }

    static int h(Context context, String str) {
        return new l(context, str, "login_verification").getInt("lv_times_to_hash", 0);
    }
}
