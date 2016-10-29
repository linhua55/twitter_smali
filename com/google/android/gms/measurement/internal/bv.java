package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.bm;
import java.lang.Thread.UncaughtExceptionHandler;

final class bv implements UncaughtExceptionHandler {
    final /* synthetic */ bt a;
    private final String b;

    public bv(bt btVar, String str) {
        this.a = btVar;
        bm.a(str);
        this.b = str;
    }

    public synchronized void uncaughtException(Thread thread, Throwable th) {
        this.a.s().b().a(this.b, th);
    }
}
