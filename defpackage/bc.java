package defpackage;

import java.util.Collections;
import java.util.List;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
/* renamed from: bc */
public class bc extends AbstractExecutorService {
    private static final bc a;

    static {
        a = new bc();
    }

    public static bc a() {
        return a;
    }

    private bc() {
    }

    public void execute(Runnable runnable) {
        runnable.run();
    }

    public boolean isShutdown() {
        return false;
    }

    public void shutdown() {
    }

    public List<Runnable> shutdownNow() {
        shutdown();
        return Collections.emptyList();
    }

    public boolean isTerminated() {
        return false;
    }

    public boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
        return true;
    }
}
