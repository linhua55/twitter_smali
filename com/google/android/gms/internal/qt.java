package com.google.android.gms.internal;

import android.os.Process;
import com.google.android.gms.ads.internal.ar;
import java.util.concurrent.Callable;

final class qt implements Runnable {
    final /* synthetic */ sg a;
    final /* synthetic */ Callable b;

    qt(sg sgVar, Callable callable) {
        this.a = sgVar;
        this.b = callable;
    }

    public void run() {
        try {
            Process.setThreadPriority(10);
            this.a.b(this.b.call());
        } catch (Throwable e) {
            ar.h().a(e, true);
            this.a.cancel(true);
        }
    }
}
