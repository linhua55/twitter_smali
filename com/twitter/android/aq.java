package com.twitter.android;

import android.content.Context;
import android.support.v7.recyclerview.BuildConfig;
import com.twitter.android.client.c;
import com.twitter.android.util.AppEventTrack;
import com.twitter.android.util.AppEventTrack.EventType;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.client.bq;
import com.twitter.library.platform.TwitterDataSyncService;
import com.twitter.library.scribe.TwitterScribeLog;
import defpackage.bbu;
import defpackage.bbw;
import defpackage.bex;

/* compiled from: Twttr */
public abstract class aq implements bq {
    protected Context a;
    protected boolean b;

    protected aq(Context context, boolean z) {
        this.a = context;
        this.b = z;
    }

    public void a(Session session, String str) {
        AppEventTrack.a(this.a, EventType.Signup, new String[0]);
        io.a(this.a);
        az.a(this.a).a(bex.a(this.a, session), null);
        TwitterDataSyncService.e(this.a, session.e());
        if (this.b) {
            bg.a().c(session);
        }
        a(session);
    }

    protected void a(Session session) {
        long g = session.g();
        bbw bbw = (TwitterScribeLog) new TwitterScribeLog(g).b("signup::::success");
        lg.a(this.a).a(bbw);
        AppEventTrack.a(this.a, (TwitterScribeLog) bbw);
        if (this.b) {
            bbw.i("sso_sdk");
        }
        bbu.a(bbw);
        TwitterScribeLog twitterScribeLog = new TwitterScribeLog(g);
        String[] strArr = new String[5];
        strArr[0] = "signup";
        strArr[1] = BuildConfig.VERSION_NAME;
        strArr[2] = this.b ? "switch_account" : "logged_out";
        strArr[3] = BuildConfig.VERSION_NAME;
        strArr[4] = "success";
        bbu.a((TwitterScribeLog) twitterScribeLog.b(strArr));
        c a = c.a(this.a);
        a.a(g, "signup:form:::success", false);
        a.a(g, "signup::::success", false);
    }
}
