package rx.internal.schedulers;

import java.util.concurrent.ThreadFactory;

/* compiled from: Twttr */
final class g extends v {
    private long c;

    g(ThreadFactory threadFactory) {
        super(threadFactory);
        this.c = 0;
    }

    public long d() {
        return this.c;
    }

    public void a(long j) {
        this.c = j;
    }
}
