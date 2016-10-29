package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.platform.notifications.w;
import com.twitter.library.provider.ar;
import com.twitter.library.provider.e;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.util.al;

/* compiled from: Twttr */
/* renamed from: bmo */
public class bmo extends bml {
    private int h;

    protected /* synthetic */ c f() {
        return e();
    }

    public bmo(Context context, Session session, String str, int i, String str2) {
        this(context, new ab(session), str, i, str2);
    }

    public bmo(Context context, ab abVar, String str, int i, String str2) {
        super(context, "UpdatePushDevice", abVar, str, str2);
        this.c = i;
    }

    public int g() {
        return this.h;
    }

    protected d a() {
        return a(K().a("push_destinations").a(RequestMethod.b)).a();
    }

    protected t<cnd, cnc> e() {
        return v.a(cnd.class, cnc.class);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<cnd, cnc> tVar) {
        int i = 0;
        if (aaVar.b() || aaVar.d() == 304) {
            cnd a = a((t) tVar);
            i = (a == null || !a.a) ? this.c : a.b;
            this.h = i;
            a(N().e, this.h);
        } else if (aaVar.d() == 401) {
            cnc b = b(tVar);
            if (b != null) {
                i = b.b;
            }
            this.g = i;
        } else {
            this.g = 0;
        }
    }

    protected void a(String str, int i) {
        e T = T();
        ar.a(this.p).a(str, i, true, T);
        T.a();
        w.a(this.p, str).a(al.b());
    }
}
