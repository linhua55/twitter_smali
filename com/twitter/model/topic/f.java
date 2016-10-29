package com.twitter.model.topic;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
public class f extends k<e> {
    protected f() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, e eVar) throws IOException {
        qVar.e(eVar.c).e(eVar.d).b(eVar.e).e(eVar.f).b(eVar.g);
    }

    protected e a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new e(pVar.e(), pVar.e(), pVar.d(), pVar.e(), pVar.f());
    }
}
