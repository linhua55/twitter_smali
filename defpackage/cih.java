package defpackage;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: cih */
class cih extends k<cig> {
    private cih() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, cig cig) throws IOException {
        qVar.b(cig.b).e(cig.c);
    }

    protected cig a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new cig(pVar.i(), pVar.e());
    }
}
