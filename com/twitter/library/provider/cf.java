package com.twitter.library.provider;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.support.v7.recyclerview.BuildConfig;
import com.twitter.internal.network.f;
import com.twitter.internal.network.j;
import defpackage.cvi;
import java.io.File;

/* compiled from: Twttr */
public class cf {
    public static String a;

    static {
        a = "launcher_icon_badge_behavior";
    }

    public static j a(Context context) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        return new j(defaultSharedPreferences.getBoolean("proxy_enabled", false), defaultSharedPreferences.getString("proxy_host", BuildConfig.VERSION_NAME), defaultSharedPreferences.getString("proxy_port", BuildConfig.VERSION_NAME));
    }

    public static File b(Context context) {
        File b = cvi.b(context);
        return b != null ? new File(b, "http-responses") : null;
    }

    public static f c(Context context) {
        return new f(a(context), b(context));
    }
}
