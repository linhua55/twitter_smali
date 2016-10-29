package com.twitter.library.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.preference.PreferenceManager;
import com.twitter.util.ak;
import defpackage.bcv;

/* compiled from: Twttr */
public class ao {
    public static float a;
    public static boolean b;
    static OnSharedPreferenceChangeListener c;

    static {
        c = new ap();
    }

    public static void a(Context context) {
        a = context.getResources().getDimension(bcv.font_size_medium);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        String string = defaultSharedPreferences.getString("font_size", null);
        if (string != null) {
            a = Float.parseFloat(string) * ak.c();
        }
        b = defaultSharedPreferences.getBoolean("sound_effects", true);
        defaultSharedPreferences.registerOnSharedPreferenceChangeListener(c);
    }

    public static float a() {
        return 14.0f * ak.c();
    }

    public static float b() {
        return 12.0f * ak.c();
    }

    public static float a(float f) {
        return f - (2.0f * ak.c());
    }
}
