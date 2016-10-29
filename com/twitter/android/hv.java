package com.twitter.android;

import android.app.Activity;
import android.content.Intent;
import android.preference.PreferenceManager;
import com.twitter.app.common.util.h;
import com.twitter.app.main.MainActivity;
import com.twitter.config.d;
import com.twitter.library.client.bg;
import com.twitter.util.m;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class hv implements h {
    private static WeakReference<Activity> a;

    public void a(Activity activity) {
        a = new WeakReference(activity);
        PreferenceManager.getDefaultSharedPreferences(activity).edit().putLong("become_inactive_timestamp", m.b()).apply();
    }

    public void b(Activity activity) {
        if (a() && (activity instanceof hw) && bg.a().c().d() && a != null) {
            Activity activity2 = (Activity) a.get();
            if (activity2 == null || activity2 != activity || !activity2.getIntent().equals(activity.getIntent()) || !d(activity) || !((hw) activity).D() || !c(activity)) {
                return;
            }
            if (activity instanceof MainActivity) {
                ((MainActivity) activity).b(MainActivity.c);
                return;
            }
            activity.startActivity(new Intent(activity, MainActivity.class).putExtra("page", MainActivity.c).addFlags(335544320));
            activity.finish();
        }
    }

    private static boolean d(Activity activity) {
        return PreferenceManager.getDefaultSharedPreferences(activity).getBoolean("has_completed_signin_flow", false);
    }

    public static boolean c(Activity activity) {
        return a() && e(activity);
    }

    private static boolean a() {
        return d.a("jump_back_home_enabled");
    }

    private static boolean e(Activity activity) {
        long b = m.b();
        long j = PreferenceManager.getDefaultSharedPreferences(activity).getLong("become_inactive_timestamp", 0);
        return j > 0 && b > j + (((long) d.a("jump_back_home_interval_seconds", 1800)) * 1000);
    }
}
