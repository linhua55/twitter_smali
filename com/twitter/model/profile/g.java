package com.twitter.model.profile;

import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class g extends d<d, f> {
    private g() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected void a(q qVar, d dVar) throws IOException {
        qVar.b(dVar.c).b(dVar.b).b(dVar.d).b(dVar.e);
    }

    protected f a() {
        return new f();
    }

    protected void a(p pVar, f fVar, int i) throws IOException, ClassNotFoundException {
        fVar.b(pVar.p()).a(pVar.p()).a(pVar.f()).a(pVar.d());
    }
}
