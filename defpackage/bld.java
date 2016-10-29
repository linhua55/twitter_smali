package defpackage;

import android.accounts.NetworkErrorException;
import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.af;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.library.service.k;
import com.twitter.library.service.l;
import com.twitter.library.service.s;
import com.twitter.model.core.cd;
import com.twitter.model.eventtimelines.TvShow;
import rx.o;
import rx.subjects.a;

/* compiled from: Twttr */
/* renamed from: bld */
public class bld extends af<t<TvShow, cd>> {
    private final long b;
    private boolean c;
    private final a<TvShow> g;

    protected /* synthetic */ c f() {
        return b();
    }

    public bld(Context context, Session session, long j) {
        super(context, bld.class.getName(), session);
        this.c = false;
        this.g = a.q();
        this.b = j;
        a(new k().a(new l(context)).a(new s()));
    }

    public bld a(boolean z) {
        this.c = z;
        return this;
    }

    protected d a() {
        e a = K().a("1.1").b("tv").b("shows").a(Long.valueOf(this.b));
        if (this.c) {
            a.a("view", "details");
        }
        return a.a();
    }

    protected t<TvShow, cd> b() {
        return v.a(TvShow.class);
    }

    public o<TvShow> g() {
        return this.g;
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<TvShow, cd> tVar) {
        if (httpOperation.k()) {
            this.g.b_((TvShow) ((t) com.twitter.util.object.e.a(tVar)).b());
            this.g.bs_();
        } else {
            this.g.a(new NetworkErrorException(aaVar.e()));
        }
        aaVar.a(httpOperation);
    }

    public String e() {
        return "event_timeline:tvshows:request:";
    }
}
