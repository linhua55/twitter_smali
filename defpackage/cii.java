package defpackage;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;
import java.util.Date;

/* compiled from: Twttr */
/* renamed from: cii */
class cii extends k<cie> {
    private cii() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, cie cie) throws IOException {
        qVar.b(cie.b);
        qVar.e(cie.c);
        s.a(qVar, cie.d, cig.a);
        qVar.b(cie.e.getTime());
        qVar.b(cie.f.getTime());
    }

    protected cie a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new cie(pVar.i(), pVar.e(), s.a(pVar, cig.a), new Date(pVar.f()), new Date(pVar.f()));
    }
}
