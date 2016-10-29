package defpackage;

import auc;
import com.twitter.database.model.i;
import com.twitter.database.model.j;
import com.twitter.util.collection.n;
import cyw;
import java.util.Collection;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: byq */
class byq implements cyw<String, List<Long>> {
    final /* synthetic */ byp a;

    byq(byp byp) {
        this.a = byp;
    }

    public List<Long> a(String str) {
        Collection a = n.a(Integer.valueOf(2), new Integer[]{Integer.valueOf(0)});
        j a2 = this.a.a.a(new i().a(auc.a(new String[]{auc.b("section_group_id", str), auc.a("section_group_type", a)})).a());
        try {
            n d = n.d();
            while (a2.c()) {
                d.c(Long.valueOf(((ayl) a2.a).a()));
            }
            List<Long> list = (List) d.q();
            return list;
        } finally {
            a2.close();
        }
    }
}
