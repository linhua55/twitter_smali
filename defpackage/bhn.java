package defpackage;

import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: bhn */
class bhn extends d<bhl, bhm> {
    private bhn() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected void a(q qVar, bhl bhl) throws IOException {
        qVar.b(bhl.b);
    }

    protected void a(p pVar, bhm bhm, int i) throws IOException, ClassNotFoundException {
        bhm.a(pVar.i());
    }

    protected bhm a() {
        return new bhm();
    }
}
