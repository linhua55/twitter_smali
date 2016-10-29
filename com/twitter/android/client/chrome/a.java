package com.twitter.android.client.chrome;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.support.customtabs.CustomTabsIntent;
import android.support.v4.content.ContextCompat;
import com.google.android.exoplayer.C;
import com.twitter.android.client.BrowserLoadingStatus;
import com.twitter.config.c;
import com.twitter.library.client.aj;
import com.twitter.model.core.Tweet;
import defpackage.bcr;
import defpackage.bcu;

/* compiled from: Twttr */
public class a {
    public static boolean a(Activity activity) {
        return aj.c(activity) && aj.a(activity).a();
    }

    public static void a(Activity activity, String str, Tweet tweet) {
        Context applicationContext = activity.getApplicationContext();
        if (c.c("link_fetch_3760")) {
            BrowserLoadingStatus g = com.twitter.android.client.c.a(applicationContext).g();
            if (g == null || !g.a()) {
                g = new BrowserLoadingStatus();
                com.twitter.android.client.c.a(applicationContext).a(g);
                g.a(a(activity, str, true, tweet), str, tweet, activity);
                return;
            }
            Builder builder = new Builder(activity);
            builder.setMessage(activity.getResources().getString(2131362893));
            builder.setCancelable(true);
            builder.setPositiveButton(17039370, new b(g, activity, str, tweet));
            builder.setNegativeButton(17039360, new c());
            builder.create().show();
            return;
        }
        aj.a(activity).a(activity, str, a(activity, str, false, tweet), tweet);
    }

    protected static CustomTabsIntent a(Activity activity, String str, boolean z, Tweet tweet) {
        aj a = aj.a(activity.getApplicationContext());
        if (z) {
            a.a(str);
        }
        CustomTabsIntent.Builder showTitle = a.b(str).setToolbarColor(ContextCompat.getColor(activity.getApplicationContext(), bcu.toolbar_bg_color)).setShowTitle(true);
        for (CustomTabsAction customTabsAction : CustomTabsAction.values()) {
            PendingIntent broadcast = PendingIntent.getBroadcast(activity, 0, new Intent(activity, ChromeCustomTabsActionReceiver.class).setAction(customTabsAction.id).putExtra("tweet", tweet), C.SAMPLE_FLAG_DECODE_ONLY);
            if (broadcast != null) {
                showTitle.addMenuItem(customTabsAction.a(activity), broadcast);
            }
        }
        showTitle.setStartAnimations(activity, bcr.slide_up, 2131034161);
        showTitle.setExitAnimations(activity, 2131034159, bcr.slide_down);
        return showTitle.build();
    }
}
