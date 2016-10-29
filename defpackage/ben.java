package defpackage;

import android.content.Context;
import beb;
import bey;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.network.w;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import com.twitter.model.account.LoginResponse;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cd;
import com.twitter.util.aj;

/* compiled from: Twttr */
/* renamed from: ben */
public class ben extends beb<t<LoginResponse, cd>> {
    final String a;
    final String b;
    final String c;
    private TwitterUser h;
    private LoginResponse i;
    private int[] j;

    protected /* synthetic */ c f() {
        return t();
    }

    public ben(Context context, Session session, String str, String str2, String str3) {
        super(context, ben.class.getName(), session);
        this.j = cd.b;
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public LoginResponse e() {
        return this.i;
    }

    public String g() {
        return this.a;
    }

    public TwitterUser h() {
        return this.h;
    }

    public int[] s() {
        return this.j;
    }

    protected e b() {
        if (aj.a(this.a)) {
            throw new IllegalArgumentException("identifier can not be empty.");
        } else if (aj.a(this.b)) {
            throw new IllegalArgumentException("request id can not be empty.");
        } else if (aj.a(this.c)) {
            throw new IllegalArgumentException("verification code can not be empty.");
        } else {
            return K().a(RequestMethod.b).a(null).a("auth", "1", "xauth_challenge").a("x_auth_identifier", this.a).a("login_verification_request_id", this.b).a("login_verification_challenge_response", this.c).a("send_error_codes", "true");
        }
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<LoginResponse, cd> tVar) {
        if (httpOperation.k()) {
            LoginResponse loginResponse = (LoginResponse) tVar.b();
            this.i = loginResponse;
            if (loginResponse != null && loginResponse.d == 1) {
                bey bey = new bey(this.p, N(), new w(loginResponse.a));
                aaVar.a(bey.P());
                this.h = bey.g();
                return;
            }
            return;
        }
        this.j = cd.a((cd) tVar.c());
    }

    protected t<LoginResponse, cd> t() {
        return v.a(LoginResponse.class);
    }
}
