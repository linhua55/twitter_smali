package com.google.android.gms.measurement.internal;

import android.support.annotation.WorkerThread;
import com.google.android.gms.common.internal.bm;

@WorkerThread
class bi implements Runnable {
    private final bh a;
    private final int b;
    private final Throwable c;
    private final byte[] d;
    private final String e;

    private bi(String str, bh bhVar, int i, Throwable th, byte[] bArr) {
        bm.a(bhVar);
        this.a = bhVar;
        this.b = i;
        this.c = th;
        this.d = bArr;
        this.e = str;
    }

    public void run() {
        this.a.a(this.e, this.b, this.c, this.d);
    }
}
