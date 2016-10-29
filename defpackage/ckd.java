package defpackage;

import ckb;
import com.twitter.util.math.Size;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: ckd */
class ckd extends k<ckb> {
    private ckd() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, ckb ckb) throws IOException {
        qVar.a(ckb.b, Size.a);
        qVar.b(ckb.c);
        qVar.b(ckb.d);
    }

    protected ckb a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new ckb((Size) pVar.b(Size.a), pVar.p(), pVar.p());
    }
}
