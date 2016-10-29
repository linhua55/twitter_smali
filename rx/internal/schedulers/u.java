package rx.internal.schedulers;

import java.util.concurrent.ThreadFactory;
import rx.t;

/* compiled from: Twttr */
public final class u extends t {
    private final ThreadFactory b;

    public u(ThreadFactory threadFactory) {
        this.b = threadFactory;
    }

    public rx.u a() {
        return new v(this.b);
    }
}
