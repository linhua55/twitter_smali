package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.t;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.model.core.cd;
import com.twitter.model.core.cm;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bns */
public class bns extends b<t<List<cm>, cd>> {
    private final List<Long> a;
    private final bnt b;
    private List<cm> c;

    protected /* synthetic */ c f() {
        return b();
    }

    public bns(Context context, Session session, List<Long> list, bnt bnt) {
        super(context, bns.class.getName(), session);
        this.a = list;
        this.b = bnt;
    }

    protected d a() {
        return K().a("statuses", "lookup").b().a(TtmlNode.ATTR_ID, this.a).a("include_blocking", true).e().d().c().a();
    }

    protected t<List<cm>, cd> b() {
        return new bnu();
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<List<cm>, cd> tVar) {
        super.a(httpOperation, aaVar, tVar);
        if (httpOperation.j()) {
            this.c = (List) tVar.b();
            if (this.b != null) {
                this.b.a(httpOperation, aaVar, this.c);
            }
        }
    }

    public List<cm> e() {
        return this.c;
    }
}
