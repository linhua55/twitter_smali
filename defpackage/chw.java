package defpackage;

import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: chw */
class chw extends d<cht, chv> {
    private chw() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected chv a() {
        return new chv();
    }

    protected void a(p pVar, chv chv, int i) throws IOException, ClassNotFoundException {
        chv.a(pVar.i()).a(pVar.d());
    }

    protected void a(q qVar, cht cht) throws IOException {
        qVar.b(cht.b).b(cht.c);
    }
}
