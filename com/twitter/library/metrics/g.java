package com.twitter.library.metrics;

import android.os.Debug;
import ard;
import arx;
import asl;
import bxq;
import com.twitter.config.AppConfig;
import com.twitter.config.d;
import defpackage.ark;
import defpackage.arp;
import defpackage.aru;
import defpackage.bbr;

/* compiled from: Twttr */
public class g {
    private static g a;
    private boolean b;
    private ard c;
    private arx d;
    private ard e;
    private arx f;
    private ard g;
    private arx h;
    private ard i;
    private arx j;
    private ard k;
    private arx l;

    public static g a() {
        if (a != null) {
            return a;
        }
        throw new IllegalStateException("MediaMetrics.initialize() must be called first");
    }

    public static void a(aru aru) {
        if (a == null) {
            a = new g(aru);
        }
    }

    private g(aru aru) {
        bxq a = bxq.a(aru, "app::::oome_count", ark.n, 3);
        a.i();
        bbr.a(new h(this, a));
        b(aru);
    }

    private void b(aru aru) {
        asl.a(ark.m, aru).i();
        if (d.a("memory_metric_enabled") || AppConfig.m().a()) {
            this.b = true;
            arp arp = ark.n;
            this.c = ard.a("app::dalvik:heap:avg", arp, aru, false, 2);
            this.c.i();
            this.d = arx.a("app::dalvik:heap:peak", arp, aru, false, 2);
            this.d.i();
            this.e = ard.a("app::dalvik:heap_allocated:avg", arp, aru, false, 2);
            this.e.i();
            this.f = arx.a("app::dalvik:heap_allocated:peak", arp, aru, false, 2);
            this.f.i();
            this.g = ard.a("app::dalvik:heap_ratio:avg", arp, aru, false, 2);
            this.g.i();
            this.h = arx.a("app::dalvik:heap_ratio:peak", arp, aru, false, 2);
            this.h.i();
            this.i = ard.a("app::native:heap:avg", arp, aru, false, 2);
            this.i.i();
            this.j = arx.a("app::native:heap:peak", arp, aru, false, 2);
            this.j.i();
            this.k = ard.a("app::native:heap_allocated:avg", arp, aru, false, 2);
            this.k.i();
            this.l = arx.a("app::native:heap_allocated:peak", arp, aru, false, 2);
            this.l.i();
        }
    }

    public void b() {
        asl.a(ark.l, aru.b()).f();
        if (d.a("memory_metric_enabled") || AppConfig.m().a()) {
            if (!this.b) {
                b(aru.b());
            }
            Runtime runtime = Runtime.getRuntime();
            long totalMemory = runtime.totalMemory();
            this.c.a(totalMemory);
            this.d.a(totalMemory);
            long totalMemory2 = runtime.totalMemory() - runtime.freeMemory();
            this.e.a(totalMemory2);
            this.f.a(totalMemory2);
            long maxMemory = (totalMemory * 100) / runtime.maxMemory();
            this.g.a(maxMemory);
            this.h.a(maxMemory);
            maxMemory = Debug.getNativeHeapSize();
            this.i.a(maxMemory);
            this.j.a(maxMemory);
            maxMemory = Debug.getNativeHeapAllocatedSize();
            this.k.a(maxMemory);
            this.l.a(maxMemory);
        }
    }
}
