package com.twitter.model.search;

import com.twitter.util.collection.n;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
class l extends k<j> {
    private l() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, j jVar) throws IOException {
        qVar.b(jVar.b).e(jVar.c.size());
        for (int[] iArr : jVar.c) {
            qVar.e(iArr[0]).e(iArr[1]);
        }
    }

    protected j a(p pVar, int i) throws IOException, ClassNotFoundException {
        String i2 = pVar.i();
        int e = pVar.e();
        n a = n.a(e);
        for (int i3 = 0; i3 < e; i3++) {
            a.c(new int[]{pVar.e(), pVar.e()});
        }
        return new j(i2, (List) a.q());
    }
}
