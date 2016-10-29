package com.twitter.library.provider;

import android.content.Context;
import bbu;
import com.evernote.android.job.Job;
import com.evernote.android.job.Job.Result;
import com.evernote.android.job.b;
import com.evernote.android.job.m;
import com.twitter.android.util.bx;
import com.twitter.app.common.account.a;
import com.twitter.app.common.account.d;
import com.twitter.config.AppConfig;
import com.twitter.library.client.l;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.al;
import com.twitter.util.h;

/* compiled from: Twttr */
public class q extends Job {
    protected Result a(b bVar) {
        AppConfig m = AppConfig.m();
        Context f = f();
        String str = "jobs";
        boolean z = m.a() || m.b();
        a(f, str, z);
        return Result.a;
    }

    public static void a(Context context, String str, boolean z) {
        h.c();
        for (a aVar : d.a().c()) {
            TwitterUser c = com.twitter.library.util.b.c(aVar);
            if (c != null) {
                di a = di.a(context, c.c);
                a.g(c.c);
                if (c.n) {
                    bx.a(a, c.c);
                }
                bbu.a(new TwitterScribeLog(c.c, new String[]{str, null, null, "database", "clean_up"}));
                if (z) {
                    new l(context, aVar.d()).a().a("auto_clean", al.b()).apply();
                }
            }
        }
    }

    public static void l() {
        if (com.evernote.android.job.h.a().a("DatabaseCleanUpJob").isEmpty()) {
            new m("DatabaseCleanUpJob").a(28800000).a(true).b(true).c(true).a().t();
        }
    }
}
