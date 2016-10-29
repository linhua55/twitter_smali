package com.twitter.android.platform;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.twitter.android.SearchActivity;
import com.twitter.android.client.z;
import com.twitter.android.io;
import com.twitter.android.mx;
import com.twitter.config.d;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.util.m;
import defpackage.bbu;
import defpackage.bdj;
import java.util.Calendar;
import java.util.List;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class TwitterAccessCwcNotificationReceiver extends BroadcastReceiver {
    public static boolean a(Context context) {
        boolean z = true;
        boolean z2 = PreferenceManager.getDefaultSharedPreferences(context).getBoolean("twitter_access_cwc_notifications_enabled", true);
        bdj a = bdj.a(context);
        if (!z2 || !a.b() || !d.a("twitter_access_cwc_notifications_enabled")) {
            return false;
        }
        String c = a.c();
        if (c == null) {
            return false;
        }
        if (d.c("twitter_access_cwc_notifications_carriers_keys").indexOf(c) == -1) {
            z = false;
        }
        return z;
    }

    public void onReceive(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra("key_event_type");
        if (stringExtra != null) {
            int i = -1;
            switch (stringExtra.hashCode()) {
                case -1583270402:
                    if (stringExtra.equals("type_event_disable")) {
                        boolean z = true;
                        break;
                    }
                    break;
                case -1182159868:
                    if (stringExtra.equals("type_event_start_cricket_activity")) {
                        i = 2;
                        break;
                    }
                    break;
                case 1462996903:
                    if (stringExtra.equals("type_event_show")) {
                        i = 0;
                        break;
                    }
                    break;
            }
            switch (i) {
                case mx.View_android_theme /*0*/:
                    if (!d.a("twitter_access_cwc_notifications_enabled")) {
                        d(context);
                    } else if (a(context)) {
                        c(context);
                    }
                case WireMessage.WIRE_CHAT /*1*/:
                    d(context);
                case WireMessage.WIRE_CONTROL /*2*/:
                    Intent flags = new Intent(context, SearchActivity.class).putExtra("query", d.b("cricket_experience_tournament_hashtag_takeover")).setFlags(335544320);
                    io.a(true, flags);
                    context.startActivity(flags);
                    bbu.a(((TwitterScribeLog) new TwitterScribeLog(bg.a().c().g()).b("app:twitter_access:cricket:notification:open")).b(context));
                default:
            }
        }
    }

    private void c(Context context) {
        List c = d.c("twitter_access_cwc_notifications_carriers_keys");
        List c2 = d.c("twitter_access_cwc_notifications_carriers_names");
        List c3 = d.c("twitter_access_cwc_notifications_headlines");
        List c4 = d.c("twitter_access_cwc_notifications_bodies");
        int indexOf = c.indexOf(bdj.a(context).c());
        if (indexOf != -1 && indexOf < c2.size() && indexOf < c3.size() && indexOf < c4.size()) {
            z.a(context).a(c2.get(indexOf).toString(), c3.get(indexOf).toString(), c4.get(indexOf).toString());
            bbu.a(((TwitterScribeLog) new TwitterScribeLog(bg.a().c().g()).b("app:twitter_access:cricket:notification:impression")).b(context));
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
            int i = defaultSharedPreferences.getInt("twitter_access_notifications_shown_count", 0);
            if (i == 14) {
                e(context);
            } else {
                defaultSharedPreferences.edit().putInt("twitter_access_notifications_shown_count", i + 1).apply();
            }
        }
    }

    private void d(Context context) {
        z.a(context).d();
        e(context);
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(bg.a().c().g()).b("app:twitter_access:cricket:notification:disabled")).b(context));
    }

    private void e(Context context) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putBoolean("twitter_access_cwc_notifications_enabled", false).apply();
        ((AlarmManager) context.getSystemService(NotificationCompatApi21.CATEGORY_ALARM)).cancel(f(context));
    }

    public static void b(Context context) {
        ((AlarmManager) context.getSystemService(NotificationCompatApi21.CATEGORY_ALARM)).setRepeating(1, a(), 259200000, f(context));
        PreferenceManager.getDefaultSharedPreferences(context).edit().putBoolean("twitter_access_cwc_notifications_schedule_started", true).apply();
    }

    public static PendingIntent a(Context context, String str, int i) {
        Intent intent = new Intent(context, TwitterAccessCwcNotificationReceiver.class);
        intent.putExtra("key_event_type", str);
        return PendingIntent.getBroadcast(context, i, intent, 0);
    }

    private static long a() {
        Calendar instance = Calendar.getInstance();
        instance.setTimeInMillis(m.b());
        instance.add(5, 1);
        instance.set(10, 8);
        instance.set(12, 0);
        instance.set(13, 0);
        return instance.getTimeInMillis();
    }

    private static PendingIntent f(Context context) {
        return a(context, "type_event_show", 1);
    }
}
