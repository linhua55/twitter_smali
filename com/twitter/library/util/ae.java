package com.twitter.library.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.twitter.util.m;

/* compiled from: Twttr */
public class ae {
    private static ae a;
    private final SharedPreferences b;
    private boolean c;

    private ae(Context context) {
        this.b = PreferenceManager.getDefaultSharedPreferences(context);
        this.c = this.b.getBoolean("phone_verified", false);
    }

    public static ae a(Context context) {
        if (a == null) {
            a = new ae(context);
        }
        return a;
    }

    public void a(boolean z, boolean z2) {
        a(z, z2, m.b());
    }

    public void a(boolean z, boolean z2, long j) {
        this.b.edit().putBoolean("phone_verified", z).putLong("last_phone_verified_request", j).apply();
        if (z2) {
            this.c = z;
        }
    }

    public void a() {
        this.b.edit().remove("phone_verified").remove("last_phone_verified_request").apply();
        this.c = false;
    }

    public boolean b() {
        return this.c;
    }

    public boolean c() {
        return this.b.getLong("last_phone_verified_request", 0) + 86400000 < m.b();
    }
}
