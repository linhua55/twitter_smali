package defpackage;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: cfw */
class cfw extends k<cfu> {
    private cfw() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, cfu cfu) throws IOException {
        qVar.e(cfu.b);
        qVar.e(cfu.c);
    }

    protected cfu a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new cfu(Integer.valueOf(pVar.e()), Integer.valueOf(pVar.e()));
    }
}
