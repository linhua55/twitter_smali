package com.twitter.app.common.util;

import com.twitter.util.serialization.ap;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class k extends ap<T> {
    final /* synthetic */ Object a;
    final /* synthetic */ BaseStateSaver b;

    k(BaseStateSaver baseStateSaver, Object obj) {
        this.b = baseStateSaver;
        this.a = obj;
    }

    protected void a(q qVar, T t) throws IOException {
        this.b.a(qVar, (Object) t);
    }

    protected T a_(p pVar) throws IOException, ClassNotFoundException {
        return this.b.a(pVar, this.a);
    }
}
