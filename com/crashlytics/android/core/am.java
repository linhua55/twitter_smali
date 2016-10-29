package com.crashlytics.android.core;

import java.util.concurrent.Callable;

/* compiled from: Twttr */
class am implements Callable<Void> {
    final /* synthetic */ String a;
    final /* synthetic */ String b;
    final /* synthetic */ String c;
    final /* synthetic */ aa d;

    am(aa aaVar, String str, String str2, String str3) {
        this.d = aaVar;
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public Void a() throws Exception {
        new be(this.d.q()).a(this.b.j(), new ce(this.a, this.b, this.c));
        return null;
    }
}
