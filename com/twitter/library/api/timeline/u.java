package com.twitter.library.api.timeline;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.t;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import com.twitter.model.core.cd;
import com.twitter.model.core.cm;
import com.twitter.util.collection.CollectionUtils;
import java.util.List;

/* compiled from: Twttr */
public class u extends ak<t<List<cm>, cd>> {
    private final long a;
    private final long b;

    protected /* synthetic */ c f() {
        return e();
    }

    public u(Context context, Session session, long j, long j2) {
        super(context, u.class.getName(), session);
        this.a = j;
        this.b = j2;
    }

    protected e h() {
        return K().a("lists", "statuses").a("list_id", this.b).a("include_rts", true);
    }

    protected t<List<cm>, cd> e() {
        return com.twitter.library.api.u.a(cm.class);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<List<cm>, cd> tVar) {
        if (httpOperation.k()) {
            String str;
            List list = (List) tVar.b();
            long E = E();
            if (E <= 0 || CollectionUtils.b(list)) {
                str = null;
            } else {
                str = Long.toString(((cm) list.get(list.size() - 1)).b);
            }
            boolean z = E > 0;
            com.twitter.library.provider.e T = T();
            S().a(list, this.a, 9, this.b, E > 0, z, str == null, str, true, T, true);
            T.a();
        }
    }
}
