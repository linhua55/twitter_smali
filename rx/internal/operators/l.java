package rx.internal.operators;

import rx.am;
import rx.s;

/* compiled from: Twttr */
final class l<T> extends am<T> {
    final OnSubscribePublishMulticast<T> a;

    public l(OnSubscribePublishMulticast<T> onSubscribePublishMulticast) {
        this.a = onSubscribePublishMulticast;
    }

    public void b_(T t) {
        this.a.b_(t);
    }

    public void a(Throwable th) {
        this.a.a(th);
    }

    public void bs_() {
        this.a.bs_();
    }

    public void a(s sVar) {
        this.a.a(sVar);
    }
}
