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
import com.twitter.model.account.EnrollSMS2FABouncerResponse;
import com.twitter.model.core.cd;

/* compiled from: Twttr */
/* renamed from: bdz */
public class bdz extends b<t<EnrollSMS2FABouncerResponse, cd>> {
    private int[] a;

    protected /* synthetic */ c f() {
        return b();
    }

    public bdz(Context context, Session session) {
        super(context, "EnrollSMS2FABouncer", session);
    }

    protected d a() {
        return K().a(new Object[]{"bouncer", "opt_in"}).a(RequestMethod.POST).a("flow", "two_factor").a();
    }

    protected t<EnrollSMS2FABouncerResponse, cd> b() {
        return v.a(EnrollSMS2FABouncerResponse.class);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<EnrollSMS2FABouncerResponse, cd> tVar) {
        if (!httpOperation.k()) {
            this.a = cd.a((cd) tVar.c());
        }
    }

    public int[] e() {
        return this.a;
    }
}
