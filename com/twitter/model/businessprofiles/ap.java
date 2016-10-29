package com.twitter.model.businessprofiles;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;
import java.util.Date;

/* compiled from: Twttr */
class ap extends k<an> {
    private ap() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, an anVar) throws IOException {
        qVar.a(anVar.b, s.q).a(anVar.c, s.q);
    }

    protected an a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new an((Date) pVar.b(s.q), (Date) pVar.b(s.q));
    }
}
