package com.google.android.gms.ads.internal;

import com.google.android.gms.ads.internal.client.AdRequestParcel;
import java.lang.ref.WeakReference;

class u implements Runnable {
    final /* synthetic */ AdRequestParcel a;
    final /* synthetic */ t b;

    u(t tVar, AdRequestParcel adRequestParcel) {
        this.b = tVar;
        this.a = adRequestParcel;
    }

    public void run() {
        synchronized (t.a(this.b)) {
            aj c = this.b.c();
            t.a(this.b, new WeakReference(c));
            c.a(t.b(this.b));
            c.a(t.c(this.b));
            c.a(t.d(this.b));
            c.a(t.e(this.b));
            c.b(t.f(this.b));
            c.a(t.g(this.b));
            c.a(t.h(this.b));
            c.a(t.i(this.b));
            c.a(this.a);
        }
    }
}
