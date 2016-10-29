package com.twitter.model.businessprofiles;

import com.twitter.util.object.e;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
public class am extends k<al> {
    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, al alVar) throws IOException {
        qVar.b(alVar.b).b(alVar.c);
    }

    protected al a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new al(e.b(pVar.i()), e.b(pVar.i()));
    }
}
