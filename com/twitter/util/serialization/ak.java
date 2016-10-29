package com.twitter.util.serialization;

import java.io.IOException;

/* compiled from: Twttr */
final class ak extends ap<Character> {
    ak() {
    }

    protected /* synthetic */ Object a_(p pVar) throws IOException, ClassNotFoundException {
        return b(pVar);
    }

    protected void a(q qVar, Character ch) throws IOException {
        qVar.e(ch.charValue());
    }

    protected Character b(p pVar) throws IOException {
        return Character.valueOf((char) pVar.e());
    }
}
