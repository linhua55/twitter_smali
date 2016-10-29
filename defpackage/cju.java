package defpackage;

import com.twitter.util.object.e;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: cju */
class cju extends k<cjs> {
    private cju() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, cjs cjs) throws IOException {
        qVar.b(cjs.b).b(cjs.c).b(cjs.g).b(cjs.h).b(cjs.i).b(cjs.j).b(cjs.k).b(cjs.l).b(cjs.m).b(cjs.d).b(cjs.e).b(cjs.f);
    }

    protected cjs a(p pVar, int i) throws IOException, ClassNotFoundException {
        long longValue = ((Long) e.a(Long.valueOf(pVar.f()))).longValue();
        long f = pVar.f();
        double h = pVar.h();
        double h2 = pVar.h();
        double h3 = pVar.h();
        double h4 = pVar.h();
        double h5 = pVar.h();
        double h6 = pVar.h();
        double h7 = pVar.h();
        long j = 0;
        long j2 = 0;
        long j3 = 0;
        try {
            j = pVar.f();
            j2 = pVar.f();
            j3 = pVar.f();
        } catch (IOException e) {
        }
        return new cjs(longValue, f, h, h2, h3, h4, h5, h6, h7, j, j2, j3);
    }
}
