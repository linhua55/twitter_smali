package com.twitter.library.util;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.preference.PreferenceManager;
import android.support.annotation.VisibleForTesting;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AppCompatDelegate;
import bcu;

/* compiled from: Twttr */
public class g {
    private static g a;
    private final boolean b;

    public static g a() {
        if (a == null) {
            a = new g();
        }
        return a;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    @android.support.annotation.VisibleForTesting
    g() {
        /*
        r5 = this;
        r0 = 1;
        r1 = 0;
        r5.<init>();
        r2 = defpackage.bus.a();
        r2 = r2.f();
        if (r2 == 0) goto L_0x0022;
    L_0x000f:
        r2 = "android_night_mode_4656";
        r3 = new java.lang.String[r0];
        r4 = "theme_switch_enabled";
        r3[r1] = r4;
        r2 = com.twitter.config.c.a(r2, r3);
        if (r2 == 0) goto L_0x0022;
    L_0x001f:
        r5.b = r0;
        return;
    L_0x0022:
        r0 = r1;
        goto L_0x001f;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.library.util.g.<init>():void");
    }

    public void a(AppCompatDelegate appCompatDelegate, Context context) {
        a(appCompatDelegate, PreferenceManager.getDefaultSharedPreferences(context));
    }

    @VisibleForTesting
    void a(AppCompatDelegate appCompatDelegate, SharedPreferences sharedPreferences) {
        int i = 1;
        if (this.b) {
            if (sharedPreferences.getBoolean("pref_night_mode_enabled", false)) {
                i = 2;
            }
            appCompatDelegate.setLocalNightMode(i);
        } else {
            appCompatDelegate.setLocalNightMode(1);
        }
        appCompatDelegate.applyDayNight();
    }

    public final void a(SharedPreferences sharedPreferences) {
        boolean z = false;
        if (this.b) {
            boolean z2 = sharedPreferences.getBoolean("pref_night_mode_enabled", false);
            Editor edit = sharedPreferences.edit();
            String str = "pref_night_mode_enabled";
            if (!z2) {
                z = true;
            }
            edit.putBoolean(str, z).apply();
        }
    }

    public final void a(Activity activity, SharedPreferences sharedPreferences) {
        if (this.b) {
            boolean z = sharedPreferences.getBoolean("pref_night_mode_enabled", false);
            boolean a = a(activity.getResources());
            int color = ContextCompat.getColor(activity, bcu.text);
            int color2 = ContextCompat.getColor(activity, bcu.white);
            if (z && a && color != color2) {
                activity.recreate();
            }
        }
    }

    public final boolean b() {
        return this.b;
    }

    public static boolean a(Resources resources) {
        return (resources.getConfiguration().uiMode & 48) == 32;
    }
}
