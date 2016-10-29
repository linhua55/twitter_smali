package defpackage;

import cjw;
import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: cki */
class cki extends d<ckf, ckh> {
    private cki() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected ckh a() {
        return new ckh();
    }

    protected void a(p pVar, ckh ckh, int i) throws IOException, ClassNotFoundException {
        ckh.a((cjw) cjw.a.c(pVar)).a((ckj) ckj.a.a(pVar));
    }

    protected void a(q qVar, ckf ckf) throws IOException {
        qVar.a(ckf.b, cjw.a).a(ckf.c, ckj.a);
    }
}
