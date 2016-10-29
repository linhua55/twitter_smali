package rx.internal.operators;

import defpackage.cyr;
import defpackage.daq;
import rx.am;
import rx.q;

/* compiled from: Twttr */
public class at<T> implements q<T, T> {
    private final cyr a;

    public at(cyr cyr) {
        this.a = cyr;
    }

    public am<? super T> a(am<? super T> amVar) {
        this.a.a();
        return daq.a((am) amVar);
    }
}
