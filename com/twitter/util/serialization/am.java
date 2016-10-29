package com.twitter.util.serialization;

import java.io.IOException;

/* compiled from: Twttr */
final class am extends ap<Float> {
    am() {
    }

    protected /* synthetic */ Object a_(p pVar) throws IOException, ClassNotFoundException {
        return b(pVar);
    }

    protected void a(q qVar, Float f) throws IOException {
        qVar.b(f.floatValue());
    }

    protected Float b(p pVar) throws IOException {
        return Float.valueOf(pVar.g());
    }
}
