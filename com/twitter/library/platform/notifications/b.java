package com.twitter.library.platform.notifications;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
public final class b extends k<a> {
    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, a aVar) throws IOException {
        qVar.b(aVar.b).b(aVar.c).b(aVar.d).e(aVar.e).e(aVar.f).b(aVar.g).a(aVar.h, ad.a);
    }

    protected a a(p pVar, int i) throws IOException, ClassNotFoundException {
        a aVar = new a(pVar.i(), pVar.f(), pVar.d());
        aVar.e = pVar.e();
        aVar.f = pVar.e();
        aVar.g = pVar.i();
        aVar.h = (ad) pVar.a(ad.a);
        return aVar;
    }
}
