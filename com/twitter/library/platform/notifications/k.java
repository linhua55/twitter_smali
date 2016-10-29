package com.twitter.library.platform.notifications;

import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
public final class k extends com.twitter.util.serialization.k<i> {
    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, i iVar) throws IOException {
        qVar.e(iVar.c).e(iVar.d).b(iVar.e).b(iVar.f).b(iVar.g).b(iVar.h).b(iVar.i).b(iVar.j);
    }

    protected i a(p pVar, int i) throws IOException, ClassNotFoundException {
        return (i) new j().a(pVar.e()).b(pVar.e()).a(pVar.i()).b(pVar.i()).c(pVar.i()).a(pVar.f()).d(pVar.i()).a(pVar.j()).q();
    }
}
