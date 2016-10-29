package com.twitter.util.serialization;

import com.twitter.util.object.e;
import java.io.IOException;

/* compiled from: Twttr */
final class ah extends k<T> {
    final /* synthetic */ n a;

    ah(n nVar) {
        this.a = nVar;
    }

    protected void a(q qVar, T t) throws IOException {
        this.a.b(qVar, t);
    }

    protected T b(p pVar, int i) throws IOException, ClassNotFoundException {
        return e.a(this.a.a(pVar));
    }
}
