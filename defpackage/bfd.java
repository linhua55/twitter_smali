package defpackage;

import android.accounts.NetworkErrorException;
import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.model.core.cd;
import com.twitter.util.object.e;
import rx.o;
import rx.subjects.a;

/* compiled from: Twttr */
/* renamed from: bfd */
public class bfd extends b<t<cgd, cd>> {
    private final long a;
    private final boolean b;
    private final a<cgd> c;

    protected /* synthetic */ c f() {
        return e();
    }

    public bfd(Context context, Session session, long j, boolean z) {
        super(context, bfd.class.getName(), session);
        this.c = a.q();
        this.a = j;
        this.b = z;
    }

    public o<cgd> b() {
        return this.c;
    }

    protected d a() {
        return K().a(RequestMethod.b).a("1.1").b("alerts").b(String.valueOf(this.a)).a("mute").a("value", this.b).a();
    }

    protected t<cgd, cd> e() {
        return v.a(cgd.class);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<cgd, cd> tVar) {
        if (httpOperation.k()) {
            this.c.b_((cgd) ((t) e.a(tVar)).b());
            this.c.bs_();
        } else {
            this.c.a(new NetworkErrorException(aaVar.e()));
        }
        aaVar.a(httpOperation);
    }
}
