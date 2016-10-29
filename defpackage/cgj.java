package defpackage;

import cgh;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: cgj */
class cgj extends k<cgh> {
    private cgj() {
    }

    public /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    public void a(q qVar, cgh cgh) throws IOException {
        cgh.b.b(qVar, cgh.c);
        qVar.b(cgh.d);
    }

    public cgh a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new cgh(cgh.b.a(pVar), pVar.i());
    }
}
