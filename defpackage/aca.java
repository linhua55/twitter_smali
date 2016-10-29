package defpackage;

import android.content.Context;
import com.twitter.android.util.v;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.t;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.model.core.cd;
import com.twitter.model.media.foundmedia.m;
import com.twitter.util.aj;

/* compiled from: Twttr */
/* renamed from: aca */
public abstract class aca extends b<t<m, cd>> {
    private final String a;
    private m b;

    protected abstract String b();

    protected /* synthetic */ c f() {
        return g();
    }

    protected aca(Context context, String str, String str2, Session session, int i) {
        if (!v.c()) {
            i = 0;
        }
        super(context, str, session, i);
        this.a = str2;
    }

    protected final d a() {
        return e().a();
    }

    protected e e() {
        e a = K().a(RequestMethod.GET).a(new Object[]{"foundmedia", b()});
        CharSequence s = aca.s();
        if (this.a != null) {
            a.a("cursor", this.a);
        }
        if (aj.b(s)) {
            a.a("provider", s);
        }
        return a;
    }

    protected t<m, cd> g() {
        return com.twitter.library.api.v.a(m.class);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<m, cd> tVar) {
        if (httpOperation.k()) {
            this.b = (m) tVar.b();
        }
    }

    public m h() {
        return this.b;
    }

    private static String s() {
        return v.b();
    }
}
