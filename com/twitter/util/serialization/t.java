package com.twitter.util.serialization;

import java.io.IOException;

/* compiled from: Twttr */
final class t extends ap<Byte> {
    t() {
    }

    protected /* synthetic */ Object a_(p pVar) throws IOException, ClassNotFoundException {
        return b(pVar);
    }

    protected void a(q qVar, Byte b) throws IOException {
        qVar.b(b.byteValue());
    }

    protected Byte b(p pVar) throws IOException {
        return Byte.valueOf(pVar.c());
    }
}
