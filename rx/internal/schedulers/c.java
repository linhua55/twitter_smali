package rx.internal.schedulers;

import java.util.concurrent.ThreadFactory;

/* compiled from: Twttr */
class c implements ThreadFactory {
    final /* synthetic */ ThreadFactory a;
    final /* synthetic */ b b;

    c(b bVar, ThreadFactory threadFactory) {
        this.b = bVar;
        this.a = threadFactory;
    }

    public Thread newThread(Runnable runnable) {
        Thread newThread = this.a.newThread(runnable);
        newThread.setName(newThread.getName() + " (Evictor)");
        return newThread;
    }
}
