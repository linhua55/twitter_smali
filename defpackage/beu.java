package defpackage;

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
import com.twitter.library.service.e;
import com.twitter.model.account.h;
import com.twitter.model.core.cd;

/* compiled from: Twttr */
/* renamed from: beu */
public class beu extends b<t<h, cd>> {
    private h a;
    private int[] b;

    protected /* synthetic */ c f() {
        return b();
    }

    public beu(Context context, Session session) {
        super(context, "TemporaryAppPasswordRequest", session);
    }

    protected d a() {
        e a = K().a("account", "login_verification", "temporary_password");
        a.a(RequestMethod.b);
        return a.a();
    }

    protected t<h, cd> b() {
        return v.a(h.class);
    }

    public h e() {
        return this.a;
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<h, cd> tVar) {
        if (httpOperation.k()) {
            this.a = (h) tVar.b();
        } else {
            this.b = cd.a((cd) tVar.c());
        }
    }
}
