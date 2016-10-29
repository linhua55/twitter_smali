package rx.internal.util;

import rx.ak;
import rx.al;

/* compiled from: Twttr */
class ae implements ak<T> {
    final /* synthetic */ Object a;

    ae(Object obj) {
        this.a = obj;
    }

    public /* synthetic */ void call(Object obj) {
        a((al) obj);
    }

    public void a(al<? super T> alVar) {
        alVar.a(this.a);
    }
}
