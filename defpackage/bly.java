package defpackage;

import android.content.Context;
import byi;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.model.core.cd;
import com.twitter.util.al;

/* compiled from: Twttr */
/* renamed from: bly */
public class bly extends b<t<clj, cd>> {
    private final byi a;
    private final long b;

    protected /* synthetic */ c f() {
        return b();
    }

    public bly(Context context, Session session, byi byi, long j) {
        super(context, bly.class.getName(), session);
        this.a = byi;
        this.b = j;
    }

    protected d a() {
        return K().b().a("v", 1447995056).b("X-Twitter-UTCOffset", al.a()).a("moments", "pivot").a("moment_id", this.b).a("include_blocking", true).d().c().a();
    }

    protected t<clj, cd> b() {
        return v.a(clj.class);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<clj, cd> tVar) {
        super.a(httpOperation, aaVar, tVar);
        clj clj = (clj) tVar.b();
        if (clj != null && !clj.a.isEmpty()) {
            this.a.a(this.b, clj);
        }
    }
}
