package defpackage;

import android.content.Context;
import beb;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.e;

/* compiled from: Twttr */
/* renamed from: blm */
public class blm extends beb<t<cji, Void>> {
    private cji a;

    protected /* synthetic */ c f() {
        return e();
    }

    public blm(Context context, Session session) {
        super(context, blm.class.getName(), session);
    }

    protected e b() {
        return K().a("interests", "suggestions");
    }

    protected t<cji, Void> e() {
        return v.a(cji.class, null);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<cji, Void> tVar) {
        super.a(httpOperation, aaVar, tVar);
        if (httpOperation.j()) {
            this.a = (cji) tVar.b();
        }
    }

    public cji g() {
        return this.a;
    }
}
