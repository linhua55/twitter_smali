package com.twitter.util.serialization;

import java.io.IOException;
import java.math.BigDecimal;

/* compiled from: Twttr */
final class v extends ap<BigDecimal> {
    v() {
    }

    protected /* synthetic */ Object a_(p pVar) throws IOException, ClassNotFoundException {
        return b(pVar);
    }

    protected void a(q qVar, BigDecimal bigDecimal) throws IOException {
        qVar.b(bigDecimal.toString());
    }

    protected BigDecimal b(p pVar) throws IOException {
        return new BigDecimal(pVar.p());
    }
}
