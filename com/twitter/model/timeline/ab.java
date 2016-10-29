package com.twitter.model.timeline;

import com.twitter.util.object.e;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
public class ab extends k<aa> {
    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, aa aaVar) throws IOException {
        qVar.b(aaVar.b).e(aaVar.c);
    }

    protected aa a(p pVar, int i) throws IOException, ClassNotFoundException {
        String i2 = pVar.i();
        return new aa((String) e.a(i2), pVar.e());
    }
}
