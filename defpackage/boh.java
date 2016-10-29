package defpackage;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import boi;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.af;
import com.twitter.library.api.search.a;
import com.twitter.library.api.t;
import com.twitter.library.api.timeline.s;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.ca;
import com.twitter.model.core.cd;
import com.twitter.model.core.cp;
import com.twitter.model.core.p;
import com.twitter.util.collection.n;
import java.util.Iterator;
import java.util.Locale;

/* compiled from: Twttr */
/* renamed from: boh */
public class boh extends af<t<cp, cd>> {
    private final long b;
    private final cni c;
    private boolean g;
    private boolean h;
    private boolean i;
    private boolean j;
    private boolean k;
    private int[] l;
    private long m;
    private int r;
    private Integer s;
    private TwitterUser t;
    private final String u;
    private final di v;
    private final t<cp, cd> w;

    protected /* synthetic */ c f() {
        return b();
    }

    public boh(Context context, Session session, long j, cni cni) {
        this(context, new ab(session), j, cni);
    }

    public boh(Context context, ab abVar, long j, cni cni) {
        this(context, abVar, j, cni, di.a(context, abVar.c), v.a(cp.class));
    }

    protected boh(Context context, ab abVar, long j, cni cni, di diVar, t<cp, cd> tVar) {
        super(context, boh.class.getName(), abVar);
        this.r = -1;
        this.b = j;
        this.c = cni;
        this.v = diVar;
        this.w = tVar;
        a(new com.twitter.library.service.t());
        this.u = boh.a(j, abVar);
    }

    public String e() {
        return "app:twitter_service:follow:create";
    }

    public boh a(boolean z) {
        this.g = z;
        return this;
    }

    public boh b(boolean z) {
        this.h = z;
        return this;
    }

    public boh c(boolean z) {
        this.i = z;
        return this;
    }

    public boh d(boolean z) {
        this.j = z;
        return this;
    }

    public boh a(int i) {
        this.r = i;
        return this;
    }

    public boh a(Integer num) {
        this.s = num;
        return this;
    }

    public boh e(boolean z) {
        this.k = z;
        return this;
    }

    protected d a() {
        e a = K().a(RequestMethod.POST).a(new Object[]{"friendships", "create"}).a("send_error_codes", true).a("user_id", String.valueOf(this.b));
        if (this.g) {
            a.a("follow", "true");
        }
        if (this.h) {
            a.a("lifeline", "true");
        }
        if (this.c != null) {
            if (this.c.c != null) {
                a.a("impression_id", this.c.c);
            }
            if (this.c.c()) {
                a.a("earned", true);
            }
        }
        if (this.i) {
            a.a("challenges_passed", true);
        }
        a.a("handles_challenges", "1");
        return a.a();
    }

    protected t<cp, cd> b() {
        return this.w;
    }

    public Runnable c(AsyncOperation asyncOperation) {
        if (asyncOperation != null) {
            a(asyncOperation);
        }
        return new boi(this);
    }

    @VisibleForTesting
    void a(AsyncOperation asyncOperation) {
        asyncOperation.cancel(false);
    }

    public void a(com.twitter.internal.android.service.ab<aa> abVar) {
        super.a((com.twitter.internal.android.service.ab) abVar);
        com.twitter.library.provider.e T = T();
        if (U()) {
            cp cpVar = (cp) this.w.b();
            if (cpVar != null && cpVar.bo_()) {
                int a;
                int f = this.v.f(this.b);
                if (cpVar.e()) {
                    a = p.a(p.b(f, 1), AccessibilityNodeInfoCompat.ACTION_COPY);
                } else {
                    a = p.a(f, this.h ? AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY : 1);
                }
                cpVar.i(a);
                TwitterUser a2 = this.v.a(this.b);
                if (a2 != null) {
                    cpVar.c(a2.P);
                }
                this.t = (TwitterUser) cpVar.q();
                ab N = N();
                this.v.a(n.b(this.t), N.c, 0, -1, null, null, true, T);
                this.v.a(2, N.c, this.b, T);
                b((AsyncOperation) new a(this.p, N, this.t));
                TwitterUser a3 = this.v.a(N.c);
                if (a3 != null) {
                    b(new s(this.p, N, a3, 1).f(com.twitter.android.av.v.a()).b("follow").k("Request being made to fill timeline with new followed user tweets. User did not trigger this request."));
                }
                if (boo.b()) {
                    AsyncOperation bos = new bos(this.p, N());
                    bos.a = this.t;
                    b(bos);
                }
            }
        } else {
            cd cdVar = (cd) this.w.c();
            this.l = cd.a(cdVar);
            a(cdVar);
            this.v.b(this.b, 1, T, true, N().c);
        }
        T.a();
    }

    private void a(cd cdVar) {
        if (cdVar != null) {
            Iterator it = cdVar.iterator();
            while (it.hasNext()) {
                ca caVar = (ca) it.next();
                if (caVar.b == 250) {
                    this.m = caVar.d;
                    return;
                }
            }
        }
    }

    public final int[] g() {
        return this.l;
    }

    public final long h() {
        return this.m;
    }

    public final TwitterUser s() {
        return this.t;
    }

    public final long t() {
        return this.b;
    }

    public final cni u() {
        return this.c;
    }

    public final int v() {
        return this.r;
    }

    public final boolean w() {
        return this.j;
    }

    protected boolean d(com.twitter.internal.android.service.ab<aa> abVar) {
        if (super.d(abVar)) {
            return true;
        }
        return ((aa) abVar.b()).d() == 403;
    }

    protected String o() {
        return this.u;
    }

    protected static String a(long j, ab abVar) {
        return String.format(Locale.ENGLISH, "follow_%d_%d", new Object[]{Long.valueOf(abVar.c), Long.valueOf(j)});
    }
}
