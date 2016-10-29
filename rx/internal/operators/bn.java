package rx.internal.operators;

import cyw;
import rx.o;

/* compiled from: Twttr */
final class bn implements cyw<Throwable, o<? extends T>> {
    final /* synthetic */ cyw a;

    bn(cyw cyw) {
        this.a = cyw;
    }

    public o<? extends T> a(Throwable th) {
        return o.b(this.a.a(th));
    }
}
