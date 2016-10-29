package com.twitter.library.platform.notifications;

import cmf;
import cmq;
import cmy;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
public final class ae extends k<ad> {
    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, ad adVar) throws IOException {
        qVar.e(adVar.b).e(adVar.d).e(adVar.c).b(adVar.e).b(adVar.f).b(adVar.g).b(adVar.h).b(adVar.i).b(adVar.j).b(adVar.k).b(adVar.l).b(adVar.m).b(adVar.n).b(adVar.o).b(adVar.p).e(adVar.r).b(adVar.z).b(adVar.q).a(adVar.w, cmq.a).a(adVar.x, cmy.a).a(adVar.y, cmf.b).a(adVar.v, i.b).e(adVar.s).b(adVar.t);
    }

    protected ad a(p pVar, int i) throws IOException, ClassNotFoundException {
        ad adVar = new ad();
        adVar.b = pVar.e();
        adVar.d = pVar.e();
        adVar.c = pVar.e();
        adVar.e = pVar.i();
        adVar.f = pVar.i();
        adVar.g = pVar.i();
        adVar.h = pVar.f();
        adVar.i = pVar.f();
        adVar.j = pVar.i();
        adVar.k = pVar.i();
        adVar.l = pVar.i();
        adVar.m = pVar.i();
        adVar.n = pVar.i();
        adVar.o = pVar.d();
        adVar.p = pVar.d();
        adVar.r = pVar.e();
        adVar.z = pVar.i();
        adVar.q = pVar.i();
        adVar.w = (cmq) pVar.a(cmq.a);
        adVar.x = (cmy) pVar.a(cmy.a);
        adVar.y = (List) pVar.a(cmf.b);
        adVar.v = (List) pVar.a(i.b);
        adVar.s = pVar.e();
        adVar.t = pVar.i();
        return adVar;
    }
}
