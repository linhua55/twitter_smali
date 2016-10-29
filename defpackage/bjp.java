package defpackage;

import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: bjp */
class bjp extends d<bjn, bjo> {
    private bjp() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected void a(q qVar, bjn bjn) throws IOException {
        qVar.b(bjn.c);
        s.a(qVar, bjn.d, s.i);
    }

    protected bjo a() {
        return new bjo();
    }

    protected void a(p pVar, bjo bjo, int i) throws IOException, ClassNotFoundException {
        bjo.a(pVar.i()).b(s.a(pVar, s.i));
    }
}
