package com.twitter.model.drafts;

import cgf;
import cni;
import com.twitter.model.core.as;
import com.twitter.model.geo.g;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
class f extends d<d, e> {
    protected /* synthetic */ com.twitter.util.object.f b() {
        return a();
    }

    f() {
    }

    protected void a(q qVar, d dVar) throws IOException {
        qVar.b(dVar.b).b(dVar.c).a(dVar.d, s.a(DraftAttachment.a)).b(dVar.e).a(dVar.g, g.a).a(dVar.b(), s.a(s.f)).b(dVar.a()).a(dVar.h, cni.a).a(dVar.i, as.a).b(dVar.j).a(dVar.k, cgf.a).b(dVar.f);
    }

    protected e a() {
        return new e();
    }

    protected void a(p pVar, e eVar, int i) throws IOException, ClassNotFoundException {
        eVar.a(pVar.f()).a(pVar.i()).a((List) pVar.a(s.a(DraftAttachment.a))).b(pVar.f()).a((g) pVar.a(g.a)).a((List) pVar.a(s.a(s.f)), pVar.f()).a((cni) pVar.a(cni.a)).a((as) pVar.a(as.a)).b(pVar.i()).a((cgf) pVar.a(cgf.a)).a(pVar.d());
    }
}
