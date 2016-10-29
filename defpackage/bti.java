package defpackage;

import android.content.Context;
import android.net.Uri;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.t;
import com.twitter.library.client.Session;
import com.twitter.library.commerce.model.v;
import com.twitter.library.provider.cz;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.util.ab;

/* compiled from: Twttr */
/* renamed from: bti */
public class bti extends b<btg> {
    private final Long a;

    protected /* synthetic */ c f() {
        return b();
    }

    public bti(Context context, Session session, Long l) {
        super(context, bti.class.getName(), session);
        this.a = l;
    }

    protected d a() {
        e a = K().b("commerce", "purchases").a("page_size", 100);
        if (this.a != null) {
            a.a("last_item_id", this.a.longValue());
        }
        btd.a(a, this.p);
        return a.a();
    }

    protected btg b() {
        return new btg();
    }

    protected void a(HttpOperation httpOperation, aa aaVar, btg btg) {
        if (httpOperation.k()) {
            v vVar = (v) btg.b();
            com.twitter.library.provider.e T = T();
            S().a(vVar, T);
            T.a(new Uri[]{cz.a});
            T.a();
            ab.a(aaVar.c, "order_history_list", btg.b(), v.a);
        } else {
            btd.a(aaVar, (t) btg);
        }
        aaVar.a(httpOperation);
    }
}
