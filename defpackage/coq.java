package defpackage;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: coq */
class coq extends k<cop> {
    private coq() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, cop cop) throws IOException {
        qVar.e(cop.b);
        qVar.b(cop.c);
    }

    protected cop a(p pVar, int i) throws IOException, ClassNotFoundException {
        cop cop = new cop();
        cop.b = pVar.e();
        cop.c = pVar.f();
        return cop;
    }
}
