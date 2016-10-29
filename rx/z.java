package rx;

import rx.exceptions.OnErrorNotImplementedException;

/* compiled from: Twttr */
class z extends am<T> {
    final /* synthetic */ w a;

    z(w wVar) {
        this.a = wVar;
    }

    public final void bs_() {
    }

    public final void a(Throwable th) {
        throw new OnErrorNotImplementedException(th);
    }

    public final void b_(T t) {
    }
}
