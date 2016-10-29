package com.twitter.model.people;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class al extends k<aj> {
    private al() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, aj ajVar) throws IOException {
        qVar.b(ajVar.c).b(ajVar.d);
    }

    protected aj a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new aj(pVar.p(), pVar.p());
    }
}
