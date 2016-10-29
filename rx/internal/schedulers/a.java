package rx.internal.schedulers;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import rx.internal.util.RxThreadFactory;
import rx.t;
import rx.u;

/* compiled from: Twttr */
public final class a extends t implements y {
    static final g b;
    static final b e;
    private static final TimeUnit f;
    final ThreadFactory c;
    final AtomicReference<b> d;

    static {
        f = TimeUnit.SECONDS;
        b = new g(RxThreadFactory.a);
        b.K_();
        e = new b(null, 0, null);
        e.d();
    }

    public a(ThreadFactory threadFactory) {
        this.c = threadFactory;
        this.d = new AtomicReference(e);
        c();
    }

    public void c() {
        b bVar = new b(this.c, 60, f);
        if (!this.d.compareAndSet(e, bVar)) {
            bVar.d();
        }
    }

    public void d() {
        b bVar;
        do {
            bVar = (b) this.d.get();
            if (bVar == e) {
                return;
            }
        } while (!this.d.compareAndSet(bVar, e));
        bVar.d();
    }

    public u a() {
        return new e((b) this.d.get());
    }
}
