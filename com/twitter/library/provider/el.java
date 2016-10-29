package com.twitter.library.provider;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;

/* compiled from: Twttr */
public class el {
    private static boolean a;

    static {
        a = false;
    }

    public static void a(Context context, String str, long j) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putString("current_account", str).putLong("current_user_id", j).apply();
    }

    public static String a(Context context) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        a(context, defaultSharedPreferences);
        return defaultSharedPreferences.getString("current_account", null);
    }

    public static long b(Context context) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        a(context, defaultSharedPreferences);
        return defaultSharedPreferences.getLong("current_user_id", 0);
    }

    private static synchronized void a(Context context, SharedPreferences sharedPreferences) {
        synchronized (el.class) {
            if (!(a || sharedPreferences.contains("current_user_id"))) {
                ar.a(context);
                if (!sharedPreferences.contains("current_user_id")) {
                    sharedPreferences.edit().putLong("current_user_id", 0).apply();
                }
                a = true;
            }
        }
    }
}
