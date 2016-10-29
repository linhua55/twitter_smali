package rx.internal.operators;

import defpackage.cyv;
import defpackage.cyx;
import rx.am;
import rx.an;
import rx.q;
import rx.s;

/* compiled from: Twttr */
public final class cc<R, T> implements q<R, T> {
    private static final Object c;
    final cyx<R, ? super T, R> a;
    private final cyv<R> b;

    static {
        c = new Object();
    }

    public cc(R r, cyx<R, ? super T, R> cyx_R___super_T__R) {
        this(new cd(r), (cyx) cyx_R___super_T__R);
    }

    public cc(cyv<R> cyv_R, cyx<R, ? super T, R> cyx_R___super_T__R) {
        this.b = cyv_R;
        this.a = cyx_R___super_T__R;
    }

    public cc(cyx<R, ? super T, R> cyx_R___super_T__R) {
        this(c, (cyx) cyx_R___super_T__R);
    }

    public am<? super T> a(am<? super R> amVar) {
        Object call = this.b.call();
        if (call == c) {
            return new ce(this, amVar, amVar);
        }
        s cgVar = new cg(call, amVar);
        an cfVar = new cf(this, call, cgVar);
        amVar.a(cfVar);
        amVar.a(cgVar);
        return cfVar;
    }
}
