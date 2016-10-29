package defpackage;

import android.content.Context;
import bnq;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.af;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.provider.e;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.model.core.cd;
import com.twitter.model.core.cm;

/* compiled from: Twttr */
/* renamed from: bnw */
public class bnw extends af<t<cm, cd>> {
    private final long b;
    private final t<cm, cd> c;
    private final di g;
    private final boolean h;
    private final String i;

    protected /* synthetic */ c f() {
        return b();
    }

    public bnw(Context context, Session session, long j, boolean z) {
        this(context, new ab(session), j, z);
    }

    public bnw(Context context, ab abVar, long j, boolean z) {
        this(context, abVar, j, z, di.a(context, abVar.c), v.a(cm.class));
    }

    protected bnw(Context context, ab abVar, long j, boolean z, di diVar, t<cm, cd> tVar) {
        super(context, bnw.class.getName(), abVar);
        this.b = j;
        this.h = z;
        this.g = diVar;
        this.c = tVar;
        this.i = bnq.a(j, abVar);
        a(new com.twitter.library.service.t());
    }

    protected d a() {
        return K().a(RequestMethod.b).a("statuses", "unretweet", Long.valueOf(this.b)).d().c().a();
    }

    public Runnable c(AsyncOperation asyncOperation) {
        if (asyncOperation != null) {
            asyncOperation.cancel(true);
        }
        return new bnx(this);
    }

    public void a(com.twitter.internal.android.service.ab<aa> abVar) {
        super.a(abVar);
        aa aaVar = (aa) abVar.b();
        if (aaVar != null) {
            c(aaVar);
        }
    }

    protected t<cm, cd> b() {
        return this.c;
    }

    public String e() {
        return "app:twitter_service:retweet:delete";
    }

    public long g() {
        return this.b;
    }

    void c(aa aaVar) {
        e T = T();
        long j = N().c;
        if (aaVar.b()) {
            cm cmVar = (cm) this.c.b();
            if (cmVar != null) {
                this.g.b(j, cmVar, this.h, T);
            }
            this.g.a(j, this.b, T);
        } else {
            this.g.a(j, this.b, true, T);
        }
        T.a();
    }

    protected String o() {
        return this.i;
    }
}
