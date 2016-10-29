package defpackage;

import cly;
import com.twitter.util.object.e;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: cma */
class cma extends k<cly> {
    private cma() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, cly cly) throws IOException {
        s.a(qVar, cly.b, s.i, s.k);
    }

    protected cly a(p pVar, int i) throws IOException, ClassNotFoundException {
        cly cly = new cly();
        cly.b = new HashMap((Map) e.a(s.a(pVar, s.i, s.k)));
        return cly;
    }
}
