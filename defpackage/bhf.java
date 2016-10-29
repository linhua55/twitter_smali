package defpackage;

import com.twitter.model.core.bg;
import com.twitter.model.dms.c;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: bhf */
abstract class bhf<E extends bhe, B extends bhg<B, E>> extends d<E, B> {
    bhf() {
    }

    protected void a(q qVar, E e) throws IOException {
        qVar.b(e.a);
        qVar.b(e.b);
        qVar.a(e.c, bg.b);
        qVar.a(e.d, c.a);
        qVar.b(e.e);
        qVar.b(e.f);
        qVar.b(e.g);
        qVar.e(e.h);
    }

    protected void a(p pVar, B b, int i) throws IOException, ClassNotFoundException {
        b.a(pVar.f()).b(pVar.i()).a((bg) pVar.a(bg.b)).a((c) pVar.a(c.a)).a(pVar.i()).a(pVar.d()).b(pVar.d()).a(pVar.e());
    }
}
