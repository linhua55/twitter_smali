package defpackage;

import android.accounts.NetworkErrorException;
import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.as;
import com.twitter.library.api.timeline.ab;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.object.e;
import rx.o;
import rx.subjects.a;

/* compiled from: Twttr */
/* renamed from: bfw */
public class bfw extends ab {
    private final long a;
    private final a<bfx> j;
    private final TwitterUser k;

    protected /* synthetic */ c f() {
        return e();
    }

    public bfw(Context context, Session session, long j, int i) throws AssertionError {
        super(context, bfw.class.getName(), new com.twitter.library.service.ab(session), (TwitterUser) e.a(session.f()), i);
        this.j = a.q();
        this.k = (TwitterUser) e.a(session.f());
        this.a = j;
    }

    protected com.twitter.library.service.e h() {
        return super.h().a(RequestMethod.a).a("1.1").b("communities").b("1").b("community").b(Long.valueOf(this.a)).a("timeline");
    }

    protected as e() {
        return as.a(bdd.AppCompatTheme_radioButtonStyle, this.k);
    }

    protected int g() {
        return 7;
    }

    public o<bfx> s() {
        return this.j;
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        super.a(httpOperation, aaVar, asVar);
        if (httpOperation.k()) {
            this.j.b_((bfx) ((as) e.a(asVar)).b());
            this.j.bs_();
            return;
        }
        this.j.a(new NetworkErrorException(aaVar.e()));
    }
}
