package com.twitter.android.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.twitter.config.AppConfig;
import com.twitter.library.client.l;
import com.twitter.util.m;

/* compiled from: Twttr */
public class t {
    private final int a;
    private final long b;
    private final String c;
    private final String d;
    private final SharedPreferences e;

    public t(Context context, String str, int i, long j, String str2) {
        this.c = str + "_amount";
        this.d = str + "_last_active";
        this.a = i;
        this.b = j;
        if (str2 == null) {
            this.e = PreferenceManager.getDefaultSharedPreferences(context);
        } else {
            this.e = new l(context, str2, "fatigue");
        }
    }

    public static t a(Context context, String str, String str2) {
        return new t(context, str, 1, 0, str2);
    }

    public boolean a() {
        int i = this.e.getInt(this.c, 0);
        long j = this.e.getLong(this.d, 0);
        if (i >= this.a || m.b() - j <= this.b) {
            return false;
        }
        return true;
    }

    public void b() {
        this.e.edit().putInt(this.c, this.e.getInt(this.c, 0) + 1).putLong(this.d, m.b()).apply();
    }

    public void c() {
        if (AppConfig.m().p()) {
            this.e.edit().remove(this.c).remove(this.d).apply();
        }
    }
}
