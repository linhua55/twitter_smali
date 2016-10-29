package com.twitter.library.commerce.model;

import com.twitter.model.card.property.ImageSpec;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;

/* compiled from: Twttr */
class ak extends k<ai> {
    private ak() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, ai aiVar) throws IOException {
        qVar.b(aiVar.b).a(aiVar.a(), s.a(ImageSpec.a)).b(aiVar.b()).b(aiVar.c()).a(aiVar.d(), s.l).b(aiVar.e()).b(aiVar.f()).b(aiVar.g()).a(aiVar.h(), s.a(s.f)).b(aiVar.j()).b(aiVar.k()).a(aiVar.i(), s.a(ai.a));
    }

    protected ai a(p pVar, int i) throws IOException, ClassNotFoundException {
        ai aiVar = new ai();
        aiVar.a(pVar.i());
        aiVar.a((List) pVar.a(s.a(ImageSpec.a)));
        aiVar.b(pVar.i());
        aiVar.c(pVar.i());
        aiVar.a((BigDecimal) pVar.a(s.l));
        aiVar.d(pVar.i());
        aiVar.e(pVar.i());
        aiVar.f(pVar.i());
        aiVar.b((List) pVar.a(s.a(s.f)));
        aiVar.g(pVar.i());
        aiVar.h(pVar.i());
        aiVar.c((List) pVar.a(s.a(ai.a)));
        return aiVar;
    }
}
