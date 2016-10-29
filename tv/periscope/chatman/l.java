package tv.periscope.chatman;

import defpackage.ddj;
import java.util.concurrent.ScheduledThreadPoolExecutor;

/* compiled from: Twttr */
class l extends ScheduledThreadPoolExecutor {
    public l(int i) {
        super(i);
    }

    protected void afterExecute(Runnable runnable, Throwable th) {
        super.afterExecute(runnable, th);
        if (th != null) {
            ddj.d("CM", "uncaught exception", th);
        }
    }
}
