package com.twitter.android.interestpicker;

import com.twitter.util.object.e;
import com.twitter.util.object.f;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
public class az extends j<aw, ay> {
    protected az() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected void a(q qVar, aw awVar) throws IOException {
        super.a(qVar, (h) awVar);
        qVar.e(awVar.f).b(awVar.g).b(awVar.h).b(awVar.j).b(awVar.i);
    }

    protected void a(p pVar, ay ayVar, int i) throws IOException, ClassNotFoundException {
        super.a(pVar, (i) ayVar, i);
        int e = pVar.e();
        boolean d = pVar.d();
        boolean d2 = pVar.d();
        String str = (String) e.a(pVar.i());
        ayVar.a(e).a(d).b(d2).b(str).c(pVar.d());
    }

    protected ay a() {
        return new ay();
    }
}
