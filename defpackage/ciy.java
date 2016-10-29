package defpackage;

import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: ciy */
class ciy extends d<civ, cix> {
    private ciy() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected void a(q qVar, civ civ) throws IOException {
        ciq.a.b(qVar, civ.c);
        qVar.b(civ.d);
        s.a(qVar, civ.e, s.j, cie.a);
        s.a(qVar, civ.f, s.j);
        s.a(qVar, civ.g, s.j, chx.a);
    }

    protected cix a() {
        return new cix();
    }

    protected void a(p pVar, cix cix, int i) throws IOException, ClassNotFoundException {
        cix.a(new cis((ciq) ciq.a.a(pVar))).a(pVar.i()).a(s.a(pVar, s.j, cie.a)).a(s.b(pVar, s.j)).b(s.a(pVar, s.j, chx.a));
    }
}
