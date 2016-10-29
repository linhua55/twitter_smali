package defpackage;

import ckb;
import ckl;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: ckn */
class ckn extends k<ckl> {
    private ckn() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, ckl ckl) throws IOException {
        qVar.b(ckl.b).a(ckl.c, ckb.a).a(ckl.d, ckb.a).a(ckl.e, ckb.a).a(ckl.f, ckb.a).a(ckl.g, ckb.a);
    }

    protected ckl a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new ckl((ckb) pVar.b(ckb.a), (ckb) pVar.a(ckb.a), (ckb) pVar.a(ckb.a), (ckb) pVar.a(ckb.a), (ckb) pVar.a(ckb.a), pVar.g());
    }
}
