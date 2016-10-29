package com.crashlytics.android.core;

import java.util.concurrent.Callable;

/* compiled from: Twttr */
class ac implements Callable<Void> {
    final /* synthetic */ aa a;

    ac(aa aaVar) {
        this.a = aaVar;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public Void a() throws Exception {
        this.a.l();
        return null;
    }
}
