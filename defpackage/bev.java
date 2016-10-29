package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.model.core.cd;
import com.twitter.util.aj;

/* compiled from: Twttr */
/* renamed from: bev */
public class bev extends b<as> {
    private final String a;

    protected /* synthetic */ c f() {
        return b();
    }

    public bev(Context context, Session session, String str) {
        super(context, "UnenrollLoginVerification", session);
        this.a = str;
    }

    protected d a() {
        e a = K().a("account", "login_verification_enrollment").a(RequestMethod.d);
        if (aj.b(this.a)) {
            a.a("public_key", this.a);
        }
        return a.a();
    }

    protected as b() {
        return as.a(43);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        if (!httpOperation.j()) {
            aaVar.c.putIntArray("custom_errors", cd.a((cd) asVar.b()));
        }
    }
}
