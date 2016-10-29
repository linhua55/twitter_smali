package com.twitter.model.core;

import com.twitter.model.login.OneFactorEligibleFactor;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
class cc extends k<ca> {
    private cc() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, ca caVar) throws IOException {
        qVar.e(caVar.b).b(caVar.c).b(caVar.d).b(caVar.e).e(caVar.f).b(caVar.g).a(caVar.h, s.a(OneFactorEligibleFactor.a));
    }

    protected ca a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new ca(pVar.e(), pVar.p(), pVar.f(), pVar.p(), pVar.e(), pVar.i(), (List) pVar.a(s.a(OneFactorEligibleFactor.a)));
    }
}
