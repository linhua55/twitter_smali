package com.twitter.model.core;

import com.twitter.util.object.f;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
public class ar extends g<ap, aq> {
    protected /* synthetic */ f b() {
        return a();
    }

    protected ar() {
        super(2);
    }

    protected void a(q qVar, ap apVar) throws IOException {
        super.a(qVar, (e) apVar);
        qVar.b(apVar.c).b(apVar.i).b(apVar.j);
    }

    protected aq a() {
        return new aq();
    }

    protected void a(p pVar, aq aqVar, int i) throws IOException, ClassNotFoundException {
        super.a(pVar, (f) aqVar, i);
        aqVar.a(pVar.f()).a(pVar.p()).b(pVar.i());
    }
}
