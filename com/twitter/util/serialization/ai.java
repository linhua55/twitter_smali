package com.twitter.util.serialization;

import java.io.IOException;

/* compiled from: Twttr */
final class ai extends ap<Integer> {
    ai() {
    }

    protected /* synthetic */ Object a_(p pVar) throws IOException, ClassNotFoundException {
        return b(pVar);
    }

    protected void a(q qVar, Integer num) throws IOException {
        qVar.e(num.intValue());
    }

    protected Integer b(p pVar) throws IOException {
        return Integer.valueOf(pVar.e());
    }
}
