package defpackage;

import android.content.Context;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import beb;
import bef;
import com.twitter.config.d;
import com.twitter.internal.android.service.ab;
import com.twitter.internal.android.service.ac;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.af;
import com.twitter.library.api.ak;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.network.f;
import com.twitter.library.network.h;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import com.twitter.library.service.k;
import com.twitter.library.service.t;
import com.twitter.library.util.i;
import com.twitter.model.account.LoginResponse;
import com.twitter.model.account.OAuthToken;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.aj;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
/* renamed from: bdx */
public class bdx extends beb<as> {
    private static final int a;
    private static final int b;
    private final String c;
    private final String h;
    private final String i;
    private final String j;
    private final String k;
    private final String l;
    private String m;
    private LoginResponse r;
    private ak s;
    private TwitterUser t;
    private String u;
    private String v;
    private String w;

    protected /* synthetic */ c f() {
        return e();
    }

    static {
        a = (int) TimeUnit.SECONDS.toMillis(10);
        b = (int) TimeUnit.MINUTES.toMillis(3);
    }

    public bdx(Context context, Session session, String str, String str2, String str3, String str4, String str5, String str6) {
        super(context, bdx.class.getName(), session);
        this.c = str5;
        this.h = str2;
        this.k = str;
        this.i = str3;
        this.j = str4;
        this.l = str6;
        ac tVar = new t(100, a, b);
        k v = super.v();
        if (v != null) {
            v.a(tVar);
            a(v);
            return;
        }
        a(tVar);
    }

    protected boolean c(aa aaVar) {
        if ((d.a("google_auth_token_signal_param_enabled") || d.a("android_autoconfirm_enabled")) && this.u == null) {
            this.u = f.a(this.p).a();
        }
        if (d.a("signup_ghv_enabled") && (u() instanceof h) && aj.b(((h) u()).c())) {
            this.v = i.a(((h) u()).c());
        }
        if (d.a("signup_shv_enabled") && aj.b(this.h)) {
            this.w = i.a(this.h);
        }
        return super.c(aaVar);
    }

    protected e b() {
        e a = K().a(RequestMethod.b).a("1.1").a("account", "create");
        String str = this.k;
        String str2 = this.h;
        String str3 = this.i;
        String str4 = this.j;
        String str5 = this.c;
        String str6 = this.m;
        String str7 = this.u;
        String str8 = this.v;
        String str9 = this.w;
        String str10 = this.l;
        com.twitter.library.util.aa a2 = com.twitter.library.util.aa.a(this.p);
        String a3 = bef.a(this.p);
        if (a3.length() > 0) {
            a.a("kdt", a3);
        }
        if (str != null) {
            a.a("name", str);
        }
        if (str2 != null) {
            a.a("screen_name", str2);
        }
        if (str3 != null) {
            a.a("email", str3);
        }
        if (str4 != null) {
            a.a("phone_number", str4);
        }
        if (str5 != null) {
            a.a("password", str5);
        }
        if (str6 != null) {
            a.a("lang", str6);
        }
        if (aj.b(str7)) {
            a.a("google_auth_token", str7);
        }
        if (aj.b(str8)) {
            a.a("ghv", str8);
        }
        if (aj.b(str9)) {
            a.a("shv", str9);
        }
        if (a2.a()) {
            a.a("discoverable_by_email", "true");
        }
        if (a2.b()) {
            a.a("discoverable_by_mobile_phone", "true");
        }
        if (aj.b(str10)) {
            a.a("ui_metrics", str10);
        }
        a.a("app_cred", true);
        return a;
    }

    protected as e() {
        return as.a(60);
    }

    public void b(ab<aa> abVar) {
        a(abVar, true);
    }

    public void a(ab<aa> abVar) {
        a(abVar, false);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        int i = httpOperation.l().a;
        Object b = asVar.b();
        if (i == Callback.DEFAULT_DRAG_ANIMATION_DURATION) {
            String b2 = httpOperation.b("x-twitter-new-account-oauth-access-token");
            String b3 = httpOperation.b("x-twitter-new-account-oauth-secret");
            String b4 = httpOperation.b("kdt");
            if (b2 != null && b3 != null) {
                OAuthToken oAuthToken = new OAuthToken(b2, b3);
                this.r = new LoginResponse(1, oAuthToken.b, oAuthToken.a, b4);
                this.t = (TwitterUser) b;
            } else {
                return;
            }
        } else if (i == 403 && (b instanceof ak)) {
            this.s = (ak) b;
        }
        super.a(httpOperation, aaVar, asVar);
    }

    public bdx a(String str) {
        this.m = str;
        return this;
    }

    public ak g() {
        return this.s;
    }

    public TwitterUser h() {
        return this.t;
    }

    public String s() {
        return this.h;
    }

    public LoginResponse t() {
        return this.r;
    }

    protected boolean d(ab<aa> abVar) {
        if (((aa) abVar.b()).b()) {
            return true;
        }
        aa aaVar = (aa) abVar.b();
        boolean z = aaVar.d() == 403 || aaVar.d() == 412;
        return z;
    }

    private void a(ab<aa> abVar, boolean z) {
        af.a(this.p, "app:twitter_service:account:create", N().c, d(abVar), abVar, z);
    }
}
