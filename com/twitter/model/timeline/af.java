package com.twitter.model.timeline;

import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class af extends d<ac, ae> {
    protected /* synthetic */ f b() {
        return a();
    }

    private af() {
        super(1);
    }

    protected void a(q qVar, ac acVar) throws IOException {
        qVar.b(acVar.b).b(acVar.c);
    }

    protected ae a() {
        return new ae();
    }

    protected void a(p pVar, ae aeVar, int i) throws IOException, ClassNotFoundException {
        aeVar.a(pVar.i()).b(pVar.i());
    }
}
