package com.twitter.model.businessprofiles;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class af extends k<ad> {
    private af() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, ad adVar) throws IOException {
        qVar.a(adVar.b, ab.c).a(adVar.c, ab.c);
    }

    protected ad a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new ad((ab) ab.c.c(pVar), (ab) ab.c.c(pVar));
    }
}
