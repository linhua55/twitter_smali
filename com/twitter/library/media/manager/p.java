package com.twitter.library.media.manager;

import android.os.SystemClock;
import bbu;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.internal.android.service.AsyncOperation.ExecutionClass;
import com.twitter.internal.android.service.ab;
import com.twitter.internal.android.service.d;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.i;
import com.twitter.internal.network.k;
import com.twitter.library.network.a;
import com.twitter.library.network.j;
import com.twitter.library.scribe.ScribeService;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.s;
import com.twitter.library.service.x;
import com.twitter.media.request.ResourceRequestType;
import com.twitter.util.telephony.TelephonyUtil;
import com.twitter.util.z;
import java.util.Locale;

/* compiled from: Twttr */
public class p extends x {
    private final String a;
    private final a b;
    private long c;
    private boolean g;
    private p h;
    private final i i;
    private final s j;
    private boolean k;
    private final ResourceRequestType l;
    private final z<Double> m;
    private final String n;
    private final d r;

    private p(r rVar) {
        super(rVar.b, rVar.a, rVar.c);
        this.c = 0;
        this.g = false;
        this.k = false;
        this.a = rVar.a;
        this.b = rVar.g;
        this.l = rVar.d;
        this.n = rVar.e;
        this.m = rVar.h;
        this.i = rVar.f;
        this.j = rVar.i;
        this.r = new d();
        if (this.l == ResourceRequestType.a) {
            a(ExecutionClass.b);
            a(new s());
        } else if (this.l == ResourceRequestType.b || this.l == ResourceRequestType.c) {
            a(ExecutionClass.f);
            b(Integer.MAX_VALUE);
        }
        this.c = SystemClock.elapsedRealtime();
    }

    public d m() {
        return this.r;
    }

    public Runnable c(AsyncOperation asyncOperation) {
        if (asyncOperation instanceof p) {
            this.h = (p) asyncOperation;
        }
        return null;
    }

    protected boolean b(aa aaVar) {
        if (this.j == null || this.j.a(aaVar)) {
            boolean c = TelephonyUtil.i().c();
            if (this.l != ResourceRequestType.b || c) {
                if (this.h != null) {
                    ab l = this.h.l();
                    if (l != null) {
                        aa aaVar2 = (aa) l.b();
                        if (aaVar2 != null) {
                            HttpOperation f = aaVar2.f();
                            if (f != null && f.j()) {
                                aaVar.a(f);
                                this.g = true;
                                return false;
                            }
                        }
                    }
                    this.h = null;
                }
                return super.b(aaVar);
            }
            cancel(true);
            return false;
        }
        cancel(true);
        return false;
    }

    protected void a_(aa aaVar) {
        boolean z = true;
        this.k = true;
        j e = new j(this.p, this.a).a(this.b).a(this.i).a(this.r).a(45000).a(this.m).e(true);
        if (N() != null) {
            if (!(this.l == ResourceRequestType.b || this.l == ResourceRequestType.c)) {
                z = false;
            }
            e.a(N().c, new com.twitter.library.network.d(z, this.n));
        }
        aaVar.a(e.a().c());
    }

    public void a(ab<aa> abVar) {
        d(abVar);
        if (this.j != null) {
            this.j.a((ab) abVar);
        }
    }

    public void d(ab<aa> abVar) {
        int i = (this.g || !ScribeService.a("resource_fetch_scribe_sample")) ? 0 : 1;
        if (i != 0) {
            int i2;
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.c;
            aa aaVar = (aa) abVar.b();
            String str = aaVar.b() ? "success" : "failure";
            int size = abVar.a().size() - 1;
            TwitterScribeLog twitterScribeLog = (TwitterScribeLog) new TwitterScribeLog(N().c).b(new String[]{"app:twitter_service:media:downloaded", str});
            String str2 = TelephonyUtil.i().d() ? TelephonyUtil.i().c() ? "wifi" : "cellular_" + TelephonyUtil.i().b() : "disconnected";
            twitterScribeLog.i();
            k g = aaVar.g();
            HttpOperation f = aaVar.f();
            if (!(g == null || f == null || f.i() == null)) {
                twitterScribeLog.a(f.i().toString(), g);
            }
            twitterScribeLog.a((long) size);
            twitterScribeLog.f(str2);
            String name = (g == null || g.c == null) ? "none" : g.c.getClass().getName();
            Locale locale = Locale.ENGLISH;
            String str3 = "total_duration_ms:%d,is_canceled:%b,content_length:%d,exception:%s,executed:%b";
            Object[] objArr = new Object[5];
            objArr[0] = Long.valueOf(elapsedRealtime);
            objArr[1] = Boolean.valueOf(isCancelled());
            if (g != null) {
                i2 = g.k;
            } else {
                i2 = 0;
            }
            objArr[2] = Integer.valueOf(i2);
            objArr[3] = name;
            objArr[4] = Boolean.valueOf(this.k);
            twitterScribeLog.d(String.format(locale, str3, objArr));
            bbu.a(twitterScribeLog);
        }
    }

    protected String o() {
        return "resource_fetch_" + this.a + this.l;
    }
}
