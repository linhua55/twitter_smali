package com.twitter.model.login;

import com.twitter.model.login.OneFactorEligibleFactor.FactorType;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;

/* compiled from: Twttr */
class c extends k<OneFactorEligibleFactor> {
    private c() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, OneFactorEligibleFactor oneFactorEligibleFactor) throws IOException {
        qVar.a(oneFactorEligibleFactor.b, s.a(FactorType.class)).b(oneFactorEligibleFactor.c);
    }

    protected OneFactorEligibleFactor a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new OneFactorEligibleFactor((FactorType) s.a(FactorType.class).c(pVar), pVar.p());
    }
}
