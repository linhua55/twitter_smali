package defpackage;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import con;
import cop;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: com */
class com extends k<cok> {
    private com() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, cok cok) throws IOException {
        s.a(qVar, cok.b, s.i);
        qVar.b(cok.c).a(cok.d, con.a).a(cok.e, cop.a);
    }

    protected cok a(p pVar, int i) throws IOException, ClassNotFoundException {
        cok cok = new cok();
        cok.b = s.a(pVar, s.i);
        cok.c = pVar.f();
        cok.d = (con) pVar.a(con.a);
        cok.e = (cop) pVar.a(cop.a);
        return cok;
    }
}
