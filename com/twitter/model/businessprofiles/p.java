package com.twitter.model.businessprofiles;

import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;

/* compiled from: Twttr */
class p extends d<m, o> {
    private p() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected void a(q qVar, m mVar) throws IOException {
        qVar.b(mVar.b).a(mVar.c, x.a).a(mVar.d, i.a).a(mVar.e, s.a(KeyEngagementType.class)).a(mVar.f, e.a).a(mVar.g, t.a).a(mVar.h, q.a);
    }

    protected o a() {
        return new o();
    }

    protected void a(com.twitter.util.serialization.p pVar, o oVar, int i) throws IOException, ClassNotFoundException {
        oVar.a(pVar.f()).a((x) pVar.a(x.a)).a((i) pVar.a(i.a)).a((KeyEngagementType) s.a(KeyEngagementType.class).c(pVar)).a((e) pVar.a(e.a)).a((t) pVar.a(t.a)).a((q) pVar.a(q.a));
    }
}
