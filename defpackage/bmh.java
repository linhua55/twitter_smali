package defpackage;

import android.content.Context;
import android.net.Uri;
import byi;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.af;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.provider.bw;
import com.twitter.library.provider.e;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.model.core.cd;
import com.twitter.util.aj;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: bmh */
public abstract class bmh extends af<t<clk, cd>> {
    private final byi b;
    private final List<String> c;

    protected abstract String b();

    protected /* synthetic */ c f() {
        return g();
    }

    protected bmh(Context context, byi byi, Session session, List<String> list) {
        super(context, bmh.class.getName(), session);
        this.b = byi;
        this.c = list;
        a(new com.twitter.library.service.t());
    }

    protected d a() {
        String b = b();
        return K().a("moments", b).a("v", 1447995056).a("moment_ids", aj.a(",", this.c)).a(RequestMethod.b).a();
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<clk, cd> tVar) {
        e eVar = new e(this.p.getContentResolver());
        if (aaVar.b()) {
            Map a = ((clk) tVar.b()).a();
            this.b.a(a);
            Iterator it = a.keySet().iterator();
            while (it.hasNext()) {
                eVar.a(new Uri[]{bw.a(((Long) it.next()).longValue())});
            }
        }
        eVar.a();
    }

    protected t<clk, cd> g() {
        return v.a(clk.class);
    }
}
