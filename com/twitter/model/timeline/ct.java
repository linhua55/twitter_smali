package com.twitter.model.timeline;

import com.twitter.model.core.TwitterSocialProof;
import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
class ct extends d<cr, cs> {
    private ct() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected void a(q qVar, cr crVar) throws IOException {
        qVar.e(crVar.b).b(crVar.c).b(crVar.d).a(crVar.e, aj.a).a(crVar.f, s.a(s.i, TwitterSocialProof.a)).a(crVar.g, s.a(s.i, aj.a)).a(crVar.h, s.a(s.f)).a(crVar.i, s.a(s.f));
    }

    protected cs a() {
        return new cs();
    }

    protected void a(p pVar, cs csVar, int i) throws IOException, ClassNotFoundException {
        csVar.a(pVar.e()).a(pVar.i()).b(pVar.i()).a((aj) pVar.a(aj.a)).a((Map) pVar.a(s.a(s.i, TwitterSocialProof.a))).b((Map) pVar.a(s.a(s.i, aj.a))).a((List) pVar.a(s.a(s.f)), (List) pVar.a(s.a(s.f)));
    }
}
