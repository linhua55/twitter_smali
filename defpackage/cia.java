package defpackage;

import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: cia */
class cia extends d<chx, chz> {
    private cia() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected void a(q qVar, chx chx) throws IOException {
        qVar.b(chx.b);
        qVar.a(chx.c, s.k);
        s.a(qVar, chx.d, s.k);
        qVar.b(chx.e);
    }

    protected chz a() {
        return new chz();
    }

    protected void a(p pVar, chz chz, int i) throws IOException, ClassNotFoundException {
        String i2 = pVar.i();
        Object a = pVar.a(s.k);
        List a2 = s.a(pVar, s.k);
        chz.a(i2).a(a).a(a2).a(pVar.d());
    }
}
