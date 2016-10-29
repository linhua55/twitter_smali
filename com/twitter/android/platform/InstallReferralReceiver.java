package com.twitter.android.platform;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.provider.Settings.Secure;
import com.twitter.android.util.AppEventTrack;
import com.twitter.android.util.AppEventTrack.EventType;
import com.twitter.android.util.f;
import com.twitter.library.api.d;
import com.twitter.library.client.u;
import com.twitter.library.scribe.TwitterScribeLog;
import defpackage.bbu;
import defpackage.bbw;

/* compiled from: Twttr */
public class InstallReferralReceiver extends BroadcastReceiver {
    static void a(Context context, String str) {
        bbw bbw = (TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(0).b("external::::referred")).a("4", Secure.getString(context.getContentResolver(), "android_id"));
        d a = d.a(context.getApplicationContext());
        u.a.a(a);
        if (a != null) {
            bbw.a("6", a.a());
            bbw.a(a.b());
        }
        if (str != null) {
            AppEventTrack.a(context, str);
            f fVar = new f(AppEventTrack.a(str));
            bbw.a(3, fVar.c, fVar.d, fVar.a, fVar.e, fVar.b, fVar.f, str);
            AppEventTrack.a(context, EventType.Install, str);
        }
        bbu.a(bbw);
    }

    public void onReceive(Context context, Intent intent) {
        new c(context).execute(new String[]{intent.getStringExtra("referrer")});
    }
}
