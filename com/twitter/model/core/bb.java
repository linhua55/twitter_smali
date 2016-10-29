package com.twitter.model.core;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class bb extends k<az> {
    private bb() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, az azVar) throws IOException {
        qVar.b(azVar.b).b(azVar.c).b(azVar.d);
    }

    protected az a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new az(pVar.i(), pVar.f(), pVar.i());
    }
}
