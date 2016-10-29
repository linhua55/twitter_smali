package com.twitter.library.provider;

import com.twitter.library.database.dm.ShareHistoryTable.Type;
import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;

/* compiled from: Twttr */
class i extends d<f, h> {
    private i() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected void a(q qVar, f fVar) throws IOException {
        qVar.a(fVar.b, com.twitter.library.database.dm.d.a).a(fVar.d, s.a(Type.class));
    }

    protected h a() {
        return new h();
    }

    protected void a(p pVar, h hVar, int i) throws IOException, ClassNotFoundException {
        hVar.a((com.twitter.library.database.dm.d) com.twitter.library.database.dm.d.a.c(pVar)).a((Type) s.a(Type.class).c(pVar));
    }
}
