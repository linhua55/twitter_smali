package defpackage;

import android.content.Context;
import cjj;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import com.twitter.model.core.cd;

/* compiled from: Twttr */
/* renamed from: bgn */
public class bgn extends beb<t<cjj, cd>> {
    protected cjj a;
    private final String b;

    protected /* synthetic */ c f() {
        return g();
    }

    public bgn(Context context, Session session, String str) {
        super(context, bgn.class.getName(), session);
        this.b = str;
    }

    public cjj e() {
        return this.a;
    }

    protected e b() {
        return K().a(RequestMethod.GET).a(new Object[]{"device", "install_referrer"}).a("os_version", this.b);
    }

    protected t<cjj, cd> g() {
        return v.a(cjj.class);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<cjj, cd> tVar) {
        if (httpOperation.j()) {
            this.a = (cjj) tVar.b();
        }
    }
}
