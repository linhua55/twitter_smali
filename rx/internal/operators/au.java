package rx.internal.operators;

import defpackage.cyr;
import defpackage.daq;
import defpackage.dbl;
import rx.am;
import rx.q;

/* compiled from: Twttr */
public class au<T> implements q<T, T> {
    private final cyr a;

    public au(cyr cyr) {
        this.a = cyr;
    }

    public am<? super T> a(am<? super T> amVar) {
        amVar.a(dbl.a(this.a));
        return daq.a((am) amVar);
    }
}
