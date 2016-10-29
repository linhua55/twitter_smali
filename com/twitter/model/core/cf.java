package com.twitter.model.core;

import com.twitter.util.object.e;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
class cf extends k<cd> {
    private cf() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, cd cdVar) throws IOException {
        s.a(qVar, cd.c(cdVar), ca.a);
    }

    protected cd a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new cd((List) e.a(s.a(pVar, ca.a)));
    }
}
