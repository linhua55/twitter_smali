package com.twitter.model.core;

import com.twitter.model.core.EscherbirdAnnotation.DomainType;
import com.twitter.model.core.EscherbirdAnnotation.GroupType;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;
import java.util.Map;

/* compiled from: Twttr */
class o extends k<EscherbirdAnnotation> {
    private o() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, EscherbirdAnnotation escherbirdAnnotation) throws IOException {
        qVar.a(escherbirdAnnotation.b, s.a(GroupType.class)).a(escherbirdAnnotation.c, s.a(DomainType.class)).b(escherbirdAnnotation.d).a(escherbirdAnnotation.e, s.a(s.i, s.i));
    }

    protected EscherbirdAnnotation a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new EscherbirdAnnotation((GroupType) s.a(GroupType.class).c(pVar), (DomainType) s.a(DomainType.class).c(pVar), pVar.f(), (Map) pVar.a(s.a(s.i, s.i)));
    }
}
