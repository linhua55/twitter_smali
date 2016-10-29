package com.twitter.model.businessprofiles;

import com.twitter.util.object.e;
import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
class at extends d<aq, as> {
    private at() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected void a(q qVar, aq aqVar) throws IOException {
        s.a(qVar, aqVar.b, s.i);
        qVar.b(aqVar.c);
    }

    protected as a() {
        return new as();
    }

    protected void a(p pVar, as asVar, int i) throws IOException, ClassNotFoundException {
        asVar.a((List) e.a(s.a(pVar, s.i))).a(pVar.i());
    }
}
