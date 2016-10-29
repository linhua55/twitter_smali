package defpackage;

import android.annotation.SuppressLint;
import android.os.Build.VERSION;
import c;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
/* renamed from: a */
final class a {
    static final int a;
    static final int b;
    private static final a c;
    private static final int e;
    private final Executor d;

    static {
        c = new a();
        e = Runtime.getRuntime().availableProcessors();
        a = e + 1;
        b = (e * 2) + 1;
    }

    private a() {
        this.d = new c(null);
    }

    public static ExecutorService a() {
        ExecutorService threadPoolExecutor = new ThreadPoolExecutor(a, b, 1, TimeUnit.SECONDS, new LinkedBlockingQueue());
        a.a(threadPoolExecutor, true);
        return threadPoolExecutor;
    }

    @SuppressLint({"NewApi"})
    public static void a(ThreadPoolExecutor threadPoolExecutor, boolean z) {
        if (VERSION.SDK_INT >= 9) {
            threadPoolExecutor.allowCoreThreadTimeOut(z);
        }
    }

    public static Executor b() {
        return c.d;
    }
}
