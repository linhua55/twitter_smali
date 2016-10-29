package defpackage;

import android.accounts.NetworkErrorException;
import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.af;
import com.twitter.library.api.t;
import com.twitter.library.client.Session;
import com.twitter.library.provider.ch;
import com.twitter.library.provider.cj;
import com.twitter.library.provider.df;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.k;
import com.twitter.library.service.l;
import com.twitter.library.service.s;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cd;
import com.twitter.util.object.e;
import rx.o;
import rx.subjects.a;

/* compiled from: Twttr */
/* renamed from: bfh */
public class bfh extends af<t<bff, cd>> {
    private final long b;
    private final TwitterUser c;
    private bff g;
    private final a<bff> h;

    protected /* synthetic */ c f() {
        return g();
    }

    public bfh(Context context, Session session, long j) {
        super(context, bfh.class.getName(), session);
        this.h = a.q();
        this.b = j;
        this.c = session.f();
        a(new k().a(new l(context)).a(new s()));
    }

    public String e() {
        return "alerts:timeline:request:";
    }

    protected d a() {
        return K().a(RequestMethod.a).a("1.1").b("alerts").b("landing_page").a(String.valueOf(this.b)).a();
    }

    public o<bff> b() {
        return this.h;
    }

    protected t<bff, cd> g() {
        return new bfg(this.c);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<bff, cd> tVar) {
        if (httpOperation.k()) {
            this.g = (bff) ((t) e.a(tVar)).b();
            if (!(this.c == null || this.g == null)) {
                a(this.c, this.g);
            }
            this.h.b_(this.g);
            this.h.bs_();
        } else {
            this.h.a(new NetworkErrorException(aaVar.e()));
        }
        aaVar.a(httpOperation);
    }

    private void a(TwitterUser twitterUser, bff bff) {
        if (S().a((ch) new cj().a(bff.a).a(twitterUser.bf_()).a(4).a(String.valueOf(this.b)).d(true).q()) > 0) {
            this.p.getContentResolver().notifyChange(df.h, null);
        }
    }
}
