package defpackage;

import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: clo */
class clo extends d<cll, cln> {
    private clo() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected void a(q qVar, cll cll) throws IOException {
        qVar.b(cll.b).b(cll.c).a(cll.d, s.a(clp.a)).a(cll.e, s.a(s.i)).b(cll.f);
    }

    protected cln a() {
        return new cln();
    }

    protected void a(p pVar, cln cln, int i) throws IOException, ClassNotFoundException {
        cln.a(pVar.i()).a(pVar.f()).b((List) pVar.a(s.a(clp.a))).a((List) pVar.a(s.a(s.i))).b(pVar.i());
    }
}
