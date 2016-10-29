package defpackage;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;

/* compiled from: Twttr */
/* renamed from: coz */
class coz extends k<cox> {
    private coz() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, cox cox) throws IOException {
        qVar.b(cox.b);
        s.a(qVar, cox.c, s.f);
    }

    protected cox a(p pVar, int i) throws IOException, ClassNotFoundException {
        cox cox = new cox();
        cox.b = pVar.i();
        Collection a = s.a(pVar, s.f);
        cox.c = a == null ? null : new ArrayList(a);
        return cox;
    }
}
