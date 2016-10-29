package defpackage;

import android.content.Context;
import com.twitter.config.d;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.network.w;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import com.twitter.model.account.LoginResponse;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cd;

/* compiled from: Twttr */
/* renamed from: bds */
public abstract class bds extends b<t<LoginResponse, cd>> {
    private TwitterUser a;
    private int[] b;
    private LoginResponse c;

    protected /* synthetic */ c f() {
        return e();
    }

    protected bds(Context context, String str, Session session) {
        super(context, str, session);
    }

    protected final e b() {
        e a = K().a(RequestMethod.POST).a(null).b("Accept", "application/json").a(new w(1)).b(new Object[]{"oauth", "access_token"}).a("x_auth_mode", "client_auth");
        if (d.a("native_login_verification_enabled")) {
            a.a("x_auth_login_verification", "1");
        } else {
            a.a("x_auth_json_response", "1");
        }
        if (d.a("login_challenge_enabled")) {
            a.a("x_auth_login_challenge", "1");
        }
        a.a("send_error_codes", "true");
        return a;
    }

    protected t<LoginResponse, cd> e() {
        return v.a(LoginResponse.class);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<LoginResponse, cd> tVar) {
        if (httpOperation.k()) {
            LoginResponse loginResponse = (LoginResponse) tVar.b();
            this.c = loginResponse;
            if (loginResponse != null && loginResponse.d == 1) {
                bey bey = new bey(this.p, N(), new w(loginResponse.a));
                aaVar.a(bey.P());
                this.a = bey.g();
                return;
            }
            return;
        }
        this.b = cd.a((cd) tVar.c());
    }

    public final TwitterUser g() {
        return this.a;
    }

    public final int[] h() {
        return this.b;
    }

    public final LoginResponse s() {
        return this.c;
    }
}
