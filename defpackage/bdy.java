package defpackage;

import android.content.Context;
import com.twitter.config.AppConfig;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.platform.notifications.PushRegistration;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.model.core.cd;

/* compiled from: Twttr */
/* renamed from: bdy */
public class bdy extends b<as> {
    private final bel a;

    protected /* synthetic */ c f() {
        return b();
    }

    public bdy(Context context, Session session, bel bel) {
        super(context, "EnrollLoginVerification", session);
        this.a = bel;
    }

    protected d a() {
        e a = K().a("account", "login_verification_enrollment").a(RequestMethod.b).a("public_key", this.a.b).a("offline_code", this.a.c).a("iteration_count", Integer.toString(this.a.a)).a("udid", PushRegistration.b(this.p)).a("token", PushRegistration.a(this.p)).a("update_push_destination", "true");
        if (AppConfig.m().b()) {
            a.a("environment", String.valueOf(2));
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
