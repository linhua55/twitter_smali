package com.twitter.util.serialization;

import java.io.IOException;

/* compiled from: Twttr */
final class an extends ap<Double> {
    an() {
    }

    protected /* synthetic */ Object a_(p pVar) throws IOException, ClassNotFoundException {
        return b(pVar);
    }

    protected void a(q qVar, Double d) throws IOException {
        qVar.b(d.doubleValue());
    }

    protected Double b(p pVar) throws IOException {
        return Double.valueOf(pVar.h());
    }
}
