package defpackage;

import atf;
import java.io.IOException;
import rx.o;
import rx.subjects.e;
import rx.subjects.k;

/* compiled from: Twttr */
/* renamed from: asy */
public class asy<A, T> implements atf<A, T> {
    private final atf<A, T> a;
    private final k<T, T> b;
    private boolean c;

    public asy(atf<A, T> atf_A__T) {
        this.a = atf_A__T;
        this.b = e.q();
    }

    public o<T> a_(A a) {
        if (this.c) {
            return o.b(new IllegalStateException("Querying an already closed data source"));
        }
        return this.a.a_(a).h(this.b);
    }

    public void close() throws IOException {
        this.b.bs_();
        this.a.close();
        this.c = true;
    }
}
