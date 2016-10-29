package com.twitter.model.people;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;

/* compiled from: Twttr */
class j extends k<h> {
    private j() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, h hVar) throws IOException {
        s.a(qVar, hVar.c, new k());
    }

    protected h a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new h(s.a(pVar, new k()));
    }
}
