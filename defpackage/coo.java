package defpackage;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: coo */
class coo extends k<con> {
    private coo() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, con con) throws IOException {
        qVar.b(con.b).e(con.c);
    }

    protected con a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new con(pVar.i(), pVar.e());
    }
}
