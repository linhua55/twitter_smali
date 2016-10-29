package com.twitter.model.media.foundmedia;

import com.twitter.util.object.e;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class j extends k<FoundMediaOrigin> {
    private j() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, FoundMediaOrigin foundMediaOrigin) throws IOException {
        qVar.b(foundMediaOrigin.b).b(foundMediaOrigin.c);
    }

    protected FoundMediaOrigin a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new FoundMediaOrigin((String) e.a(pVar.i()), (String) e.a(pVar.i()));
    }
}
