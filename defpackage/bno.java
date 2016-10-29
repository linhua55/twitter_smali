package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.provider.e;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.cd;
import com.twitter.model.core.cm;

/* compiled from: Twttr */
/* renamed from: bno */
public class bno extends b<t<cm, cd>> {
    private final long a;
    private final long b;
    private boolean c;
    private long g;
    private boolean h;

    protected /* synthetic */ c f() {
        return b();
    }

    public static bno a(Context context, Session session, Tweet tweet) {
        return new bno(context, session, tweet.u).a(tweet);
    }

    public bno(Context context, Session session, long j) {
        super(context, bno.class.getName(), session);
        this.a = j;
        this.b = session.g();
    }

    public bno(Context context, ab abVar, long j) {
        super(context, bno.class.getName(), abVar);
        this.a = j;
        this.b = abVar.c;
    }

    public bno a(Tweet tweet) {
        this.c = tweet.d;
        this.g = tweet.t;
        this.h = tweet.q();
        return this;
    }

    protected d a() {
        return K().a(RequestMethod.b).a("statuses", "destroy", Long.valueOf(e())).a();
    }

    protected t<cm, cd> b() {
        return v.a(cm.class);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<cm, cd> tVar) {
        super.a(httpOperation, aaVar, tVar);
        di a = di.a(this.p, this.b);
        e T = T();
        if (httpOperation.j()) {
            a.a(this.b, (cm) tVar.b(), T);
            T.a();
        } else if (aaVar.d() == 404) {
            cm c = a.c(e());
            if (c != null) {
                a.a(this.b, c, T);
                T.a();
                aaVar.a(true);
            } else if (a.a(this.a, this.b)) {
                aaVar.a(true);
            }
        }
    }

    protected boolean b(aa aaVar) {
        boolean b = super.b(aaVar);
        if (!b || !this.c) {
            return b;
        }
        bnw bnw = new bnw(this.p, N(), this.g, this.h);
        aa P = bnw.P();
        bnw.c(P);
        if (!P.b()) {
            aaVar.a(false);
        }
        return P.b();
    }

    public long e() {
        if (this.c) {
            return this.g;
        }
        return this.a;
    }
}
