package defpackage;

import com.twitter.util.collection.MutableMap;
import com.twitter.util.collection.ar;
import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;
import java.util.Map;
import java.util.Set;

/* compiled from: Twttr */
/* renamed from: cjc */
class cjc extends d<ciz, cjb> {
    private cjc() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected void a(q qVar, ciz ciz) {
        throw new UnsupportedOperationException();
    }

    protected cjb a() {
        return new cjb();
    }

    protected void a(p pVar, cjb cjb, int i) throws IOException, ClassNotFoundException {
        int i2;
        int e = pVar.e();
        Map a = MutableMap.a(e);
        for (i2 = 0; i2 < e; i2++) {
            cil cil = (cil) cil.a.a(pVar);
            if (cil != null) {
                a.put(cil.b, cil);
            }
        }
        i2 = pVar.e();
        ar a2 = ar.a(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            a2.c(pVar.p());
        }
        cje cje = (cje) cje.a.a(pVar);
        cjb.a((ciq) new cis().a(a).b(cje.c).a(cje.b).q()).a((Set) a2.q());
    }
}
