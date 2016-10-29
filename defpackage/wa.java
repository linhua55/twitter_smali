package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.af;
import com.twitter.library.api.u;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.model.core.cd;
import com.twitter.util.collection.CollectionUtils;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: wa */
public class wa extends af<u<String, cd>> {
    private final vx b;

    protected /* synthetic */ c f() {
        return b();
    }

    public wa(Context context, Session session, vx vxVar) {
        super(context, wa.class.getName(), session);
        this.b = vxVar;
    }

    protected d a() {
        e a = K().b("analytics.twitter.com").a(RequestMethod.a).a(null).a(new Object[]{"mob_idsync_generate"});
        ab N = N();
        if (N != null) {
            a.a("user_id", N.c);
        }
        com.twitter.library.api.d a2 = com.twitter.library.client.u.a.a();
        if (a2 != null) {
            a.a("ad_id", a2.a());
        }
        return a.a();
    }

    protected u<String, cd> b() {
        return u.a(String.class);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, u<String, cd> uVar) {
        if (aaVar.b()) {
            List list = (List) uVar.b();
            if (!CollectionUtils.b(list)) {
                this.b.a(list);
            }
        }
    }

    public String e() {
        return null;
    }
}
