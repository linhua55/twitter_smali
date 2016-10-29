package rx.internal.operators;

import defpackage.czx;
import defpackage.daf;
import java.util.Queue;
import rx.am;
import rx.internal.util.atomic.c;

/* compiled from: Twttr */
final class av<T> extends am<T> {
    final aw<?, T> a;
    final Queue<Object> b;
    final NotificationLite<T> c;
    volatile boolean d;
    Throwable e;

    public av(aw<?, T> awVar, int i) {
        Queue czx;
        this.a = awVar;
        if (daf.a()) {
            czx = new czx(i);
        } else {
            czx = new c(i);
        }
        this.b = czx;
        this.c = NotificationLite.a();
        a((long) i);
    }

    public void b_(T t) {
        this.b.offer(this.c.a((Object) t));
        this.a.f();
    }

    public void a(Throwable th) {
        this.e = th;
        this.d = true;
        this.a.f();
    }

    public void bs_() {
        this.d = true;
        this.a.f();
    }

    void b(long j) {
        a(j);
    }
}
