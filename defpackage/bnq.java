package defpackage;

import android.content.Context;
import bnr;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.af;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.model.core.cd;
import com.twitter.model.core.cm;
import com.twitter.model.core.cn;
import java.util.Locale;

/* compiled from: Twttr */
/* renamed from: bnq */
public class bnq extends af<t<cn, cd>> {
    private final long b;
    private final long c;
    private final cni g;
    private final t<cn, cd> h;
    private final di i;
    private final String j;
    private Boolean k;
    private long l;
    private int[] m;

    protected /* synthetic */ c f() {
        return b();
    }

    public bnq(Context context, Session session, long j, long j2, cni cni) {
        this(context, new ab(session), j, j2, cni, v.a(cn.class), di.a(context, session.g()));
    }

    protected bnq(Context context, ab abVar, long j, long j2, cni cni, t<cn, cd> tVar, di diVar) {
        super(context, bnq.class.getName(), abVar);
        this.b = j;
        if (j2 <= 0) {
            j2 = j;
        }
        this.c = j2;
        this.g = cni;
        this.h = tVar;
        this.i = diVar;
        this.k = null;
        a("tweet_type", this.g != null ? "ad" : "organic");
        a(new com.twitter.library.service.t());
        this.j = bnq.a(j, abVar);
    }

    protected d a() {
        e c = K().a(RequestMethod.POST).a(new Object[]{"statuses", "retweet", Long.valueOf(this.c)}).a("send_error_codes", "true").a("include_entities", "true").a("include_media_features", "true").a("earned_read", "true").b().e().d().c();
        if (!(this.g == null || this.g.c == null)) {
            c.a("impression_id", this.g.c);
            if (this.g.c()) {
                c.a("earned", "true");
            }
        }
        return c.a();
    }

    public String e() {
        return "app:twitter_service:retweet:create";
    }

    public bnq a(Boolean bool) {
        this.k = bool;
        if (this.k != null) {
            a("has_media", this.k.booleanValue() ? "true" : "false");
        }
        return this;
    }

    protected t<cn, cd> b() {
        return this.h;
    }

    public Runnable c(AsyncOperation asyncOperation) {
        if (asyncOperation != null) {
            asyncOperation.cancel(true);
        }
        return new bnr(this);
    }

    public void a(com.twitter.internal.android.service.ab<aa> abVar) {
        super.a((com.twitter.internal.android.service.ab) abVar);
        long j = N().c;
        aa aaVar = (aa) abVar.b();
        if (aaVar == null || !aaVar.b()) {
            this.m = cd.a((cd) this.h.c());
            boolean z = false;
            boolean z2 = false;
            for (int i : this.m) {
                switch (i) {
                    case 144:
                        z = true;
                        break;
                    case 187:
                    case 327:
                        z2 = true;
                        break;
                    default:
                        break;
                }
            }
            if (z2 || z) {
                if (aaVar != null) {
                    aaVar.a(true);
                }
                if (z && this.b != this.c && !isCancelled()) {
                    b(new bnq(this.p, N(), this.b, this.b, this.g, this.h, this.i).a(this.k));
                    return;
                }
                return;
            }
            com.twitter.library.provider.e T = T();
            this.i.a(j, this.b, false, T);
            T.a();
            return;
        }
        com.twitter.library.provider.e T2 = T();
        cn cnVar = (cn) this.h.b();
        if (cnVar != null) {
            if (cnVar.e() == null) {
                cnVar.a(this.g);
            }
            cm cmVar = (cm) cnVar.q();
            this.l = cmVar.b;
            this.i.a(cmVar, j, T2);
            T2.a();
        }
    }

    public final int[] g() {
        return this.m;
    }

    public long h() {
        return this.b;
    }

    public long s() {
        return this.l;
    }

    protected boolean d(com.twitter.internal.android.service.ab<aa> abVar) {
        if (super.d(abVar)) {
            return true;
        }
        aa aaVar = (aa) abVar.b();
        boolean z = aaVar.d() == 403 || aaVar.d() == 404;
        return z;
    }

    protected static String a(long j, ab abVar) {
        return String.format(Locale.ENGLISH, "retweet_%d_%d", new Object[]{Long.valueOf(abVar.c), Long.valueOf(j)});
    }

    protected String o() {
        return this.j;
    }
}
