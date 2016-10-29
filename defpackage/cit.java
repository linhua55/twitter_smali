package defpackage;

import com.twitter.util.collection.r;
import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.n;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
/* renamed from: cit */
class cit extends d<ciq, cis> {
    private cit() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected void a(q qVar, ciq ciq) throws IOException {
        qVar.e(ciq.c.size());
        for (Entry entry : ciq.c.entrySet()) {
            Object obj = (cil) entry.getValue();
            n nVar = cil.a;
            if (obj == null) {
                obj = new cil((String) entry.getKey(), null);
            }
            nVar.b(qVar, obj);
        }
        qVar.b(ciq.d);
        qVar.b(ciq.e);
    }

    protected cis a() {
        return new cis();
    }

    protected void a(p pVar, cis cis, int i) throws IOException, ClassNotFoundException {
        int e = pVar.e();
        r a = r.a(e);
        for (int i2 = 0; i2 < e; i2++) {
            cil cil = (cil) cil.a.a(pVar);
            if (cil != null) {
                a.b(cil.b, cil);
            }
        }
        cis.a((Map) a.q()).a(pVar.i()).b(pVar.i());
    }
}
