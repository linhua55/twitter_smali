package com.crashlytics.android.core;

import java.util.Map;
import java.util.concurrent.Callable;

/* compiled from: Twttr */
class an implements Callable<Void> {
    final /* synthetic */ Map a;
    final /* synthetic */ aa b;

    an(aa aaVar, Map map) {
        this.b = aaVar;
        this.a = map;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public Void a() throws Exception {
        new be(this.d.q()).a(this.b.j(), this.a);
        return null;
    }
}
