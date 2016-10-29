package com.crashlytics.android.core;

import java.util.Date;

/* compiled from: Twttr */
class al implements Runnable {
    final /* synthetic */ Date a;
    final /* synthetic */ Thread b;
    final /* synthetic */ Throwable c;
    final /* synthetic */ aa d;

    al(aa aaVar, Date date, Thread thread, Throwable th) {
        this.d = aaVar;
        this.a = date;
        this.b = thread;
        this.c = th;
    }

    public void run() {
        if (!this.d.k.get()) {
            this.d.c(this.a, this.b, this.c);
        }
    }
}
