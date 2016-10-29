package defpackage;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: cio */
class cio extends k<cin> {
    private cio() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, cin cin) throws IOException {
        qVar.b(cin.a()).e(cin.b()).b(cin.c());
    }

    protected cin a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new cin(pVar.p(), pVar.e(), pVar.p());
    }
}
