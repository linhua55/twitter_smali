package defpackage;

import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: clw */
class clw extends d<clr, clt> {
    private clw() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected clt a() {
        return new clt();
    }

    protected void a(p pVar, clt clt, int i) throws IOException, ClassNotFoundException {
        clt.a(pVar.f()).a(pVar.i()).a((clu) pVar.a(clu.a));
    }

    protected void a(q qVar, clr clr) throws IOException {
        qVar.b(clr.b).b(clr.c).a(clr.d, clu.a);
    }
}
