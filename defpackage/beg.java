package defpackage;

import android.content.Context;
import bbu;
import beb;
import bef;
import bey;
import com.twitter.config.d;
import com.twitter.internal.android.service.ab;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.network.w;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import com.twitter.library.service.k;
import com.twitter.library.util.aj;
import com.twitter.model.account.LoginResponse;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cd;
import com.twitter.model.login.OneFactorEligibleFactor;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
/* renamed from: beg */
public class beg extends beb<t<LoginResponse, cd>> {
    private static final int a;
    private static final int b;
    private static final Set<Integer> c;
    private TwitterUser h;
    private int[] i;
    private List<OneFactorEligibleFactor> j;
    private LoginResponse k;
    private final String l;
    private final char[] m;
    private final String r;
    private final boolean s;

    protected /* synthetic */ c f() {
        return e();
    }

    static {
        a = (int) TimeUnit.SECONDS.toMillis(10);
        b = (int) TimeUnit.MINUTES.toMillis(3);
        c = new HashSet(Arrays.asList(new Integer[]{Integer.valueOf(32), Integer.valueOf(229), Integer.valueOf(231), Integer.valueOf(244), Integer.valueOf(305), Integer.valueOf(267)}));
    }

    public beg(Context context, String str, Session session, String str2, String str3, boolean z) {
        super(context, str, session);
        this.l = str2;
        this.m = str3.toCharArray();
        this.r = aj.a(context);
        this.s = z;
        k v = super.v();
        if (v != null) {
            v.a(new com.twitter.library.service.t(500, a, b, 10));
            a(v);
        }
    }

    protected e b() {
        e a = K().a(RequestMethod.b).a(null).b("Accept", "application/json").a("auth", "1", "xauth_password").a("x_auth_identifier", this.l).a("x_auth_password", String.valueOf(this.m)).a("send_error_codes", "true");
        if (this.s) {
            a.a("x_auth_supports_1fa", "true");
        }
        if (d.a("native_login_verification_enabled")) {
            a.a("x_auth_login_verification", "1");
        }
        if (d.a("login_challenge_enabled")) {
            a.a("x_auth_login_challenge", "1");
        }
        String a2 = bef.a(this.p);
        if (a2.length() > 0) {
            a.a("kdt", a2);
        }
        if (this.r != null) {
            a.a("x_auth_country_code", this.r.toUpperCase());
        }
        return a;
    }

    protected t<LoginResponse, cd> e() {
        return v.a(LoginResponse.class);
    }

    public void b(ab<aa> abVar) {
        a(abVar, true);
    }

    public void a(ab<aa> abVar) {
        a(abVar, false);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<LoginResponse, cd> tVar) {
        if (httpOperation.k()) {
            LoginResponse loginResponse = (LoginResponse) tVar.b();
            this.k = loginResponse;
            if (loginResponse != null && loginResponse.d == 1) {
                bey bey = new bey(this.p, N(), new w(loginResponse.a));
                aaVar.a(bey.P());
                this.h = bey.g();
                y();
                return;
            }
            return;
        }
        cd cdVar = (cd) tVar.c();
        this.j = cd.b(cdVar);
        this.i = cd.a(cdVar);
    }

    private void a(ab<aa> abVar, boolean z) {
        String str;
        int size = abVar.a().size() - 1;
        if (d((aa) abVar.b())) {
            str = "success";
        } else if (z) {
            str = "retry";
        } else {
            str = "failure";
        }
        TwitterScribeLog twitterScribeLog = (TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(N() == null ? 0 : N().c).b(new String[]{"app:login::authenticate", str})).a((long) size);
        com.twitter.internal.network.k g = ((aa) abVar.b()).g();
        HttpOperation f = ((aa) abVar.b()).f();
        if (g != null) {
            TwitterScribeLog.a(this.p, twitterScribeLog, g);
            twitterScribeLog.a(f.i().toString(), g);
        }
        bbu.a(twitterScribeLog);
    }

    private boolean d(aa aaVar) {
        boolean b = aaVar.b();
        if (aaVar.g() == null) {
            return b;
        }
        return b || c.contains(Integer.valueOf(aaVar.g().j));
    }

    private void y() {
        for (int i = 0; i < this.m.length; i++) {
            this.m[i] = '*';
        }
    }

    public final String g() {
        return this.l;
    }

    public final TwitterUser h() {
        return this.h;
    }

    public List<OneFactorEligibleFactor> s() {
        return this.j;
    }

    public final int[] t() {
        return this.i;
    }

    public final LoginResponse x() {
        return this.k;
    }
}
