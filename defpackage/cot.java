package defpackage;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: cot */
class cot extends k<cor> {
    private cot() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, cor cor) throws IOException {
        qVar.b(cor.b).b(cor.c);
    }

    protected cor a(p pVar, int i) throws IOException, ClassNotFoundException {
        cor cor = new cor();
        cor.b = pVar.i();
        cor.c = pVar.d();
        return cor;
    }
}
