package com.twitter.model.media.foundmedia;

import android.util.SparseArray;
import com.twitter.util.object.e;
import com.twitter.util.serialization.a;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class l extends k<FoundMediaProvider> {
    private l() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, FoundMediaProvider foundMediaProvider) throws IOException {
        qVar.b(foundMediaProvider.b);
        qVar.b(foundMediaProvider.c);
        a.a(qVar, foundMediaProvider.d, FoundMediaImageVariant.a);
    }

    protected FoundMediaProvider a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new FoundMediaProvider(pVar.p(), pVar.p(), (SparseArray) e.a(a.a(pVar, FoundMediaImageVariant.a)));
    }
}
