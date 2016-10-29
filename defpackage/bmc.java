package defpackage;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
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
import com.twitter.util.object.e;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bmc */
public class bmc extends b<t<clx, cd>> {
    private final List<String> a;
    private clx b;

    protected /* synthetic */ c f() {
        return b();
    }

    @VisibleForTesting
    bmc(Context context, Session session, List<String> list) {
        super(context, bmc.class.getName(), session);
        this.a = list;
    }

    protected d a() {
        return K().b("X-Twitter-UTCOffset", al.a()).b("moments").b("sports").a("scores").a("event_ids", this.a).a();
    }

    protected t<clx, cd> b() {
        return v.a(clx.class);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<clx, cd> tVar) {
        if (httpOperation.k()) {
            this.b = (clx) ((t) e.a(tVar)).b();
        }
        aaVar.a(httpOperation);
    }

    public clx e() {
        return this.b;
    }
}
