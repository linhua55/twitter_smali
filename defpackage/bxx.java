package defpackage;

import bxv;
import cjw;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.util.collection.CollectionUtils;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: bxx */
class bxx extends z {
    final /* synthetic */ Map a;
    final /* synthetic */ bxv b;

    bxx(bxv bxv, Map map) {
        this.b = bxv;
        this.a = map;
    }

    public void a(x xVar) {
        cke g = ((byd) xVar).g();
        if (!(g == null || CollectionUtils.b(g.a))) {
            bxv.b(this.b).a(new byb(bxv.a(this.b), g.a));
            for (cjw cjw : g.a) {
                this.a.put(Long.valueOf(cjw.h), cjw);
            }
        }
        bxv.a(this.b, this.a);
    }
}
