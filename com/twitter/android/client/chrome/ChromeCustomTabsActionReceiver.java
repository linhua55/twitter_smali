package com.twitter.android.client.chrome;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.core.Tweet;
import defpackage.bbu;

/* compiled from: Twttr */
public class ChromeCustomTabsActionReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        CustomTabsAction a = CustomTabsAction.a(intent.getAction());
        if (a != null && context != null) {
            String dataString = intent.getDataString();
            long g = bg.a().c().g();
            Intent b = a.b(context, dataString);
            if (b != null) {
                context.startActivity(b);
            }
            Tweet tweet = (Tweet) intent.getParcelableExtra("tweet");
            a.a(context, dataString);
            bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(g).b("chrome::::" + a.id)).d(dataString)).a(context, tweet, null, null));
        }
    }
}
