package com.twitter.library.scribe;

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

    protected d a() {
        return new d();
    }

    protected void a(q qVar, a aVar) throws IOException {
        qVar.b(aVar.b);
        qVar.b(aVar.c);
    }

    protected void a(p pVar, d dVar, int i) throws IOException, ClassNotFoundException {
        dVar.a(pVar.f());
        dVar.b(pVar.f());
    }
}
