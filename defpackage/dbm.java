package defpackage;

import java.util.concurrent.Future;
import rx.an;

/* compiled from: Twttr */
/* renamed from: dbm */
final class dbm implements an {
    final Future<?> a;

    public dbm(Future<?> future) {
        this.a = future;
    }

    public void K_() {
        this.a.cancel(true);
    }

    public boolean b() {
        return this.a.isCancelled();
    }
}
