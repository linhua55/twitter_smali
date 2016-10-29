package com.crashlytics.android.core;

import java.util.Date;
import java.util.concurrent.Callable;

/* compiled from: Twttr */
class aj implements Callable<Void> {
    final /* synthetic */ Date a;
    final /* synthetic */ Thread b;
    final /* synthetic */ Throwable c;
    final /* synthetic */ aa d;

    aj(aa aaVar, Date date, Thread thread, Throwable th) {
        this.d = aaVar;
        this.a = date;
        this.b = thread;
        this.c = th;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public Void a() throws Exception {
        this.d.a(this.a, this.b, this.c);
        return null;
    }
}
