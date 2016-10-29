package tv.periscope.chatman;

import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

/* compiled from: Twttr */
class i extends FutureTask<Boolean> {
    i(Callable<Boolean> callable) {
        super(callable);
    }

    void a(Throwable th) {
        super.setException(th);
    }
}
