package com.twitter.library.platform;

import android.content.Context;
import android.content.SyncResult;
import android.content.SyncStats;
import com.twitter.android.av.v;
import com.twitter.config.c;
import com.twitter.internal.network.k;
import com.twitter.library.api.timeline.s;
import com.twitter.library.platform.notifications.a;
import com.twitter.library.platform.notifications.ad;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.model.account.OAuthToken;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cm;
import com.twitter.model.timeline.aq;
import com.twitter.model.timeline.av;
import com.twitter.model.timeline.bw;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.telephony.TelephonyUtil;
import defpackage.cfb;

/* compiled from: Twttr */
public class b {
    private final Context a;
    private final TwitterUser b;
    private final String c;
    private final OAuthToken d;

    public b(Context context, TwitterUser twitterUser, String str, OAuthToken oAuthToken) {
        this.a = context.getApplicationContext();
        this.b = twitterUser;
        this.c = str;
        this.d = oAuthToken;
    }

    public boolean a(SyncResult syncResult, a aVar) {
        boolean z = true;
        if (TwitterDataSyncService.g(this.a, this.c)) {
            return false;
        }
        s a = a();
        k g = a(a).g();
        SyncStats syncStats;
        if (g != null) {
            int i = g.a;
            if (i == 200) {
                i = a.H();
                int I = a.I();
                cfb.b("TwitterDataSync", "====> Sync home timeline, got " + i);
                if (i > 0) {
                    aVar.h = new ad();
                    aVar.h.b = 4;
                    aVar.h.d = i;
                    if (!aVar.d) {
                        aVar.h.c = I;
                        if (I == 1) {
                            Object obj = (av) a.A().get(0);
                            cm a2 = obj instanceof bw ? ((bw) ObjectUtils.a(obj)).a : obj instanceof aq ? ((aq) ObjectUtils.a(obj)).a.a() : null;
                            if (a2 != null) {
                                aVar.h.a(a2).a(a2.C);
                            }
                        }
                        aVar.h.r = di.a(this.a, this.b.c).a(this.c, 1, null, aVar.h.a(), aVar.h.i, aVar.h.g, true);
                    }
                }
            } else if (i == 401) {
                syncStats = syncResult.stats;
                syncStats.numAuthExceptions++;
            } else if (i == 0) {
                syncStats = syncResult.stats;
                syncStats.numParseExceptions++;
            }
        } else {
            syncStats = syncResult.stats;
            syncStats.numIoExceptions++;
        }
        a.a(null);
        if (syncResult.hasError()) {
            z = false;
        }
        return z;
    }

    protected s a() {
        boolean z;
        Context context;
        if (TelephonyUtil.i().c()) {
            if (c.a("prefetch_images_background_3517", "bg_only", "all")) {
                z = true;
                context = this.a;
                return (s) new s(context, new ab(this.b.c, this.c, this.d, true), this.b, false, 2).b(z).f(v.a()).k("Home sync requests are never triggered by a user action.");
            }
        }
        z = false;
        context = this.a;
        return (s) new s(context, new ab(this.b.c, this.c, this.d, true), this.b, false, 2).b(z).f(v.a()).k("Home sync requests are never triggered by a user action.");
    }

    protected aa a(s sVar) {
        return sVar.P();
    }
}
