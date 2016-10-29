package defpackage;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import cfb;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.model.businessprofiles.m;
import com.twitter.model.businessprofiles.o;
import com.twitter.util.aj;

/* compiled from: Twttr */
/* renamed from: bfv */
public class bfv extends b<t<o, Void>> {
    private static final String a;
    private final long b;
    private final String c;
    private m g;

    protected /* synthetic */ c f() {
        return b();
    }

    static {
        a = bfv.class.getSimpleName();
    }

    public bfv(Context context, Session session, long j, String str) {
        super(context, bfv.class.getName(), session);
        this.b = j;
        this.c = str;
    }

    protected boolean b(aa aaVar) {
        if (this.b != 0) {
            return true;
        }
        aaVar.a(false);
        return false;
    }

    protected d a() {
        cfb.b(a, "Making an API call to fetch Business Profile");
        e a = K().a(RequestMethod.a).a("business_profiles", "show").a("user_id", this.b);
        if (aj.b(this.c)) {
            a.a("country_code", this.c);
        }
        return a.a();
    }

    protected t<o, Void> b() {
        return v.a(o.class, null);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<o, Void> tVar) {
        super.a(httpOperation, aaVar, tVar);
        if (httpOperation.j()) {
            o a = a(tVar);
            if (a != null) {
                this.g = (m) a.q();
                cfb.b(a, "Fetched Business Profile: " + this.g);
                e().a(this.g);
            }
        }
    }

    @VisibleForTesting
    di e() {
        return S();
    }

    @VisibleForTesting
    o a(t<o, Void> tVar) {
        return (o) tVar.b();
    }
}
