package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.a;
import java.util.ArrayList;
import java.util.List;

@oi
class sn {
    private final Object a;
    private final List<Runnable> b;
    private final List<Runnable> c;
    private boolean d;

    public sn() {
        this.a = new Object();
        this.b = new ArrayList();
        this.c = new ArrayList();
        this.d = false;
    }

    private void c(Runnable runnable) {
        qq.a(runnable);
    }

    private void d(Runnable runnable) {
        a.a.post(runnable);
    }

    public void a() {
        synchronized (this.a) {
            if (this.d) {
                return;
            }
            for (Runnable c : this.b) {
                c(c);
            }
            for (Runnable c2 : this.c) {
                d(c2);
            }
            this.b.clear();
            this.c.clear();
            this.d = true;
        }
    }

    public void a(Runnable runnable) {
        synchronized (this.a) {
            if (this.d) {
                c(runnable);
            } else {
                this.b.add(runnable);
            }
        }
    }

    public void b(Runnable runnable) {
        synchronized (this.a) {
            if (this.d) {
                d(runnable);
            } else {
                this.c.add(runnable);
            }
        }
    }
}
