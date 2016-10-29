package rx.internal.operators;

import rx.am;
import rx.p;

/* compiled from: Twttr */
public final class s<T> implements p<T> {
    private final Throwable a;

    public /* synthetic */ void call(Object obj) {
        a((am) obj);
    }

    public s(Throwable th) {
        this.a = th;
    }

    public void a(am<? super T> amVar) {
        amVar.a(this.a);
    }
}
