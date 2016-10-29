package com.twitter.android.moments.ui.fullscreen;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;

/* compiled from: Twttr */
public class db {
    private final SharedPreferences a;

    public static db a(Context context) {
        return new db(PreferenceManager.getDefaultSharedPreferences(context));
    }

    db(SharedPreferences sharedPreferences) {
        this.a = sharedPreferences;
    }

    public boolean a() {
        return this.a.getBoolean("moment_maker_debug_enabled", false);
    }
}
