package defpackage;

import bgv;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.n;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: bgw */
public abstract class bgw<D, E extends bgv, B extends bgx<E, B, D>> extends d<E, B> {
    private final n<D> a;

    protected bgw(n<D> nVar) {
        this.a = nVar;
    }

    protected void a(p pVar, B b, int i) throws IOException, ClassNotFoundException {
        ((bgx) ((bgx) ((bgx) b.b(pVar.f())).b(pVar.i())).c(pVar.f())).a(pVar.f()).a(pVar.d()).a(pVar.a(this.a));
    }

    protected void a(q qVar, E e) throws IOException {
        qVar.b(e.g).b(e.h).b(e.i).b(e.d()).b(e.b).a(ObjectUtils.a(e.c()), this.a);
    }
}
