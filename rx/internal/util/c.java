package rx.internal.util;

import cys;
import rx.exceptions.OnErrorNotImplementedException;

/* compiled from: Twttr */
final class c implements cys<Throwable> {
    c() {
    }

    public /* synthetic */ void call(Object obj) {
        a((Throwable) obj);
    }

    public void a(Throwable th) {
        throw new OnErrorNotImplementedException(th);
    }
}
