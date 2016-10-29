package com.twitter.util.serialization;

import com.twitter.util.object.e;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
final class ab extends k<List<T>> {
    final /* synthetic */ n a;

    ab(n nVar) {
        this.a = nVar;
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, List<T> list) throws IOException {
        s.a(qVar, (List) list, this.a);
    }

    protected List<T> a(p pVar, int i) throws IOException, ClassNotFoundException {
        return (List) e.a(s.a(pVar, this.a));
    }
}
