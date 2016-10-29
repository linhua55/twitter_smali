package com.twitter.android.client;

import android.app.Activity;
import android.content.Context;
import android.os.AsyncTask;
import android.os.SystemClock;
import bbu;
import com.twitter.android.lg;
import com.twitter.app.common.util.h;
import com.twitter.library.client.ab;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;

/* compiled from: Twttr */
public class i implements h {
    long a;
    long b;
    private final Context c;

    public i(Context context) {
        this.c = context;
    }

    public void a(Activity activity) {
        if (this.a > 0) {
            TwitterScribeLog twitterScribeLog = (TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(bg.a().c().g()).b(new String[]{"app::::become_inactive"})).b(SystemClock.elapsedRealtime() - this.a);
            lg.a(this.c).a(twitterScribeLog);
            bbu.a(twitterScribeLog);
        }
        ab.a(this.c).b();
    }

    public void b(Activity activity) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        this.a = elapsedRealtime;
        if (elapsedRealtime - this.b > 2000) {
            this.b = elapsedRealtime;
            AsyncTask.execute(new j(this.c));
        }
    }
}
