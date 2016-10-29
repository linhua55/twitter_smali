package defpackage;

import java.util.List;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: Twttr */
/* renamed from: bd */
public class bd extends AbstractExecutorService {
    private static final Class<?> a;
    private final String b;
    private final Executor c;
    private volatile int d;
    private final BlockingQueue<Runnable> e;
    private final bf f;
    private final AtomicInteger g;
    private final AtomicInteger h;

    static {
        a = bd.class;
    }

    public bd(String str, int i, Executor executor, BlockingQueue<Runnable> blockingQueue) {
        if (i <= 0) {
            throw new IllegalArgumentException("max concurrency must be > 0");
        }
        this.b = str;
        this.c = executor;
        this.d = i;
        this.e = blockingQueue;
        this.f = new bf();
        this.g = new AtomicInteger(0);
        this.h = new AtomicInteger(0);
    }

    public void execute(Runnable runnable) {
        if (runnable == null) {
            throw new NullPointerException("runnable parameter is null");
        } else if (this.e.offer(runnable)) {
            int size = this.e.size();
            int i = this.h.get();
            if (size > i && this.h.compareAndSet(i, size)) {
                cb.a(a, "%s: max pending work in queue = %d", this.b, Integer.valueOf(size));
            }
            b();
        } else {
            throw new RejectedExecutionException(this.b + " queue is full, size=" + this.e.size());
        }
    }

    private void b() {
        int i = this.g.get();
        while (i < this.d) {
            int i2 = i + 1;
            if (this.g.compareAndSet(i, i2)) {
                cb.a(a, "%s: starting worker %d of %d", this.b, Integer.valueOf(i2), Integer.valueOf(this.d));
                this.c.execute(this.f);
                return;
            }
            cb.a(a, "%s: race in startWorkerIfNeeded; retrying", this.b);
            i = this.g.get();
        }
    }

    public void shutdown() {
        throw new UnsupportedOperationException();
    }

    public List<Runnable> shutdownNow() {
        throw new UnsupportedOperationException();
    }

    public boolean isShutdown() {
        return false;
    }

    public boolean isTerminated() {
        return false;
    }

    public boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
        throw new UnsupportedOperationException();
    }
}
