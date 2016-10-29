package com.twitter.model.timeline;

import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class am extends d<aj, al> {
    private am() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected void a(q qVar, aj ajVar) throws IOException {
        qVar.b(ajVar.b).b(ajVar.c).b(ajVar.e).b(ajVar.d).b(ajVar.f);
    }

    protected al a() {
        return new al();
    }

    protected void a(p pVar, al alVar, int i) throws IOException, ClassNotFoundException {
        alVar.a(pVar.i()).b(pVar.i()).c(pVar.i()).d(pVar.i()).e(pVar.i());
    }
}
