package defpackage;

import cgh;
import cgl;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.object.e;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.n;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: cgo */
class cgo extends k<cgl> {
    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    cgo() {
        super(1);
    }

    protected void a(q qVar, cgl cgl) throws IOException {
        qVar.b(cgl.b(cgl)).b(cgl.a(cgl));
        s.a(qVar, cgl.j(), s.i, cgh.a);
        s.a(qVar, cgl.c(cgl), s.i, TwitterUser.a);
        qVar.b(cgl.e(cgl)).b(cgl.d(cgl));
    }

    protected cgl a(p pVar, int i) throws IOException, ClassNotFoundException {
        cgn cgn = new cgn();
        cgn.a(pVar.i());
        cgn.b(pVar.i());
        if (i < 1) {
            pVar.i();
        }
        n nVar = i < 1 ? s.j : s.i;
        Map a = s.a(pVar, nVar, cgh.a);
        if (a != null) {
            cgn.a(a);
        }
        cgn.b((Map) e.a(s.a(pVar, nVar, TwitterUser.a)));
        if (i < 1) {
            pVar.i();
            pVar.i();
            s.a(pVar, nVar, cgh.a);
            s.a(pVar, nVar, TwitterUser.a);
        }
        cgn.c(pVar.i());
        cgn.d(pVar.i());
        if (i < 1) {
            pVar.i();
            pVar.i();
        }
        return cgn.d();
    }
}
