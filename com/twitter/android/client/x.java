package com.twitter.android.client;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import bbu;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.util.telephony.TelephonyUtil;

/* compiled from: Twttr */
public class x {
    private static x a;
    private final Context b;
    private final bg c;
    private boolean d;

    public static synchronized x a(Context context) {
        x xVar;
        synchronized (x.class) {
            if (a == null) {
                a = new x(context.getApplicationContext());
            }
            xVar = a;
        }
        return xVar;
    }

    private x(Context context) {
        this.b = context;
        this.c = bg.a();
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        a(defaultSharedPreferences.getBoolean("media_forward", true), false);
        defaultSharedPreferences.registerOnSharedPreferenceChangeListener(new y(this, defaultSharedPreferences));
    }

    public boolean a() {
        return this.d;
    }

    private void a(boolean z, boolean z2) {
        if (this.d != z) {
            this.d = z;
            if (z2) {
                TwitterScribeLog twitterScribeLog = new TwitterScribeLog(this.c.c().g());
                String[] strArr = new String[1];
                strArr[0] = "settings::::" + (z ? "enable_media_forward" : "disable_media_forward");
                bbu.a(((TwitterScribeLog) twitterScribeLog.b(strArr)).d("network_type:" + TelephonyUtil.i().a() + ",change"));
            }
        }
    }
}
