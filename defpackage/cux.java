package defpackage;

import java.util.concurrent.Callable;

/* compiled from: Twttr */
/* renamed from: cux */
class cux implements Callable<Void> {
    final /* synthetic */ cuw a;

    cux(cuw cuw) {
        this.a = cuw;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public Void a() throws Exception {
        synchronized (this.a) {
            if (this.a.k == null) {
            } else {
                this.a.i();
                if (this.a.g()) {
                    this.a.f();
                }
            }
        }
        return null;
    }
}
