package com.twitter.model.timeline;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;

/* compiled from: Twttr */
class bm extends k<bk> {
    private bm() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, bk bkVar) throws IOException {
        qVar.a(bkVar.b, s.a(NotificationType.class)).b(bkVar.c).b(bkVar.d).b(bkVar.e);
    }

    protected bk a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new bk((NotificationType) pVar.b(s.a(NotificationType.class)), pVar.p(), pVar.f(), pVar.f());
    }
}
