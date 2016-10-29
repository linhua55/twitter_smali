package com.google.android.gms.internal;

import java.util.concurrent.Callable;

class ci implements Callable<T> {
    final /* synthetic */ ca a;
    final /* synthetic */ ch b;

    ci(ch chVar, ca caVar) {
        this.b = chVar;
        this.a = caVar;
    }

    public T call() {
        return this.a.a(ch.a(this.b));
    }
}
