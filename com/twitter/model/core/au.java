package com.twitter.model.core;

import cgl;
import cni;
import com.twitter.util.serialization.OptionalFieldException;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class au extends k<as> {
    private au() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, as asVar) throws IOException {
        qVar.b(asVar.b).b(asVar.c).b(asVar.d).b(asVar.e).b(asVar.f).b(asVar.g).a(asVar.h, bg.b).b(asVar.i).b(asVar.j).a(asVar.k, cgl.a).b(asVar.l).a(asVar.m, cni.a).b(asVar.n).b(asVar.o).b(asVar.p).b(asVar.q).b(asVar.r);
    }

    protected as a(p pVar, int i) throws IOException, ClassNotFoundException {
        as asVar = new as();
        asVar.b = pVar.f();
        asVar.c = pVar.i();
        asVar.d = pVar.i();
        asVar.e = pVar.f();
        asVar.f = pVar.i();
        asVar.g = pVar.i();
        bg bgVar = (bg) bg.b.a(pVar);
        if (bgVar == null) {
            bgVar = bg.a;
        }
        asVar.h = bgVar;
        asVar.i = pVar.f();
        asVar.j = pVar.i();
        asVar.k = (cgl) cgl.a.a(pVar);
        asVar.l = pVar.d();
        asVar.m = (cni) cni.a.a(pVar);
        asVar.n = pVar.d();
        try {
            asVar.o = pVar.d();
        } catch (OptionalFieldException e) {
        }
        try {
            asVar.p = pVar.i();
        } catch (OptionalFieldException e2) {
        }
        try {
            asVar.q = pVar.f();
        } catch (OptionalFieldException e3) {
        }
        try {
            asVar.r = pVar.f();
        } catch (OptionalFieldException e4) {
        }
        return asVar;
    }
}
