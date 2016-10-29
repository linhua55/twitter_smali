package rx.internal.operators;

import rx.am;
import rx.q;
import rx.r;

/* compiled from: Twttr */
public class ar<T> implements q<T, T> {
    final r<? super T> a;

    public ar(r<? super T> rVar) {
        this.a = rVar;
    }

    public am<? super T> a(am<? super T> amVar) {
        return new as(this, amVar, amVar);
    }
}
