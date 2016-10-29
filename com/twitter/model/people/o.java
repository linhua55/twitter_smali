package com.twitter.model.people;

import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class o extends d<l, n> {
    private o() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected void a(q qVar, l lVar) throws IOException {
        qVar.a(lVar.c, ModuleTitle.a);
        qVar.a(lVar.d, ModuleTitle.a);
        qVar.a(lVar.e, aj.a);
        qVar.a(lVar.f, h.a);
    }

    protected n a() {
        return new n();
    }

    protected void a(p pVar, n nVar, int i) throws IOException, ClassNotFoundException {
        nVar.a((ModuleTitle) pVar.a(ModuleTitle.a)).b((ModuleTitle) pVar.a(ModuleTitle.a)).a((aj) pVar.a(aj.a)).a((h) pVar.a(h.a));
    }
}
