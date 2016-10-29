package com.twitter.library.media.model.legacyeditablemedia;

import com.twitter.model.core.ag;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class c extends k<ag> {
    private c() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, ag agVar) throws IOException {
    }

    protected ag a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new ag(pVar.f(), pVar.p(), pVar.p());
    }
}
