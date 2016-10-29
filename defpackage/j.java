package defpackage;

import java.util.concurrent.Callable;

/* compiled from: Twttr */
/* renamed from: j */
final class j implements Runnable {
    final /* synthetic */ m a;
    final /* synthetic */ Callable b;

    j(m mVar, Callable callable) {
        this.a = mVar;
        this.b = callable;
    }

    public void run() {
        try {
            this.a.b(this.b.call());
        } catch (Exception e) {
            this.a.b(e);
        }
    }
}
