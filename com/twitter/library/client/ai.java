package com.twitter.library.client;

import android.content.Context;
import android.os.Bundle;
import bbu;
import com.twitter.internal.android.service.ab;
import com.twitter.internal.network.k;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;

/* compiled from: Twttr */
public class ai extends z {
    public final Context a;

    public ai(Context context) {
        this.a = context.getApplicationContext();
    }

    public void a(x xVar) {
        ab l = xVar.l();
        bg a = bg.a();
        com.twitter.library.service.ab N = xVar.N();
        if (N != null) {
            Session c = a.c(N.a);
            if (c != null) {
                aa aaVar = (aa) l.b();
                c.a(aaVar.h());
                a(xVar, l, c);
                k g = aaVar.g();
                int i = (g != null && g.a == 401 && g.j == 89) ? 1 : 0;
                if (i != 0) {
                    TwitterScribeLog twitterScribeLog = (TwitterScribeLog) new TwitterScribeLog(c.g()).b(new String[]{"api:::unauthorized:error"});
                    twitterScribeLog.a(String.valueOf(g.j));
                    twitterScribeLog.a(aaVar.f().i().toString(), g);
                    bbu.a(twitterScribeLog);
                    a.a(c, xVar);
                }
            }
        }
    }

    public void a(x xVar, ab<aa> abVar, Session session) {
        Bundle bundle = xVar.o;
        for (aa aaVar : abVar.a()) {
            int i = aaVar.c.getInt("scribe_item_count", -1);
            TwitterScribeLog twitterScribeLog = (TwitterScribeLog) bundle.getParcelable("scribe_log");
            if (twitterScribeLog == null) {
                if (bundle.getString("scribe_event") != null) {
                    twitterScribeLog = (TwitterScribeLog) new TwitterScribeLog(session.g()).b(new String[]{r0});
                } else {
                    twitterScribeLog = null;
                }
            }
            if (twitterScribeLog != null) {
                if (i > -1) {
                    twitterScribeLog.e(i);
                }
                bbu.a(twitterScribeLog);
            }
        }
    }
}
