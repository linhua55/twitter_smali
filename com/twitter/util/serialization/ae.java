package com.twitter.util.serialization;

import java.io.IOException;

/* compiled from: Twttr */
final class ae extends ap<Boolean> {
    ae() {
    }

    protected /* synthetic */ Object a_(p pVar) throws IOException, ClassNotFoundException {
        return b(pVar);
    }

    protected void a(q qVar, Boolean bool) throws IOException {
        qVar.b(bool.booleanValue());
    }

    protected Boolean b(p pVar) throws IOException {
        return Boolean.valueOf(pVar.d());
    }
}
