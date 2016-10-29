package defpackage;

import cmu;
import cmy;
import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: cnb */
final class cnb extends d<cmy, cna> {
    private cnb() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected cna a() {
        return new cna();
    }

    protected void a(p pVar, cna cna, int i) throws IOException, ClassNotFoundException {
        cna.a((cmu) pVar.a(cmu.a)).b((cmu) pVar.a(cmu.a)).c((cmu) pVar.a(cmu.a)).a((List) pVar.a(cmj.b));
    }

    protected void a(q qVar, cmy cmy) throws IOException {
        qVar.a(cmy.b, cmu.a).a(cmy.c, cmu.a).a(cmy.d, cmu.a).a(cmy.e, cmj.b);
    }
}
