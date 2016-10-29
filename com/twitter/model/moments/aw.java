package com.twitter.model.moments;

import com.twitter.model.timeline.l;
import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
class aw extends d<an, ap> {
    private aw() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected ap a() {
        return new ap();
    }

    protected void a(p pVar, ap apVar, int i) throws IOException, ClassNotFoundException {
        apVar.a((List) pVar.b(s.a(as.a))).a((aq) pVar.a(aq.a)).a((l) pVar.a(l.a));
    }

    protected void a(q qVar, an anVar) throws IOException {
        qVar.a(anVar.c, s.a(as.a)).a(anVar.d, aq.a).a(anVar.e, l.a);
    }
}
