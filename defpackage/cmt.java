package defpackage;

import cmq;
import com.twitter.model.core.ap;
import com.twitter.model.core.j;
import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: cmt */
public final class cmt extends d<cmq, cms> {
    protected /* synthetic */ f b() {
        return a();
    }

    protected cms a() {
        return new cms();
    }

    protected void a(p pVar, cms cms, int i) throws IOException, ClassNotFoundException {
        cms.a(pVar.f()).b(pVar.f()).c(pVar.f()).a(pVar.i()).b(pVar.i()).a(pVar.d()).a((j) pVar.a(ap.b));
    }

    protected void a(q qVar, cmq cmq) throws IOException {
        qVar.b(cmq.b).b(cmq.c).b(cmq.d).b(cmq.e).b(cmq.f).b(cmq.g).a(cmq.h, ap.b);
    }
}
