package com.twitter.model.people;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import com.twitter.util.object.f;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import cto;
import java.io.IOException;

/* compiled from: Twttr */
class z extends ac {
    private z() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected y a() {
        return new y();
    }

    protected void a(p pVar, c cVar, int i) throws IOException, ClassNotFoundException {
        super.a(pVar, cVar, i);
        ((y) ObjectUtils.a(cVar)).d(s.a(pVar, aa.i));
    }

    protected void a(q qVar, a aVar) throws IOException {
        super.a(qVar, aVar);
        s.a(qVar, cto.c(e.a(((w) ObjectUtils.a(aVar)).h)), aa.i);
    }
}
