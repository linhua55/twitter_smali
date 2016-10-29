package rx;

import defpackage.dbe;
import java.util.concurrent.Callable;

/* compiled from: Twttr */
final class l implements m {
    final /* synthetic */ Callable a;

    l(Callable callable) {
        this.a = callable;
    }

    public /* synthetic */ void call(Object obj) {
        a((n) obj);
    }

    public void a(n nVar) {
        an dbe = new dbe();
        nVar.a(dbe);
        try {
            this.a.call();
            if (!dbe.b()) {
                nVar.a();
            }
        } catch (Throwable th) {
            if (!dbe.b()) {
                nVar.a(th);
            }
        }
    }
}
