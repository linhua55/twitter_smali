package com.twitter.library.api.timeline;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import android.support.v7.recyclerview.BuildConfig;
import cdu;
import cfa;
import com.twitter.android.revenue.d;
import com.twitter.config.c;
import com.twitter.internal.android.service.ac;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.af;
import com.twitter.library.api.ai;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.client.l;
import com.twitter.library.network.w;
import com.twitter.library.provider.ar;
import com.twitter.library.provider.di;
import com.twitter.library.scribe.ScribeItem;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.b;
import com.twitter.library.service.e;
import com.twitter.library.service.k;
import com.twitter.library.service.q;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.timeline.an;
import com.twitter.model.timeline.av;
import com.twitter.model.timeline.bn;
import com.twitter.util.collection.MutableMap;
import com.twitter.util.collection.n;
import com.twitter.util.object.ObjectUtils;
import defpackage.bbu;
import defpackage.bbw;
import defpackage.bmt;
import defpackage.cnm;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
public class s extends ab {
    @VisibleForTesting
    static final Map<String, b> a;
    private final w j;
    private final n<String> k;
    private d l;

    static {
        a = MutableMap.a();
    }

    public s(Context context, Session session, TwitterUser twitterUser, int i) {
        this(context, new ab(session), twitterUser, i);
    }

    public s(Context context, ab abVar, TwitterUser twitterUser, int i) {
        this(context, abVar, twitterUser, true, i);
    }

    public s(Context context, ab abVar, TwitterUser twitterUser, boolean z, int i) {
        super(context, s.class.getName(), abVar, twitterUser, i);
        this.k = n.d();
        this.j = new w(abVar.d);
        c(100);
        if (z) {
            a(context);
        }
        cfa.a("HomeTimeline", "Home Timeline request created for UserID #" + twitterUser.bf_(), "ANDROID-10803");
    }

    public s a(d dVar) {
        this.l = dVar;
        return this;
    }

    public String s() {
        return "app:twitter_service:timeline:request";
    }

    public void b(com.twitter.internal.android.service.ab<aa> abVar) {
        super.b((com.twitter.internal.android.service.ab) abVar);
        if (abVar != null && abVar.b() != null && ((aa) abVar.b()).f() != null && N() != null && com.twitter.config.d.a("timeline_request_scribe_sample")) {
            af.a(this.p, s(), N().c, ((aa) abVar.b()).b(), abVar, true);
        }
    }

    public void a(com.twitter.internal.android.service.ab<aa> abVar) {
        super.a((com.twitter.internal.android.service.ab) abVar);
        if (abVar != null && abVar.b() != null && ((aa) abVar.b()).f() != null && N() != null && com.twitter.config.d.a("timeline_request_scribe_sample")) {
            af.a(this.p, s(), N().c, ((aa) abVar.b()).b(), abVar, false);
        }
    }

    @VisibleForTesting
    static int a(int i) {
        if (i == 1) {
            return 2;
        }
        return i;
    }

    protected String o() {
        int a = a(this.c);
        ab N = N();
        return s.class.getName() + "_" + a + "_" + (N != null ? Long.valueOf(N.c) : BuildConfig.VERSION_NAME);
    }

    protected e h() {
        e h = super.h();
        h.a(new Object[]{"timeline", "home"}).a("user_id", C());
        a(h);
        b(h);
        h.a("pc", true);
        h.a("earned", true);
        h.a("include_my_retweet", true);
        if (this.k != null) {
            StringBuilder stringBuilder = new StringBuilder();
            Iterator it = this.k.iterator();
            boolean z = true;
            while (it.hasNext()) {
                boolean z2;
                String str = (String) it.next();
                String a = c.a(str);
                if ("unassigned".equals(a)) {
                    z2 = z;
                } else {
                    if (!z) {
                        stringBuilder.append(',');
                    }
                    stringBuilder.append(str);
                    stringBuilder.append('/');
                    stringBuilder.append(a);
                    z2 = false;
                }
                z = z2;
            }
            if (stringBuilder.length() > 0) {
                h.a("force_buckets", stringBuilder.toString());
            }
        }
        return h;
    }

    private void b(e eVar) {
        if (cdu.b() && this.l != null) {
            eVar.a("jit_enabled", true);
            eVar.a("num_unfilled_ad_slots_available", (long) this.l.a());
            long b = this.l.b();
            if (b > 0) {
                eVar.a("last_ad_pool_refresh_epoch_ms", b);
            }
        }
    }

    protected int g() {
        return 0;
    }

    protected bn x() {
        return cdu.a();
    }

    protected void y() {
        b(new bmt(this.p, C(), this.b, this.j.b()).k("Retrying logging promoted event does not occur because of user interaction."));
    }

    protected boolean c(aa aaVar) {
        boolean c = super.c(aaVar);
        if (c) {
            String o = o();
            synchronized (a) {
                if (a.containsKey(o)) {
                    aaVar.c.putBoolean("cancelled_no_messaging_required", true);
                    c = false;
                } else {
                    a.put(o, this);
                    a((com.twitter.internal.android.service.c) new t(this, o));
                }
            }
        }
        return c;
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        if (!isCancelled() && httpOperation.k()) {
            long j;
            di S = S();
            ai aiVar = (ai) asVar.b();
            List<av> list = aiVar.a;
            long a = aiVar.a();
            if (this.c == 2) {
                l lVar = new l(this.p, this.b);
                if (!O()) {
                    if (lVar.contains("scribe_group_id")) {
                        lVar.a().a("scribe_group_id").apply();
                    }
                    j = 0;
                } else if (lVar.contains("scribe_group_id")) {
                    j = lVar.getLong("scribe_group_id", -1);
                } else {
                    lVar.a().a("scribe_group_id", a).apply();
                    j = a;
                }
            } else {
                j = a;
            }
            for (av avVar : list) {
                avVar.l = a;
                avVar.m = j;
            }
            this.i = list;
            ac a2 = a(aiVar);
            int i = a2.b;
            a = C();
            com.twitter.library.provider.e T = T();
            if (this.l != null && cdu.b()) {
                S.a(this.l, aiVar.c, T());
                bbw bbw = (TwitterScribeLog) new TwitterScribeLog(a).b("home::stream:ads:received");
                for (cnm a3 : aiVar.c) {
                    ScribeItem a4 = TwitterScribeItem.a(a3);
                    if (a4 != null) {
                        bbw.a(a4);
                    }
                }
                bbu.a(bbw);
                bbw bbw2 = (TwitterScribeLog) new TwitterScribeLog(a).b("home::stream:slots:received");
                for (Object obj : this.i) {
                    if (obj instanceof an) {
                        bbw2.a(TwitterScribeItem.a((an) ObjectUtils.a(obj)));
                    }
                }
                bbu.a(bbw2);
            }
            if (a2.d) {
                ar a5 = ar.a(this.p);
                if (a5.a(this.b, "tweet") == 0) {
                    a5.a(this.b, "tweet", 1, T);
                    T.a();
                }
            }
            a(i, a2.a, a2.c, a2.e);
            e(S.f(a, 0));
            if (!O() && i > 0) {
                bbu.a(new TwitterScribeLog(a).b("home::::tlv_proxy"));
            }
            aaVar.c.putInt("scribe_item_count", i);
            a(this.i);
            ab N = N();
            cfa.a("HomeTimeline", "Home Timeline request complete for User ID " + (N != null ? N.c : 0), "ANDROID-10803");
        }
    }

    private void a(Context context) {
        k kVar = new k();
        kVar.a(new com.twitter.library.service.s()).a(new q(1)).a(new com.twitter.library.service.l(context));
        g(30000);
        a((ac) kVar);
    }
}
