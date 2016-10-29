package com.twitter.model.core;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;

/* compiled from: Twttr */
class al extends k<aj> {
    private al() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, aj ajVar) throws IOException {
        qVar.b(ajVar.b).b(ajVar.c);
        s.a(qVar, ajVar.d, am.a);
    }

    protected aj a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new aj(pVar.g(), pVar.g(), s.a(pVar, am.a));
    }
}
