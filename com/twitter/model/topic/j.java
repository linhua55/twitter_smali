package com.twitter.model.topic;

import cok;
import com.twitter.model.core.bg;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import defpackage.cor;
import defpackage.cox;
import java.io.IOException;

/* compiled from: Twttr */
public class j extends k<i> {
    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    public j() {
        super(1);
    }

    protected void a(q qVar, i iVar) throws IOException {
        s.a(qVar, iVar.f, bg.b);
        qVar.a(iVar.c, cok.a).a(iVar.d, cox.a).a(iVar.e, cor.a).e(iVar.g).b(iVar.h).e(iVar.i).b(iVar.j).e(iVar.k);
    }

    protected i a(p pVar, int i) throws IOException, ClassNotFoundException {
        i iVar = new i();
        iVar.f = s.a(pVar, bg.b);
        iVar.c = (cok) pVar.a(cok.a);
        iVar.d = (cox) pVar.a(cox.a);
        iVar.e = (cor) pVar.a(cor.a);
        iVar.g = pVar.e();
        iVar.h = pVar.i();
        iVar.i = pVar.e();
        iVar.j = pVar.d();
        if (i >= 1) {
            iVar.k = pVar.e();
        }
        return iVar;
    }
}
