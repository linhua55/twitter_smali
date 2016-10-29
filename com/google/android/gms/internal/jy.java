package com.google.android.gms.internal;

import java.util.concurrent.Callable;

class jy implements Callable<ju> {
    final /* synthetic */ jr a;
    final /* synthetic */ jx b;

    jy(jx jxVar, jr jrVar) {
        this.b = jxVar;
        this.a = jrVar;
    }

    public ju a() throws Exception {
        synchronized (jx.a(this.b)) {
            if (jx.b(this.b)) {
                return null;
            }
            return this.a.a(jx.c(this.b), jx.d(this.b));
        }
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }
}
