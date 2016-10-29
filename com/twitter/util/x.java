package com.twitter.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.Build;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.twitter.config.AppConfig;

/* compiled from: Twttr */
public class x {
    public static boolean a() {
        return Build.MANUFACTURER.toLowerCase().contains("kyocera");
    }

    public static boolean b() {
        return Build.BRAND.toLowerCase().contains("blackberry");
    }

    public static boolean c() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        return str.equals("Amazon") && (str2.equals("Kindle Fire") || str2.startsWith("KF"));
    }

    public static String a(Context context, String str) {
        return String.format(c() ? context.getString(ah.amazon_app_store_url_format) : context.getString(ah.google_play_details_url_format), new Object[]{str});
    }

    public static boolean a(Uri uri) {
        return "market".equals(uri.getScheme());
    }

    public static String b(Context context, String str) {
        return context.getString(ah.google_play_web_details_url_format, new Object[]{str});
    }

    public static boolean a(Context context) {
        return c(context, GooglePlayServicesUtil.GOOGLE_PLAY_STORE_PACKAGE);
    }

    public static boolean c(Context context, String str) {
        try {
            context.getPackageManager().getPackageInfo(str, 0);
            return true;
        } catch (NameNotFoundException e) {
            return false;
        }
    }

    public static boolean b(Context context) {
        return AppConfig.m().e() || context.getSharedPreferences("oem", 0).getBoolean("oem_preload", false);
    }

    public static void c(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("oem", 0);
        if (!sharedPreferences.getBoolean("oem_preload", false)) {
            sharedPreferences.edit().putBoolean("oem_preload", true).apply();
        }
    }
}
