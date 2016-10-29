package com.twitter.library.client;

import boa;
import com.twitter.library.service.aa;
import com.twitter.library.service.z;
import com.twitter.library.util.aq;
import com.twitter.util.al;
import defpackage.bny;
import defpackage.bob;

/* compiled from: Twttr */
class x extends z {
    final /* synthetic */ v a;

    private x(v vVar) {
        this.a = vVar;
    }

    public void a(com.twitter.library.service.x xVar) {
        boolean b = ((aa) xVar.l().b()).b();
        String e = v.b(this.a).c().e();
        l lVar = new l(v.a(this.a), e);
        if (!b) {
            return;
        }
        if (xVar instanceof bny) {
            lVar.a().a("app_graph_timestamp", al.b() + (((long) aq.a.nextInt(600)) * 1000)).apply();
            return;
        }
        String str = TtmlNode.ANONYMOUS_REGION_ID;
        if (xVar instanceof boa) {
            str = ((boa) xVar).g();
        } else if (xVar instanceof bob) {
            str = ((bob) xVar).g();
        }
        this.a.b(str);
        if ("optin".equals(str)) {
            v.a(this.a, e);
        }
    }
}
