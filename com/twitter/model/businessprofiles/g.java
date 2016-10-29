package com.twitter.model.businessprofiles;

import cgl;
import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class g extends d<e, h> {
    private g() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected void a(q qVar, e eVar) throws IOException {
        qVar.b(eVar.b).b(eVar.c).b(eVar.d).a(eVar.e, cgl.a);
    }

    protected h a() {
        return new h();
    }

    protected void a(p pVar, h hVar, int i) throws IOException, ClassNotFoundException {
        hVar.a(pVar.i()).b(pVar.i()).c(pVar.i()).a((cgl) pVar.a(cgl.a));
    }
}
