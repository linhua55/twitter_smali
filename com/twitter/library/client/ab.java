package com.twitter.library.client;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.preference.PreferenceManager;
import ark;
import aru;
import com.twitter.util.al;

/* compiled from: Twttr */
public class ab {
    private static final Object a;
    private static volatile ab b;
    private final Handler c;
    private final Runnable d;
    private final Context e;

    static {
        a = new Object();
    }

    private ab(Context context) {
        this.c = new Handler();
        this.d = new ac(this);
        this.e = context.getApplicationContext();
    }

    public static ab a(Context context) {
        if (b == null) {
            synchronized (a) {
                if (b == null) {
                    b = new ab(context);
                }
            }
        }
        return b;
    }

    public void a() {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.e);
        int i = defaultSharedPreferences.getInt("app_usage_monitor_state", 0);
        long j = defaultSharedPreferences.getLong("app_usage_monitor_start_ts", 0);
        long j2 = defaultSharedPreferences.getLong("app_usage_monitor_update_ts", 0);
        long j3 = j2 - j;
        if (j > 0 && j2 > 0) {
            ark ark = new ark(i == 2 ? "app:session_length:scheduled_exit" : "app:session_length:forced_exit", ark.m, j3);
            ark.b("app_usage_monitor");
            aru.b().a(ark);
        }
        j = al.b();
        defaultSharedPreferences.edit().putInt("app_usage_monitor_state", 1).putLong("app_usage_monitor_start_ts", j).putLong("app_usage_monitor_update_ts", j).apply();
        this.c.postDelayed(this.d, 600000);
    }

    public void b() {
        a(false);
    }

    public synchronized void c() {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.e);
        defaultSharedPreferences.edit().putInt("app_usage_monitor_state", 2).putLong("app_usage_monitor_update_ts", al.b()).apply();
    }

    private void a(boolean z) {
        PreferenceManager.getDefaultSharedPreferences(this.e).edit().putLong("app_usage_monitor_update_ts", al.b()).apply();
        if (z) {
            this.c.postDelayed(this.d, 600000);
        }
    }
}
