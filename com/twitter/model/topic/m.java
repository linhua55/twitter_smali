package com.twitter.model.topic;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class m extends k<l> {
    private m() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, l lVar) throws IOException {
        qVar.e(lVar.b).b(lVar.c).b(lVar.d);
    }

    protected l a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new l(pVar.e(), pVar.i(), pVar.d());
    }
}
