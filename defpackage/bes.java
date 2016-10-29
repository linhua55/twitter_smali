package defpackage;

import android.content.Context;
import bet;
import com.twitter.config.d;
import com.twitter.internal.android.service.ab;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.af;
import com.twitter.library.api.ak;
import com.twitter.library.client.Session;
import com.twitter.library.network.f;
import com.twitter.library.network.h;
import com.twitter.library.network.w;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import com.twitter.library.service.t;
import com.twitter.library.util.ad;
import com.twitter.library.util.i;
import com.twitter.model.account.LoginResponse;
import com.twitter.model.account.OAuthToken;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.aj;
import java.util.concurrent.TimeUnit;

@Deprecated
/* compiled from: Twttr */
/* renamed from: bes */
public class bes extends af<bet> {
    private static final int b;
    private static final int c;
    private String A;
    private final String g;
    private final String h;
    private String i;
    private String j;
    private String k;
    private String l;
    private String m;
    private String r;
    private String s;
    private LoginResponse t;
    private ak u;
    private TwitterUser v;
    private String w;
    private h x;
    private String y;
    private String z;

    protected /* synthetic */ c f() {
        return g();
    }

    static {
        b = (int) TimeUnit.SECONDS.toMillis(10);
        c = (int) TimeUnit.MINUTES.toMillis(3);
    }

    public bes(Context context, Session session, String str, String str2) {
        super(context, bes.class.getName(), session);
        this.h = str;
        this.g = str2;
        a(new t(100, b, c));
    }

    public String e() {
        return "app:twitter_service:account:create";
    }

    public LoginResponse b() {
        return this.t;
    }

    public bes a(String str) {
        this.i = str;
        return this;
    }

    public bes b(String str) {
        this.j = str;
        return this;
    }

    public bes c(String str) {
        this.k = str;
        return this;
    }

    public bes d(String str) {
        this.s = str;
        return this;
    }

    public bes e(String str) {
        this.m = str;
        return this;
    }

    public bes f(String str) {
        this.r = str;
        return this;
    }

    public bes g(String str) {
        this.l = str;
        return this;
    }

    public bes h(String str) {
        this.A = str;
        return this;
    }

    protected final boolean b(aa aaVar) {
        if ((d.a("signup_guest_auth_token_param_enabled") || aj.b(this.r)) && this.x == null) {
            this.x = h.a(this.p);
        }
        if ((d.a("google_auth_token_signal_param_enabled") || d.a("android_autoconfirm_enabled")) && this.w == null) {
            this.w = f.a(this.p).a();
        }
        if (d.a("signup_ghv_enabled") && this.x != null && aj.b(this.x.c())) {
            this.y = i.a(this.x.c());
        }
        if (d.a("signup_shv_enabled") && aj.b(this.h)) {
            this.z = i.a(this.h);
        }
        return true;
    }

    protected com.twitter.library.service.d a() {
        e b = K().b("mobile.twitter.com").a(null).a(RequestMethod.POST).a(new w(null, w.i, w.j)).b(new Object[]{"mobile_client_api", "signup"});
        String str = this.s;
        String str2 = this.h;
        String str3 = this.m;
        String str4 = this.r;
        String str5 = this.g;
        String str6 = this.l;
        String str7 = this.k;
        String str8 = this.i;
        String str9 = this.j;
        CharSequence charSequence = this.w;
        h hVar = this.x;
        CharSequence charSequence2 = this.y;
        CharSequence charSequence3 = this.z;
        CharSequence charSequence4 = this.A;
        ad a = com.twitter.library.util.aa.a(this.p);
        String a2 = bef.a(this.p);
        if (a2.length() > 0) {
            b.a("kdt", a2);
        }
        if (str != null) {
            b.a("fullname", str);
        }
        if (str2 != null) {
            b.a("screen_name", str2);
        }
        if (str3 != null) {
            b.a(NotificationCompatApi21.CATEGORY_EMAIL, str3);
        }
        if (str4 != null) {
            b.a("phone_number", str4);
        }
        if (str5 != null) {
            b.a("password", str5);
        }
        if (str8 != null) {
            b.a("lang", str8);
        }
        if (str9 != null) {
            b.a("locale", str9);
        }
        if (a.a()) {
            b.a("discoverable_by_email", "true");
        }
        if (a.b()) {
            b.a("discoverable_by_mobile_phone", "true");
        }
        if (!(hVar == null || hVar.c() == null)) {
            b.a("guest_token", hVar.c());
        }
        if (!(str6 == null || str7 == null)) {
            b.a("captcha_token", str6);
            b.a("captcha_solution", str7);
        }
        if (aj.b(charSequence)) {
            b.a("google_auth_token", charSequence);
        }
        if (aj.b(charSequence2)) {
            b.a("ghv", charSequence2);
        }
        if (aj.b(charSequence3)) {
            b.a("shv", charSequence3);
        }
        if (aj.b(charSequence4)) {
            b.a("ui_metrics", charSequence4);
        }
        return b.a();
    }

    protected bet g() {
        return new bet();
    }

    protected void a(HttpOperation httpOperation, aa aaVar, bet bet) {
        int i = httpOperation.l().a;
        if (i == 200 && bet.b() != null) {
            OAuthToken b = bet.b();
            this.t = new LoginResponse(1, b.b, b.a, bet.c());
            bey bey = new bey(this.p, N(), new w(b));
            aaVar.a(bey.P());
            this.v = bey.g();
            if (aaVar.g().a != 200) {
                aaVar.a(400);
            }
        } else if (i == 403) {
            this.u = bet.d();
        } else if (i == 412) {
            this.u = bet.d();
        }
    }

    protected boolean d(ab<aa> abVar) {
        if (super.d(abVar)) {
            return true;
        }
        aa aaVar = (aa) abVar.b();
        boolean z = aaVar.d() == 403 || aaVar.d() == 412;
        return z;
    }

    public ak h() {
        return this.u;
    }

    public TwitterUser s() {
        return this.v;
    }

    public String t() {
        return this.h;
    }
}
