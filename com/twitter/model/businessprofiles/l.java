package com.twitter.model.businessprofiles;

import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.n;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;
import java.util.List;
import java.util.TimeZone;

/* compiled from: Twttr */
class l extends d<i, k> {
    private final n<List<ad>> a;

    private l() {
        this.a = s.a(ad.a);
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected void a(q qVar, i iVar) throws IOException {
        qVar.b(iVar.c.getID()).a(iVar.d, this.a).a(iVar.e, this.a).a(iVar.f, this.a).a(iVar.g, this.a).a(iVar.h, this.a).a(iVar.i, this.a).a(iVar.j, this.a);
    }

    protected k a() {
        return new k();
    }

    protected void a(p pVar, k kVar, int i) throws IOException, ClassNotFoundException {
        kVar.a(TimeZone.getTimeZone(pVar.i())).a((List) pVar.a(this.a)).b((List) pVar.a(this.a)).c((List) pVar.a(this.a)).d((List) pVar.a(this.a)).e((List) pVar.a(this.a)).f((List) pVar.a(this.a)).g((List) pVar.a(this.a));
    }
}
