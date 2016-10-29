package com.twitter.model.core;

import com.twitter.util.object.f;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
public class s extends g<q, r> {
    protected /* synthetic */ f b() {
        return a();
    }

    public s() {
        super(2);
    }

    protected void a(q qVar, q qVar2) throws IOException {
        super.a(qVar, (e) qVar2);
        qVar.b(qVar2.c).e(qVar2.i).e(qVar2.j);
    }

    protected r a() {
        return new r();
    }

    protected void a(p pVar, r rVar, int i) throws IOException, ClassNotFoundException {
        super.a(pVar, (f) rVar, i);
        rVar.a(pVar.p()).d(pVar.e()).e(pVar.e());
    }
}
