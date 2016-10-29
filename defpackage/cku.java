package defpackage;

import com.twitter.model.moments.MomentPageDisplayMode;
import com.twitter.util.object.e;
import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: cku */
public class cku extends d<cks, ckt> {
    protected /* synthetic */ f b() {
        return a();
    }

    protected ckt a() {
        return new ckt();
    }

    protected void a(p pVar, ckt ckt, int i) throws IOException, ClassNotFoundException {
        ckt.a((clf) pVar.b(clf.a)).a((MomentPageDisplayMode) pVar.b(s.a(MomentPageDisplayMode.class))).a(e.a(pVar.i()));
    }

    protected void a(q qVar, cks cks) throws IOException {
        qVar.a(cks.b, clf.a).a(cks.c, s.a(MomentPageDisplayMode.class)).b(cks.d);
    }
}
