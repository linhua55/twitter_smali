package rx.internal.operators;

import defpackage.dax;
import rx.am;

/* compiled from: Twttr */
final class d<T, R> extends am<T> {
    final LatestCoordinator<T, R> a;
    final int b;
    final NotificationLite<T> c;
    boolean d;

    public d(LatestCoordinator<T, R> latestCoordinator, int i) {
        this.a = latestCoordinator;
        this.b = i;
        this.c = NotificationLite.a();
        a((long) latestCoordinator.bufferSize);
    }

    public void b_(T t) {
        if (!this.d) {
            this.a.a(this.c.a((Object) t), this.b);
        }
    }

    public void a(Throwable th) {
        if (this.d) {
            dax.a().b().a(th);
            return;
        }
        this.a.a(th);
        this.d = true;
        this.a.a(null, this.b);
    }

    public void bs_() {
        if (!this.d) {
            this.d = true;
            this.a.a(null, this.b);
        }
    }

    public void b(long j) {
        a(j);
    }
}
