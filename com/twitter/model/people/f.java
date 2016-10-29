package com.twitter.model.people;

import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cp;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class f extends k<am> {
    private f() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, am amVar) throws IOException {
        qVar.b(amVar.a.bf_()).b(amVar.b).b(amVar.c);
    }

    protected am a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new am((TwitterUser) new cp().a(pVar.f()).q(), pVar.i(), pVar.i());
    }
}
