package com.twitter.android.client;

import android.content.Context;
import android.content.Intent;
import bbu;
import com.twitter.android.util.AppEventTrack;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.widget.StatusToolBar;
import com.twitter.library.widget.ak;

/* compiled from: Twttr */
public class a implements ak {
    private Intent a;
    private final Context b;

    public a(Context context) {
        this.b = context.getApplicationContext();
    }

    public void a(Intent intent) {
        this.a = intent;
    }

    public void a(StatusToolBar statusToolBar) {
        a("app:status_bar::access_campaign:impression", true);
    }

    public void b(StatusToolBar statusToolBar) {
        a("app:status_bar::access_no_banner_campaign:impression_hidden", true);
    }

    public void c(StatusToolBar statusToolBar) {
        if (this.a != null) {
            statusToolBar.getContext().startActivity(this.a);
        }
        a("app:status_bar::access_campaign:open", false);
    }

    private void a(String str, boolean z) {
        TwitterScribeLog twitterScribeLog = (TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(bg.a().c().g()).b(new String[]{str})).b(this.b);
        if (z) {
            AppEventTrack.a(this.b, twitterScribeLog);
        }
        bbu.a(twitterScribeLog);
    }
}
