package com.twitter.util.serialization;

import java.io.IOException;

/* compiled from: Twttr */
final class af extends k<T> {
    final /* synthetic */ Class a;

    af(Class cls) {
        this.a = cls;
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, T t) throws IOException {
        s.a(qVar, (Enum) t);
    }

    protected T a(p pVar, int i) throws IOException, ClassNotFoundException {
        return s.b(pVar, this.a);
    }
}
