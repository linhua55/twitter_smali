package com.twitter.model.eventtimelines;

import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
class c extends d<TvShow, b> {
    c() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected void a(q qVar, TvShow tvShow) throws IOException {
        qVar.b(tvShow.b).b(tvShow.c).b(tvShow.d).b(tvShow.e).a(tvShow.f, s.a(s.i)).a(tvShow.g, s.a(s.i));
    }

    protected b a() {
        return new b();
    }

    protected void a(p pVar, b bVar, int i) throws IOException, ClassNotFoundException {
        bVar.a(pVar.f()).a(pVar.i()).b(pVar.i()).c(pVar.i()).a((List) pVar.a(s.a(s.i))).b((List) pVar.a(s.a(s.i)));
    }
}
