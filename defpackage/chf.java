package defpackage;

import cgu;
import chm;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: chf */
public class chf<S, T> extends cgu<T> {
    private final cgu<S> a;
    private final chm<S, T> b;

    public chf(cgu<S> cgu_S, chm<S, T> chm_S__T) {
        this.a = cgu_S;
        this.b = chm_S__T;
    }

    public int aU_() {
        return this.a.aU_();
    }

    public T a(int i) {
        Object a = this.a.a(i);
        return a == null ? null : this.b.c(a);
    }

    public void close() throws IOException {
        this.a.close();
    }
}
