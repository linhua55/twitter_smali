package rx.internal.operators;

import java.util.concurrent.TimeUnit;
import rx.am;
import rx.an;
import rx.q;
import rx.t;

/* compiled from: Twttr */
public final class ah<T> implements q<T, T> {
    final long a;
    final TimeUnit b;
    final t c;

    public ah(long j, TimeUnit timeUnit, t tVar) {
        this.a = j;
        this.b = timeUnit;
        this.c = tVar;
    }

    public am<? super T> a(am<? super T> amVar) {
        an a = this.c.a();
        amVar.a(a);
        return new ai(this, amVar, a, amVar);
    }
}
