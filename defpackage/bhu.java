package defpackage;

import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: bhu */
class bhu extends d<bhs, bht> {
    private bhu() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected void a(q qVar, bhs bhs) throws IOException {
        qVar.b(bhs.b);
        qVar.e(bhs.c);
        qVar.b(bhs.d);
    }

    protected void a(p pVar, bht bht, int i) throws IOException, ClassNotFoundException {
        bht.a(pVar.i()).a(Integer.valueOf(pVar.e())).b(pVar.i());
    }

    protected bht a() {
        return new bht();
    }
}
