package defpackage;

import com.twitter.util.math.Size;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: clb */
class clb extends k<ckz> {
    private clb() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, ckz ckz) throws IOException {
        qVar.b(ckz.b).a(ckz.c, Size.a).b(ckz.d);
    }

    protected ckz a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new ckz(pVar.f(), (Size) pVar.b(Size.a), pVar.p());
    }
}
