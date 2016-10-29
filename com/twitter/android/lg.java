package com.twitter.android;

import android.content.Context;
import bvs;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.platform.notifications.PushRegistration;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.util.aq;
import com.twitter.library.util.l;

/* compiled from: Twttr */
public class lg {
    private static lg a;
    private final Context b;

    private lg(Context context) {
        this.b = context.getApplicationContext();
    }

    public static lg a(Context context) {
        if (a == null) {
            a = new lg(context);
        }
        return a;
    }

    public void a(TwitterScribeLog twitterScribeLog) {
        Session c = bg.a().c();
        TwitterScribeItem twitterScribeItem = new TwitterScribeItem();
        twitterScribeItem.b = "addressBookPermissionStatus";
        twitterScribeItem.v = aq.a(new boolean[]{l.a(this.b).b()});
        TwitterScribeItem twitterScribeItem2 = new TwitterScribeItem();
        twitterScribeItem2.b = "geoPermissionStatus";
        twitterScribeItem2.v = aq.a(new boolean[]{bvs.a().d(), bvs.a().c(c), bvs.a().e()});
        TwitterScribeItem twitterScribeItem3 = new TwitterScribeItem();
        twitterScribeItem3.b = "notificationPermissionSettings";
        twitterScribeItem3.v = aq.a(new boolean[]{a()});
        twitterScribeLog.a(twitterScribeItem);
        twitterScribeLog.a(twitterScribeItem2);
        twitterScribeLog.a(twitterScribeItem3);
    }

    protected boolean a() {
        return PushRegistration.c(this.b);
    }
}
