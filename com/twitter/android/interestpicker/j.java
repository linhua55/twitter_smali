package com.twitter.android.interestpicker;

import com.twitter.util.object.e;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;

/* compiled from: Twttr */
public abstract class j<T extends h, B extends i<T, B>> extends d<T, B> {
    protected j() {
    }

    protected void a(q qVar, T t) throws IOException {
        qVar.b(t.a).b(t.b).b(t.c);
        s.a(qVar, t.d, h.e);
    }

    protected void a(p pVar, B b, int i) throws IOException, ClassNotFoundException {
        String str = (String) e.a(pVar.i());
        long f = pVar.f();
        long f2 = pVar.f();
        b.a(str).a(f).b(f2).a(s.a(pVar, h.e));
    }
}
