package io.fabric.sdk.android.services.common;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: Twttr */
public final class s {
    public static ExecutorService a(String str) {
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor(c(str));
        a(str, newSingleThreadExecutor);
        return newSingleThreadExecutor;
    }

    public static ScheduledExecutorService b(String str) {
        Object newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor(c(str));
        a(str, newSingleThreadScheduledExecutor);
        return newSingleThreadScheduledExecutor;
    }

    public static final ThreadFactory c(String str) {
        return new t(str, new AtomicLong(1));
    }

    private static final void a(String str, ExecutorService executorService) {
        a(str, executorService, 2, TimeUnit.SECONDS);
    }

    public static final void a(String str, ExecutorService executorService, long j, TimeUnit timeUnit) {
        Runtime.getRuntime().addShutdownHook(new Thread(new v(str, executorService, j, timeUnit), "Crashlytics Shutdown Hook for " + str));
    }
}
