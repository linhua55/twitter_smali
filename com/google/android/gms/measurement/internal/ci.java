package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;

class ci implements Callable<List<af>> {
    final /* synthetic */ AppMetadata a;
    final /* synthetic */ cc b;

    ci(cc ccVar, AppMetadata appMetadata) {
        this.b = ccVar;
        this.a = appMetadata;
    }

    public List<af> a() throws Exception {
        return cc.a(this.b).n().a(this.a.c);
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }
}
