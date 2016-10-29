package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.bm;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

final class bu<V> extends FutureTask<V> {
    final /* synthetic */ bt a;
    private final String b;

    bu(bt btVar, Runnable runnable, String str) {
        this.a = btVar;
        super(runnable, null);
        bm.a(str);
        this.b = str;
    }

    bu(bt btVar, Callable<V> callable, String str) {
        this.a = btVar;
        super(callable);
        bm.a(str);
        this.b = str;
    }

    protected void setException(Throwable th) {
        this.a.s().b().a(this.b, th);
        super.setException(th);
    }
}
