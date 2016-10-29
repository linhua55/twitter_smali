package rx.internal.util;

import defpackage.czj;
import defpackage.daf;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import rx.internal.schedulers.r;
import rx.internal.schedulers.y;

/* compiled from: Twttr */
public abstract class l<T> implements y {
    Queue<T> a;
    final int b;
    final int c;
    private final long d;
    private final AtomicReference<Future<?>> e;

    protected abstract T c();

    public l() {
        this(0, 0, 67);
    }

    private l(int i, int i2, long j) {
        this.b = i;
        this.c = i2;
        this.d = j;
        this.e = new AtomicReference();
        a(i);
        b();
    }

    public T a() {
        T poll = this.a.poll();
        if (poll == null) {
            return c();
        }
        return poll;
    }

    public void a(T t) {
        if (t != null) {
            this.a.offer(t);
        }
    }

    public void d() {
        Future future = (Future) this.e.getAndSet(null);
        if (future != null) {
            future.cancel(false);
        }
    }

    public void b() {
        while (this.e.get() == null) {
            try {
                Future scheduleAtFixedRate = r.b().scheduleAtFixedRate(new m(this), this.d, this.d, TimeUnit.SECONDS);
                if (!this.e.compareAndSet(null, scheduleAtFixedRate)) {
                    scheduleAtFixedRate.cancel(false);
                } else {
                    return;
                }
            } catch (Throwable e) {
                r.a(e);
                return;
            }
        }
    }

    private void a(int i) {
        if (daf.a()) {
            this.a = new czj(Math.max(this.c, 1024));
        } else {
            this.a = new ConcurrentLinkedQueue();
        }
        for (int i2 = 0; i2 < i; i2++) {
            this.a.add(c());
        }
    }
}
