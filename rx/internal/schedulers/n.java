package rx.internal.schedulers;

import java.util.concurrent.Executor;
import rx.t;
import rx.u;

/* compiled from: Twttr */
public final class n extends t {
    final Executor b;

    public n(Executor executor) {
        this.b = executor;
    }

    public u a() {
        return new o(this.b);
    }
}
