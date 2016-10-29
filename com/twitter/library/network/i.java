package com.twitter.library.network;

import android.content.Context;
import bbu;
import com.twitter.app.common.util.f;
import com.twitter.client_network.thriftandroid.ClientNetworkRequest;
import com.twitter.client_network.thriftandroid.ClientNetworkRequestEvent;
import com.twitter.config.d;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.c;
import com.twitter.internal.network.k;
import com.twitter.library.scribe.LogCategory;
import com.twitter.library.scribe.ScribeService;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.util.telephony.TelephonyUtil;
import defpackage.cbf;

/* compiled from: Twttr */
public class i implements c {
    private final long a;
    private boolean b;
    private boolean c;
    private TwitterScribeLog d;
    private final Context e;
    private boolean f;
    private boolean g;
    private boolean h;
    private boolean i;
    private final c j;

    public i(Context context) {
        this(-1, new d(false, null), context);
    }

    public i(long j, c cVar, Context context) {
        this.a = j;
        this.j = cVar;
        this.e = context;
    }

    public void a(HttpOperation httpOperation) {
        this.b = f.a().c();
        this.c = TelephonyUtil.i().c();
        this.f = d.a("scribe_client_network_request_enabled");
        this.g = d.a("scribe_legacy_client_network_request_enabled", true);
        this.h = ScribeService.a(httpOperation);
        if (this.h) {
            this.i = ScribeService.a("scribe_cdn_sample_size");
        } else if (this.a != -1) {
            this.i = ScribeService.a("scribe_api_sample_size");
        }
        if (this.g && this.i) {
            long j = this.a != -1 ? this.a : 0;
            String str = this.h ? "cdn::::request" : "api::::request";
            this.d = (TwitterScribeLog) new TwitterScribeLog(j).b(new String[]{str});
            this.d.i();
        }
    }

    public void b(HttpOperation httpOperation) {
        long j = 0;
        k l = httpOperation.l();
        String b = httpOperation.b("OkHttp-Response-Source");
        boolean z = b != null && b.contains("CACHE");
        if (this.f && this.i) {
            long j2;
            ClientNetworkRequestEvent a = a(this.h ? "cdn:all" : "api:all", httpOperation, z);
            if (this.a != -1) {
                j2 = this.a;
            } else {
                j2 = 0;
            }
            ScribeService.a(this.e, LogCategory.b, j2, a);
        }
        if (this.d != null) {
            this.d.a(httpOperation, this.b);
            bbu.a(this.d);
        }
        if (!(this.a == -1 || l.a() || this.h)) {
            boolean a2 = ScribeService.a("scribe_api_error_sample_size");
            if (this.f && a2) {
                ClientNetworkRequestEvent a3 = a("api:error", httpOperation, z);
                if (this.a != -1) {
                    j = this.a;
                }
                ScribeService.a(this.e, LogCategory.b, j, a3);
            }
            if (this.g && a2) {
                bbu.a((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.a).a(httpOperation, this.b).b(new String[]{"api::::error"})).b(TwitterScribeLog.b(l))).d(String.valueOf(l.j)));
            }
        }
        if (!z) {
            DataUsageEvent a4 = this.j.a(this.c, httpOperation);
            if (a4 != null) {
                b.a().a(a4);
            }
        }
    }

    public void a(HttpOperation httpOperation, Exception exception) {
    }

    private ClientNetworkRequestEvent a(String str, HttpOperation httpOperation, boolean z) {
        ClientNetworkRequest a = cbf.a(this.e, httpOperation);
        com.twitter.client_network.thriftandroid.f fVar = new com.twitter.client_network.thriftandroid.f();
        fVar.a(ClientNetworkRequestEvent.b, ScribeService.a()).a(ClientNetworkRequestEvent.c, str).a(ClientNetworkRequestEvent.d, a);
        return fVar.a();
    }
}
