package defpackage;

import android.os.Build.VERSION;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import rx.t;

/* compiled from: Twttr */
/* renamed from: air */
public class air {
    public static t a() {
        if (VERSION.SDK_INT >= 16) {
            return air.a(Runtime.getRuntime().availableProcessors());
        }
        return air.b();
    }

    public static t b() {
        return dbd.a(Executors.newSingleThreadExecutor(air.c()));
    }

    public static t a(int i) {
        return dbd.a(Executors.newFixedThreadPool(i, air.c()));
    }

    private static ThreadFactory c() {
        return new ais();
    }
}
