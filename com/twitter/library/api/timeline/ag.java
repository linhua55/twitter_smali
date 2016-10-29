package com.twitter.library.api.timeline;

import android.content.Context;
import android.os.Bundle;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.client.Session;
import com.twitter.library.provider.ar;
import com.twitter.library.provider.ch;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.c;
import com.twitter.model.core.bl;
import com.twitter.model.core.cm;
import com.twitter.model.timeline.cj;
import com.twitter.util.collection.n;
import com.twitter.util.object.e;
import cto;
import java.util.Collection;
import java.util.List;

/* compiled from: Twttr */
public abstract class ag extends ak<af> {
    protected final long a;
    private final int b;
    private final int c;
    private final long h;
    private final String i;

    protected /* synthetic */ c f() {
        return e();
    }

    ag(Context context, String str, Session session, long j, int i, long j2, String str2) {
        super(context, str, session);
        this.a = j;
        this.b = i;
        this.c = cj.a(this.b);
        this.h = j2;
        this.i = (String) e.b(str2, "unspecified");
    }

    protected af e() {
        return new af();
    }

    protected void a(HttpOperation httpOperation, aa aaVar, af afVar) {
        if (httpOperation.k() && afVar != null) {
            Bundle bundle = aaVar.c;
            List list = (List) afVar.b();
            if (list != null) {
                String str;
                int a;
                Collection a2 = n.a(cto.a(list, new ah(this)));
                long E = E();
                if (E <= 0 || a2.isEmpty()) {
                    str = null;
                } else {
                    str = Long.toString(((cm) a2.get(a2.size() - 1)).b);
                }
                boolean z = ((E > 0 ? 1 : (E == 0 ? 0 : -1)) > 0 ? 1 : null) != null && list.isEmpty();
                di S = S();
                com.twitter.library.provider.e T = T();
                if (com.twitter.config.c.a("android_status_timelines_in_timeline_table_4412", new String[]{"enabled"})) {
                    boolean z2;
                    com.twitter.library.provider.cj a3 = new com.twitter.library.provider.cj().a(list).a(this.a).a(this.b).a(this.i).a(z);
                    if (str == null) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    a = S.a((ch) a3.c(z2).b(str).d(true).a(T).e(O()).q());
                } else {
                    a = S.a(a2, this.a, this.c, this.h, E > 0, z, str == null, str, true, T, this.c != 17).size();
                }
                d(a);
                if (list.size() >= 100) {
                    S.a(this.a, this.c, -1, ((cm) a2.get(a2.size() - 1)).b);
                }
                if (bl.a(this.c)) {
                    int f = S.f(this.a, this.c);
                    if (f > 0) {
                        ar.a(this.p).a(((ab) e.a(N())).e, 1, T);
                    }
                    e(f);
                }
                T.a();
                bundle.putInt("scribe_item_count", a);
            }
        }
    }
}
