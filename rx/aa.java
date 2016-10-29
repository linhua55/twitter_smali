package rx;

import cys;
import rx.exceptions.OnErrorNotImplementedException;

/* compiled from: Twttr */
class aa extends am<T> {
    final /* synthetic */ cys a;
    final /* synthetic */ w b;

    aa(w wVar, cys cys) {
        this.b = wVar;
        this.a = cys;
    }

    public final void bs_() {
    }

    public final void a(Throwable th) {
        throw new OnErrorNotImplementedException(th);
    }

    public final void b_(T t) {
        this.a.call(t);
    }
}
