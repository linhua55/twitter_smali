package rx.internal.operators;

import rx.am;
import rx.internal.schedulers.aa;
import rx.internal.util.s;
import rx.q;
import rx.t;

/* compiled from: Twttr */
public final class bj<T> implements q<T, T> {
    private final t a;
    private final boolean b;
    private final int c;

    public bj(t tVar, boolean z) {
        this(tVar, z, s.c);
    }

    public bj(t tVar, boolean z, int i) {
        this.a = tVar;
        this.b = z;
        if (i <= 0) {
            i = s.c;
        }
        this.c = i;
    }

    public am<? super T> a(am<? super T> amVar) {
        if ((this.a instanceof rx.internal.schedulers.s) || (this.a instanceof aa)) {
            return amVar;
        }
        am bkVar = new bk(this.a, amVar, this.b, this.c);
        bkVar.d();
        return bkVar;
    }
}
