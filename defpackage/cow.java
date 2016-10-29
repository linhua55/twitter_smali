package defpackage;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: cow */
class cow extends k<cou> {
    private cow() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, cou cou) throws IOException {
        qVar.b(cou.b).b(cou.c);
    }

    protected cou a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new cou(pVar.i(), pVar.p());
    }
}
