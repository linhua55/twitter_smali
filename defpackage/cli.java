package defpackage;

import com.twitter.model.moments.MomentPageType;
import com.twitter.model.moments.af;
import com.twitter.model.moments.ax;
import com.twitter.model.moments.u;
import com.twitter.model.moments.x;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: cli */
class cli extends k<clf> {
    private cli() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, clf clf) throws IOException {
        qVar.b(clf.b).a(clf.c, s.a(MomentPageType.class)).a(clf.d, x.a).a(clf.e, com.twitter.model.moments.k.a).a(clf.f, ax.a).a(clf.g, ckz.a).a(clf.h, u.a).b(clf.j).a(clf.i, af.a);
    }

    protected clf a(p pVar, int i) throws IOException, ClassNotFoundException {
        return (clf) new clh().a(pVar.p()).a((MomentPageType) pVar.b(s.a(MomentPageType.class))).a((x) pVar.a(x.a)).a((com.twitter.model.moments.k) pVar.b(com.twitter.model.moments.k.a)).a((ax) pVar.a(ax.a)).a((ckz) pVar.a(ckz.a)).a((u) pVar.a(u.a)).a(pVar.f()).a((af) pVar.a(af.a)).q();
    }
}
