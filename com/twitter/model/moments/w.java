package com.twitter.model.moments;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class w extends k<u> {
    private w() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, u uVar) throws IOException {
        qVar.e(uVar.b).e(uVar.c);
    }

    protected u a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new u(pVar.e(), pVar.e());
    }
}
