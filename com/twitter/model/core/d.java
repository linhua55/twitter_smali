package com.twitter.model.core;

import com.twitter.util.object.f;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
public class d extends g<b, c> {
    protected /* synthetic */ f b() {
        return a();
    }

    public d() {
        super(2);
    }

    protected void a(q qVar, b bVar) throws IOException {
        super.a(qVar, (e) bVar);
        qVar.b(bVar.c);
    }

    protected c a() {
        return new c();
    }

    protected void a(p pVar, c cVar, int i) throws IOException, ClassNotFoundException {
        super.a(pVar, (f) cVar, i);
        cVar.a(pVar.p());
        if (i < 1) {
            pVar.e();
            pVar.e();
        }
    }
}
