package defpackage;

import atf;
import cym;
import dai;
import dbd;
import dbg;
import java.io.Closeable;
import java.io.IOException;
import rx.o;
import rx.t;

/* compiled from: Twttr */
/* renamed from: asu */
public abstract class asu<A, C extends Closeable, N> implements atf<A, C> {
    private final t a;
    private final t b;
    private final atu<C> c;
    private final dai<N> d;
    private final dbg e;

    protected abstract C b(A a);

    protected asu(o<N> oVar) {
        this(cym.a(), dbd.d(), oVar);
    }

    protected asu(t tVar, t tVar2, o<N> oVar) {
        this.a = tVar;
        this.b = tVar2;
        this.c = new atu();
        this.d = oVar.k();
        this.e = new dbg();
        this.e.a(this.d.a());
    }

    public o<C> a_(A a) {
        dai c = this.d.d(null).a(this.b).g(new asv(this, a)).a(this.a).a(new atr(this.c)).c(1);
        this.e.a(c.a());
        return c;
    }

    public void close() throws IOException {
        this.e.K_();
        this.c.b();
    }
}
