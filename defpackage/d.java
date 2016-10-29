package defpackage;

import a;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: Twttr */
/* renamed from: d */
final class d {
    private static final d a;
    private final ExecutorService b;
    private final Executor c;

    static {
        a = new d();
    }

    private static boolean c() {
        String property = System.getProperty("java.runtime.name");
        if (property == null) {
            return false;
        }
        return property.toLowerCase(Locale.US).contains("android");
    }

    private d() {
        this.b = !d.c() ? Executors.newCachedThreadPool() : a.a();
        this.c = new f();
    }

    public static ExecutorService a() {
        return a.b;
    }

    static Executor b() {
        return a.c;
    }
}
