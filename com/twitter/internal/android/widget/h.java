package com.twitter.internal.android.widget;

import android.os.SystemClock;
import cfb;
import com.twitter.util.al;

/* compiled from: Twttr */
class h implements Runnable {
    final /* synthetic */ DockLayout a;
    private int b;
    private long c;
    private long d;
    private int e;
    private int f;
    private int g;
    private int h;

    private h(DockLayout dockLayout) {
        this.a = dockLayout;
        this.b = -1;
    }

    public void a() {
        if (this.b == -1) {
            this.b = 0;
        }
    }

    public void run() {
        boolean z = true;
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.d;
        boolean z2 = elapsedRealtime > this.c;
        float f = z2 ? 1.0f : ((float) elapsedRealtime) / ((float) this.c);
        DockLayout.a(this.a, this.e + ((int) (((float) this.f) * f)));
        DockLayout.b(this.a, ((int) (f * ((float) this.h))) + this.g);
        if (z2 || this.b == 2) {
            cfb.b("DockLayout", "finishing: " + al.b());
            if (!DockLayout.a(this.a)) {
                boolean z3;
                DockLayout dockLayout = this.a;
                if (DockLayout.b(this.a) == 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                dockLayout.setTopDocked(z3);
            }
            if (!DockLayout.c(this.a)) {
                DockLayout dockLayout2 = this.a;
                if (DockLayout.d(this.a) != 0) {
                    z = false;
                }
                dockLayout2.setBottomDocked(z);
            }
            this.b = 0;
        } else {
            this.a.post(this);
        }
        DockLayout.e(this.a);
        this.a.invalidate();
    }

    public void b() {
        if (this.b != 0 && this.b != -1) {
            this.b = 2;
        }
    }

    public void a(int i, boolean z, boolean z2) {
        cfb.b("DockLayout", "animate(" + i + ", " + z + ", " + z2);
        if (this.b == 0) {
            cfb.b("DockLayout", "animating... " + al.b());
            this.c = (long) i;
            this.d = SystemClock.elapsedRealtime();
            if (DockLayout.f(this.a) != null) {
                this.e = DockLayout.b(this.a);
                if (z) {
                    this.f = -DockLayout.b(this.a);
                } else {
                    this.f = 10000 - DockLayout.b(this.a);
                }
            }
            if (DockLayout.g(this.a) != null) {
                this.g = DockLayout.d(this.a);
                if (z2) {
                    this.h = -DockLayout.d(this.a);
                } else {
                    this.h = 10000 - DockLayout.d(this.a);
                }
            }
            this.b = 1;
            this.a.post(this);
        }
    }
}
