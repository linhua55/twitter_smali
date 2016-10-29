package defpackage;

import android.content.Context;
import com.twitter.config.AppConfig;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.platform.notifications.PushRegistration;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.model.account.LvEligibilityResponse;
import com.twitter.model.core.cd;
import com.twitter.util.aj;

/* compiled from: Twttr */
/* renamed from: bdv */
public class bdv extends b<t<LvEligibilityResponse, cd>> {
    private final String a;
    private LvEligibilityResponse b;
    private int[] c;

    protected /* synthetic */ c f() {
        return b();
    }

    public bdv(Context context, Session session, String str) {
        super(context, "CheckLoginVerificationEligibility", session);
        this.a = str;
    }

    protected d a() {
        e a = K().a(new Object[]{"account", "login_verification_enrollment_v2"});
        if (aj.b(this.a)) {
            a.a("public_key", this.a);
        }
        if (com.twitter.config.d.a("login_verification_push_destination_enabled")) {
            a.a("udid", PushRegistration.b(this.p)).a("token", PushRegistration.a(this.p));
            if (AppConfig.m().b()) {
                a.a("environment", String.valueOf(2));
            }
        }
        return a.a();
    }

    protected t<LvEligibilityResponse, cd> b() {
        return v.a(LvEligibilityResponse.class);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<LvEligibilityResponse, cd> tVar) {
        if (httpOperation.k()) {
            this.b = (LvEligibilityResponse) tVar.b();
        } else {
            this.c = cd.a((cd) tVar.c());
        }
    }

    public LvEligibilityResponse e() {
        return this.b;
    }

    public int[] g() {
        return this.c;
    }
}
