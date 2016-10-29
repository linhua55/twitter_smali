package com.twitter.model.core;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class bo extends k<bm> {
    private bo() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, bm bmVar) throws IOException {
        qVar.b(bmVar.b).b(bmVar.c).b(bmVar.d).b(bmVar.e);
    }

    protected bm a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new bm(pVar.g(), pVar.g(), pVar.g(), pVar.g());
    }
}
