package rx;

import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public abstract class t {
    static final long a;

    public abstract u a();

    static {
        a = TimeUnit.MINUTES.toNanos(Long.getLong("rx.scheduler.drift-tolerance", 15).longValue());
    }

    public long b() {
        return System.currentTimeMillis();
    }
}
