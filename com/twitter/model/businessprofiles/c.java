package com.twitter.model.businessprofiles;

import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class c extends d<a, d> {
    private c() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected void a(q qVar, a aVar) throws IOException {
        qVar.b(aVar.b).b(aVar.c).b(aVar.d).b(aVar.e).b(aVar.f).b(aVar.g).b(aVar.h).a(aVar.i, com.twitter.model.geo.d.a);
    }

    protected d a() {
        return new d();
    }

    protected void a(p pVar, d dVar, int i) throws IOException, ClassNotFoundException {
        dVar.a(pVar.i()).b(pVar.i()).c(pVar.i()).d(pVar.i()).e(pVar.i()).f(pVar.i()).g(pVar.i()).a((com.twitter.model.geo.d) pVar.a(com.twitter.model.geo.d.a));
    }
}
