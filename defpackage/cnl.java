package defpackage;

import com.twitter.util.object.e;
import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: cnl */
class cnl extends d<cni, cnk> {
    private cnl() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected void a(q qVar, cni cni) throws IOException {
        qVar.b(cni.c).b(cni.d).b(cni.e).b(cni.f).b(cni.g).b(cni.h).b(cni.i);
        s.a(qVar, cni.m, s.j, s.j);
        qVar.b(cni.k).b(cni.j);
        s.a(qVar, cni.l, s.j);
    }

    protected cnk a() {
        return new cnk();
    }

    protected void a(p pVar, cnk cnk, int i) throws IOException, ClassNotFoundException {
        cnk.a(pVar.i()).b(pVar.i()).a(pVar.f()).c(pVar.i()).d(pVar.i()).a(pVar.d()).b(pVar.d()).a((Map) e.a(s.a(pVar, s.j, s.j))).b(pVar.f()).c(pVar.d()).a(s.b(pVar, s.j));
    }
}
