package defpackage;

import android.content.Context;
import beb;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.as;
import com.twitter.library.api.y;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import com.twitter.library.util.aj;

/* compiled from: Twttr */
/* renamed from: bgo */
public class bgo extends beb<as> {
    private y a;
    private final String b;
    private final String c;

    protected /* synthetic */ c f() {
        return e();
    }

    public bgo(Context context, String str, Session session, String str2) {
        super(context, str, session);
        this.b = str2;
        this.c = aj.a(context);
    }

    protected e b() {
        e a = K().a(RequestMethod.a).a("users", "phone_number_available").a("raw_phone_number", this.b);
        if (this.c != null) {
            a.a("country_code", this.c.toUpperCase());
        }
        return a;
    }

    protected as e() {
        return as.a(88);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        if (httpOperation.k()) {
            this.a = (y) asVar.b();
        }
    }

    public y g() {
        return this.a;
    }
}
