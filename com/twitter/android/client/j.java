package com.twitter.android.client;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import bbu;
import com.twitter.library.api.d;
import com.twitter.library.client.bg;
import com.twitter.library.client.u;
import com.twitter.library.scribe.TwitterScribeLog;

/* compiled from: Twttr */
final class j implements Runnable {
    private final Context a;

    j(Context context) {
        this.a = context;
    }

    public void run() {
        d a = d.a(this.a);
        u.a.a(a);
        if (a != null) {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.a);
            if (!a.equals(new d(defaultSharedPreferences.getString("adid_identifier", TtmlNode.ANONYMOUS_REGION_ID), defaultSharedPreferences.getBoolean("adid_no_tracking_enabled", false)))) {
                defaultSharedPreferences.edit().putBoolean("adid_no_tracking_enabled", a.b()).putString("adid_identifier", a.a()).apply();
                TwitterScribeLog twitterScribeLog = new TwitterScribeLog(bg.a().c().g());
                twitterScribeLog.b(new String[]{"app::::enter_foreground"});
                twitterScribeLog.h("app_download_client_event");
                twitterScribeLog.a("6", a.a());
                twitterScribeLog.a(a.b());
                bbu.a(twitterScribeLog);
            }
        }
    }
}
