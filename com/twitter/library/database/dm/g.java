package com.twitter.library.database.dm;

import com.twitter.model.core.TwitterUser;
import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
class g extends d<d, f> {
    private g() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected void a(q qVar, d dVar) throws IOException {
        qVar.b(dVar.b).b(dVar.c).b(dVar.d).b(dVar.e).b(dVar.f).b(dVar.g).b(dVar.h).b(dVar.i).a(dVar.j, s.a(TwitterUser.a)).b(dVar.k).b(dVar.l);
    }

    protected f a() {
        return new f();
    }

    protected void a(p pVar, f fVar, int i) throws IOException, ClassNotFoundException {
        fVar.a(pVar.i()).a(pVar.f()).b(pVar.i()).c(pVar.i()).d(pVar.i()).a(pVar.d()).b(pVar.f()).b(pVar.d()).a((List) pVar.a(s.a(TwitterUser.a))).c(pVar.d()).d(pVar.d());
    }
}
