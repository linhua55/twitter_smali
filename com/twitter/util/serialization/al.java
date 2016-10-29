package com.twitter.util.serialization;

import java.io.IOException;

/* compiled from: Twttr */
final class al extends ap<Long> {
    al() {
    }

    protected /* synthetic */ Object a_(p pVar) throws IOException, ClassNotFoundException {
        return b(pVar);
    }

    protected void a(q qVar, Long l) throws IOException {
        qVar.b(l.longValue());
    }

    protected Long b(p pVar) throws IOException {
        return Long.valueOf(pVar.f());
    }
}
