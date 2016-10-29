package com.twitter.util.serialization;

import com.twitter.util.object.e;
import java.io.IOException;
import java.util.Set;

/* compiled from: Twttr */
final class ac extends k<Set<T>> {
    final /* synthetic */ n a;

    ac(n nVar) {
        this.a = nVar;
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, Set<T> set) throws IOException {
        s.a(qVar, (Set) set, this.a);
    }

    protected Set<T> a(p pVar, int i) throws IOException, ClassNotFoundException {
        return (Set) e.a(s.b(pVar, this.a));
    }
}
