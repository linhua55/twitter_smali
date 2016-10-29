package rx.internal.operators;

import java.util.concurrent.TimeUnit;
import rx.am;
import rx.q;
import rx.t;

/* compiled from: Twttr */
public final class dj<T> implements q<T, T> {
    final long a;
    final t b;

    public dj(long j, TimeUnit timeUnit, t tVar) {
        this.a = timeUnit.toMillis(j);
        this.b = tVar;
    }

    public am<? super T> a(am<? super T> amVar) {
        return new dk(this, amVar, amVar);
    }
}
