package rx.internal.util;

import defpackage.cyr;
import rx.al;

/* compiled from: Twttr */
final class aj<T> implements cyr {
    private final al<? super T> a;
    private final T b;

    aj(al<? super T> alVar, T t) {
        this.a = alVar;
        this.b = t;
    }

    public void a() {
        try {
            this.a.a(this.b);
        } catch (Throwable th) {
            this.a.a(th);
        }
    }
}
