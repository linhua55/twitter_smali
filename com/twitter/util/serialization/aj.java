package com.twitter.util.serialization;

import java.io.IOException;

/* compiled from: Twttr */
final class aj extends ap<Short> {
    aj() {
    }

    protected /* synthetic */ Object a_(p pVar) throws IOException, ClassNotFoundException {
        return b(pVar);
    }

    protected void a(q qVar, Short sh) throws IOException {
        qVar.e(sh.shortValue());
    }

    protected Short b(p pVar) throws IOException {
        return Short.valueOf((short) pVar.e());
    }
}
