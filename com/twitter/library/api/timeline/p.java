package com.twitter.library.api.timeline;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.t;
import com.twitter.library.api.u;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import com.twitter.model.core.cd;
import com.twitter.model.core.cm;
import java.util.List;

/* compiled from: Twttr */
public class p extends ak<t<List<cm>, cd>> {
    private static final String a;
    private final long b;

    protected /* synthetic */ c f() {
        return g();
    }

    static {
        a = p.class.getName();
    }

    public p(Context context, ab abVar, long j) {
        super(context, a, abVar);
        this.b = j;
    }

    protected e h() {
        return K().a("conversation", "show").a(TtmlNode.ATTR_ID, this.b).a("count", 20);
    }

    protected t<List<cm>, cd> g() {
        return u.a(cm.class);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<List<cm>, cd> tVar) {
        int size;
        if (httpOperation.j()) {
            long j = N().c;
            long E = E();
            long G = G();
            List<cm> list = (List) tVar.b();
            if (list != null) {
                Object obj;
                Object obj2;
                if (E == 0 && G == 0) {
                    obj = 1;
                } else {
                    obj = null;
                }
                if (obj != null) {
                    for (cm bf_ : list) {
                        if (this.b == bf_.bf_()) {
                            obj2 = 1;
                            break;
                        }
                    }
                }
                obj2 = null;
                if (obj2 != null || obj == null) {
                    com.twitter.library.provider.e T = T();
                    size = S().a(list, j, 21, this.b, true, false, false, null, true, T, true).size() + 0;
                    T.a();
                    aaVar.c.putInt("new_tweet", size);
                    aaVar.c.putInt("scribe_item_count", size);
                }
                httpOperation.l().a = 0;
            }
        }
        size = 0;
        aaVar.c.putInt("new_tweet", size);
        aaVar.c.putInt("scribe_item_count", size);
    }
}
