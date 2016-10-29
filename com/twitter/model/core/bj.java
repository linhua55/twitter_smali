package com.twitter.model.core;

import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class bj extends d<bg, bi> {
    private bj() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected void a(q qVar, bg bgVar) throws IOException {
        cr.A.b(qVar, bgVar.c);
        MediaEntity.b.b(qVar, bgVar.d);
        ap.b.b(qVar, bgVar.e);
        q.b.b(qVar, bgVar.f);
        b.b.b(qVar, bgVar.g);
    }

    protected bi a() {
        return new bi();
    }

    protected void a(p pVar, bi biVar, int i) throws IOException, ClassNotFoundException {
        biVar.a((j) cr.A.a(pVar)).a((z) MediaEntity.b.a(pVar)).b((j) ap.b.a(pVar)).c((j) q.b.a(pVar)).d((j) b.b.a(pVar));
    }
}
