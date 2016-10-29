package com.twitter.model.businessprofiles;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.n;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
class ai extends k<ag> {
    private final n<List<an>> a;

    private ai() {
        this.a = s.a(an.a);
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, ag agVar) throws IOException {
        qVar.a(agVar.b, i.a).a(agVar.c, this.a).b(agVar.d);
    }

    protected ag a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new ag((i) i.a.c(pVar), (List) pVar.a(this.a), pVar.d());
    }
}
