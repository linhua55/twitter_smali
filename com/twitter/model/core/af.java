package com.twitter.model.core;

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
        qVar.b(adVar.b);
    }

    protected ad a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new ad(pVar.d());
    }
}
