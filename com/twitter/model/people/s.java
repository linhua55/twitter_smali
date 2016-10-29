package com.twitter.model.people;

import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class s extends d<g, r> {
    private s() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected void a(q qVar, g gVar) throws IOException {
        qVar.b(gVar.a()).b(gVar.b()).a(gVar.c(), t.a);
    }

    protected r a() {
        return new r();
    }

    protected void a(p pVar, r rVar, int i) throws IOException, ClassNotFoundException {
        rVar.b(pVar.p()).a(pVar.p()).a((t) pVar.b(t.a));
    }
}
