package defpackage;

import com.twitter.model.core.MediaEntity;
import com.twitter.util.object.e;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: cjn */
public class cjn extends k<cjl> {
    protected cjn() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, cjl cjl) throws IOException {
        qVar.b(cjl.b).b(cjl.c).b(cjl.d).b(cjl.e).b(cjl.f).a(cjl.g, MediaEntity.a);
    }

    protected cjl a(p pVar, int i) throws IOException, ClassNotFoundException {
        String b = e.b(pVar.i());
        long f = pVar.f();
        long f2 = pVar.f();
        String i2 = pVar.i();
        return (cjl) new cjm().a(b).a(f).b(f2).c(i2).b(pVar.i()).a((MediaEntity) pVar.a(MediaEntity.a)).q();
    }
}
