package rx.internal.operators;

import rx.am;
import rx.an;
import rx.q;

/* compiled from: Twttr */
public final class cw<T> implements q<T, T> {
    final int a;

    public cw(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("limit >= 0 required but it was " + i);
        }
        this.a = i;
    }

    public am<? super T> a(am<? super T> amVar) {
        an cxVar = new cx(this, amVar);
        if (this.a == 0) {
            amVar.bs_();
            cxVar.K_();
        }
        amVar.a(cxVar);
        return cxVar;
    }
}
