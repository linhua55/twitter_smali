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
import com.twitter.model.moments.f;
import com.twitter.util.al;

/* compiled from: Twttr */
/* renamed from: blz */
public class blz extends b<t<clc, f>> {
    public final long a;
    private final byi b;
    private f c;

    protected /* synthetic */ c f() {
        return b();
    }

    public blz(Context context, Session session, byi byi, long j) {
        super(context, blz.class.getName(), session);
        this.a = j;
        this.b = byi;
    }

    protected d a() {
        return K().b().a("v", 1447995056).b("X-Twitter-UTCOffset", al.a()).a("moments", "capsule", Long.valueOf(this.a)).a("include_blocking", true).d().c().a();
    }

    protected t<clc, f> b() {
        return v.a(clc.class, f.class);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<clc, f> tVar) {
        super.a(httpOperation, aaVar, tVar);
        if (httpOperation.j()) {
            clc clc = (clc) tVar.b();
            if (clc != null) {
                this.b.a(clc);
            }
        } else if (httpOperation.l() != null && httpOperation.l().a == 403) {
            this.c = (f) tVar.c();
        }
    }

    public com.twitter.model.moments.d e() {
        return this.c == null ? null : this.c.a();
    }
}
