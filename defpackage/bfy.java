package defpackage;

import android.accounts.NetworkErrorException;
import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.af;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.k;
import com.twitter.library.service.l;
import com.twitter.library.service.s;
import com.twitter.model.core.cd;
import com.twitter.util.object.e;
import rx.o;
import rx.subjects.a;

/* compiled from: Twttr */
/* renamed from: bfy */
public class bfy extends af<t<cho, cd>> {
    private final long b;
    private final a<cho> c;

    protected /* synthetic */ c f() {
        return g();
    }

    public bfy(Context context, Session session, long j) {
        super(context, bfy.class.getName(), session);
        this.c = a.q();
        this.b = j;
        a(new k().a(new l(context)).a(new s()));
    }

    public String e() {
        return "communities:join:request:";
    }

    protected d a() {
        return K().a(RequestMethod.b).a("1.1").b("communities").b("1").b("community").b(Long.valueOf(this.b)).a("join").a();
    }

    public o<cho> b() {
        return this.c;
    }

    protected t<cho, cd> g() {
        return v.a(cho.class);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<cho, cd> tVar) {
        if (httpOperation.k()) {
            this.c.b_((cho) ((t) e.a(tVar)).b());
            this.c.bs_();
        } else {
            this.c.a(new NetworkErrorException(aaVar.e()));
        }
        aaVar.a(httpOperation);
    }
}
