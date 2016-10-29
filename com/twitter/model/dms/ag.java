package com.twitter.model.dms;

import com.twitter.model.core.as;
import com.twitter.util.object.f;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
public class ag extends e<ae, af> {
    protected /* synthetic */ f b() {
        return a();
    }

    public void a(q qVar, ae aeVar) throws IOException {
        super.a(qVar, (c) aeVar);
        qVar.b(aeVar.d).a(aeVar.e, as.a);
    }

    protected af a() {
        return new af();
    }

    protected void a(p pVar, af afVar, int i) throws IOException, ClassNotFoundException {
        super.a(pVar, (d) afVar, i);
        afVar.a(pVar.f()).a((as) pVar.a(as.a));
    }
}
