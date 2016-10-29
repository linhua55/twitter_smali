package com.crashlytics.android.core;

import java.util.concurrent.Callable;

/* compiled from: Twttr */
class ak implements Callable<Void> {
    final /* synthetic */ long a;
    final /* synthetic */ String b;
    final /* synthetic */ aa c;

    ak(aa aaVar, long j, String str) {
        this.c = aaVar;
        this.a = j;
        this.b = str;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public Void a() throws Exception {
        if (!this.c.k.get()) {
            this.c.o.a(this.a, this.b);
        }
        return null;
    }
}
