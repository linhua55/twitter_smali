package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import com.twitter.model.core.cd;
import com.twitter.model.login.a;
import com.twitter.util.aj;

/* compiled from: Twttr */
/* renamed from: beo */
public class beo extends beb<t<a, cd>> {
    private final String a;
    private final String b;
    private a c;

    protected /* synthetic */ c f() {
        return g();
    }

    public beo(Context context, Session session, String str, String str2) {
        super(context, beo.class.getName(), session);
        this.a = str;
        this.b = str2;
    }

    protected e b() {
        if (aj.a(this.a)) {
            throw new IllegalArgumentException("identifier can't be empty");
        } else if ("sms".equals(this.b) || NotificationCompatApi21.CATEGORY_EMAIL.equals(this.b)) {
            return K().a(RequestMethod.POST).a(null).a(new Object[]{"auth", "1", "xauth_one_factor"}).a("x_auth_identifier", this.a).a("x_auth_1fa_factor", this.b).a("send_error_codes", "true");
        } else {
            throw new IllegalArgumentException("Invalid authentication factor: " + this.b);
        }
    }

    public a e() {
        return this.c;
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<a, cd> tVar) {
        super.a(httpOperation, aaVar, tVar);
        this.c = (a) tVar.b();
    }

    protected t<a, cd> g() {
        return v.a(a.class);
    }
}
