package rx.internal.util;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: Twttr */
public final class RxThreadFactory extends AtomicLong implements ThreadFactory {
    public static final ThreadFactory a;
    private static final long serialVersionUID = -8841098858898482335L;
    final String prefix;

    static {
        a = new v();
    }

    public RxThreadFactory(String str) {
        this.prefix = str;
    }

    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable, this.prefix + incrementAndGet());
        thread.setDaemon(true);
        return thread;
    }
}
