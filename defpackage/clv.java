package defpackage;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: clv */
final class clv extends k<clu> {
    clv() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, clu clu) throws IOException {
        qVar.b(clu.b);
    }

    protected clu a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new clu(pVar.i());
    }
}
