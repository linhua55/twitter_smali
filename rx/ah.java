package rx;

import java.util.concurrent.Callable;
import rx.exceptions.e;

/* compiled from: Twttr */
final class ah implements ak<T> {
    final /* synthetic */ Callable a;

    ah(Callable callable) {
        this.a = callable;
    }

    public /* synthetic */ void call(Object obj) {
        a((al) obj);
    }

    public void a(al<? super T> alVar) {
        try {
            alVar.a(this.a.call());
        } catch (Throwable th) {
            e.a(th);
            alVar.a(th);
        }
    }
}
