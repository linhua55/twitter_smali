package rx.internal.util;

import defpackage.dax;

/* compiled from: Twttr */
public final class r {
    public static void a(Throwable th) {
        try {
            dax.a().b().a(th);
        } catch (Throwable th2) {
            b(th2);
        }
    }

    private static void b(Throwable th) {
        System.err.println("RxJavaErrorHandler threw an Exception. It shouldn't. => " + th.getMessage());
        th.printStackTrace();
    }
}
