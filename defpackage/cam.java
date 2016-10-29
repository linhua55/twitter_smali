package defpackage;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
/* renamed from: cam */
public class cam {
    private final Object a;
    private final cao b;
    private ScheduledExecutorService c;

    public cam(cao cao) {
        this.a = new Object();
        this.b = cao;
    }

    public void a() {
        e();
    }

    public void b() {
        f();
    }

    public void c() {
        e();
    }

    public void d() {
        f();
    }

    private void e() {
        if (this.b.g()) {
            int d = this.b.d();
            if (d != 0) {
                synchronized (this.a) {
                    if (this.c == null) {
                        this.c = Executors.newScheduledThreadPool(1);
                        this.c.scheduleAtFixedRate(new can(this), 0, (long) d, TimeUnit.SECONDS);
                    }
                }
            }
        }
    }

    private void f() {
        synchronized (this.a) {
            if (this.c != null) {
                this.c.shutdown();
                this.c = null;
            }
        }
    }
}
