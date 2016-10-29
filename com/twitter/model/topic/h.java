package com.twitter.model.topic;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.n;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
public class h extends k<g> {
    private final n<List<a>> a;

    protected h() {
        this.a = s.a(a.a);
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, g gVar) throws IOException {
        qVar.b(gVar.c).b(gVar.d).b(gVar.e).b(gVar.f).b(gVar.g).a(gVar.h, this.a).a(gVar.i, this.a).b(gVar.j);
    }

    protected g a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new g(pVar.i(), pVar.i(), pVar.i(), pVar.i(), pVar.i(), (List) pVar.a(this.a), (List) pVar.a(this.a), pVar.i());
    }
}
