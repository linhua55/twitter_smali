package defpackage;

import bxv;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.n;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: bxy */
class bxy extends z {
    final /* synthetic */ Map a;
    final /* synthetic */ bxv b;

    bxy(bxv bxv, Map map) {
        this.b = bxv;
        this.a = map;
    }

    public void a(x xVar) {
        cjr g = ((bxu) xVar).g();
        if (!(g == null || CollectionUtils.b(g.a))) {
            n a = n.a(g.a.size());
            for (cjq cjq : g.a) {
                this.a.remove(Long.valueOf(cjq.b));
                a.c(Long.valueOf(cjq.b));
            }
            bxv.b(this.b).a(new bxz(bxv.a(this.b), (List) a.q(), this.a.keySet()));
        }
        bxv.b(this.b, this.a);
    }
}
