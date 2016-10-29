package com.crashlytics.android.core;

import android.os.Looper;
import io.fabric.sdk.android.f;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
class u {
    private final ExecutorService a;

    public u(ExecutorService executorService) {
        this.a = executorService;
    }

    <T> T a(Callable<T> callable) {
        try {
            if (Looper.getMainLooper() == Looper.myLooper()) {
                return this.a.submit(callable).get(4, TimeUnit.SECONDS);
            }
            return this.a.submit(callable).get();
        } catch (RejectedExecutionException e) {
            f.h().a("CrashlyticsCore", "Executor is shut down because we're handling a fatal crash.");
            return null;
        } catch (Throwable e2) {
            f.h().e("CrashlyticsCore", "Failed to execute task.", e2);
            return null;
        }
    }

    Future<?> a(Runnable runnable) {
        try {
            return this.a.submit(new v(this, runnable));
        } catch (RejectedExecutionException e) {
            f.h().a("CrashlyticsCore", "Executor is shut down because we're handling a fatal crash.");
            return null;
        }
    }

    <T> Future<T> b(Callable<T> callable) {
        try {
            return this.a.submit(new w(this, callable));
        } catch (RejectedExecutionException e) {
            f.h().a("CrashlyticsCore", "Executor is shut down because we're handling a fatal crash.");
            return null;
        }
    }
}
