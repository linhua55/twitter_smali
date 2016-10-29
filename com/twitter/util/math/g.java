package com.twitter.util.math;

import com.twitter.util.serialization.ap;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class g extends ap<Size> {
    private g() {
    }

    protected /* synthetic */ Object a_(p pVar) throws IOException, ClassNotFoundException {
        return b(pVar);
    }

    protected void a(q qVar, Size size) throws IOException {
        qVar.e(size.a());
        qVar.e(size.b());
    }

    protected Size b(p pVar) throws IOException, ClassNotFoundException {
        return Size.a(pVar.e(), pVar.e());
    }
}
