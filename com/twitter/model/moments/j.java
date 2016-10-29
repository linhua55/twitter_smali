package com.twitter.model.moments;

import com.twitter.util.math.Size;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class j extends k<g> {
    private j() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, g gVar) throws IOException {
        qVar.e(gVar.b).e(gVar.c).e(gVar.d).e(gVar.e).a(gVar.f, Size.a);
    }

    protected g a(p pVar, int i) throws IOException, ClassNotFoundException {
        return (g) new i().a(pVar.e()).b(pVar.e()).c(pVar.e()).d(pVar.e()).a((Size) Size.a.c(pVar)).q();
    }
}
