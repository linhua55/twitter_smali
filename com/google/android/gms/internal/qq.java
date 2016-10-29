package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.b;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

@oi
public final class qq {
    private static final ExecutorService a;
    private static final ExecutorService b;

    static {
        a = Executors.newFixedThreadPool(10, a("Default"));
        b = Executors.newFixedThreadPool(5, a("Loader"));
    }

    public static sm<Void> a(int i, Runnable runnable) {
        return i == 1 ? a(b, new qr(runnable)) : a(a, new qs(runnable));
    }

    public static sm<Void> a(Runnable runnable) {
        return a(0, runnable);
    }

    public static <T> sm<T> a(Callable<T> callable) {
        return a(a, (Callable) callable);
    }

    public static <T> sm<T> a(ExecutorService executorService, Callable<T> callable) {
        sg sgVar = new sg();
        try {
            sgVar.b(new qu(sgVar, executorService.submit(new qt(sgVar, callable))));
        } catch (Throwable e) {
            b.d("Thread execution is rejected.", e);
            sgVar.cancel(true);
        }
        return sgVar;
    }

    private static ThreadFactory a(String str) {
        return new qv(str);
    }
}
