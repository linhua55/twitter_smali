package rx.internal.schedulers;

import java.util.concurrent.Future;
import rx.an;

/* compiled from: Twttr */
final class x implements an {
    final /* synthetic */ ScheduledAction a;
    private final Future<?> b;

    x(ScheduledAction scheduledAction, Future<?> future) {
        this.a = scheduledAction;
        this.b = future;
    }

    public void K_() {
        if (this.a.get() != Thread.currentThread()) {
            this.b.cancel(true);
        } else {
            this.b.cancel(false);
        }
    }

    public boolean b() {
        return this.b.isCancelled();
    }
}
