package com.twitter.android.client;

import bbu;
import com.twitter.android.lg;
import com.twitter.library.client.Session;
import com.twitter.library.client.ad;
import com.twitter.library.platform.TwitterDataSyncService;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.util.b;

/* compiled from: Twttr */
final class g extends ad {
    final /* synthetic */ c a;

    g(c cVar) {
        this.a = cVar;
    }

    public void a(Session session) {
        TwitterScribeLog twitterScribeLog = new TwitterScribeLog(session.g());
        twitterScribeLog.b(new String[]{"app::switch_account::success"});
        lg.a(this.a.a).a(twitterScribeLog);
        bbu.a(twitterScribeLog);
        this.a.a(session);
    }

    public void b(Session session, boolean z) {
        if (z) {
            this.a.a(session);
        }
        cd a = cd.a(this.a.a);
        WidgetControl a2 = a.a(session.g());
        if (a2 != null) {
            a2.c();
            a.a(session, false);
        }
        TwitterDataSyncService.a(this.a.a);
    }

    public void a(Session session, boolean z) {
        this.a.a(session, z);
    }

    public void c(Session session, boolean z) {
        bbu.a(new TwitterScribeLog(session.g()).b(new String[]{"notification:status_bar::unauthorised:impression"}));
        b.a(session.e());
        z.a(this.a.a).a(session);
        this.a.a(session, z);
    }
}
