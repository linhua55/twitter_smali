package com.twitter.library.metrics;

import arj;
import com.twitter.app.common.util.f;
import com.twitter.app.common.util.h;
import java.util.Map;
import java.util.WeakHashMap;

/* compiled from: Twttr */
public class ForegroundMetricTracker {
    private static final Map<arj, e> a;
    private static boolean b;
    private static final h c;

    /* compiled from: Twttr */
    public enum BackgroundBehavior {
        DESTROY_ON_ENTER_BACKGROUND,
        STOP_ON_ENTER_BACKGROUND,
        PAUSE_ON_ENTER_BACKGROND
    }

    static {
        a = new WeakHashMap();
        b = false;
        c = new d();
    }

    public static void a(arj arj, BackgroundBehavior backgroundBehavior) {
        synchronized (a) {
            if (!b) {
                f.a().a(c);
                b = true;
            }
            a.put(arj, new e(backgroundBehavior));
        }
    }

    public static void a(arj arj) {
        synchronized (a) {
            a.remove(arj);
            if (a.isEmpty()) {
                f.a().b(c);
                b = false;
            }
        }
    }
}
